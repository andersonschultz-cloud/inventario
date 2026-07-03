#!/usr/bin/env python3
"""Converte a planilha de componentes em JSON demo e SQL idempotente.

Não conecta ao Supabase e não usa service_role. O SQL gerado deve ser executado
no SQL Editor depois da migration 002.

Uso:
  python3 scripts/import_components.py Componentes.xlsx \
    --hosts-json data/hosts.json \
    --sql-out database/imports/002_components_from_planilha.sql \
    --json-out data/components.json \
    --report-out docs/PLANILHA_COMPONENTES_ANALISE.md
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import unicodedata
import zipfile
from collections import Counter, defaultdict
from pathlib import Path
from xml.etree import ElementTree as ET

NS = {"a": "http://schemas.openxmlformats.org/spreadsheetml/2006/main"}
REL_NS = {"r": "http://schemas.openxmlformats.org/package/2006/relationships"}
OFFICE_REL = "http://schemas.openxmlformats.org/officeDocument/2006/relationships"


def normalize_domain(value: object) -> str:
    text = unicodedata.normalize("NFD", str(value or "").strip().lower())
    text = "".join(c for c in text if unicodedata.category(c) != "Mn")
    return re.sub(r"[\s_.-]+", "", text)


def normalize_component(value: object) -> str:
    text = unicodedata.normalize("NFD", str(value or "").strip().lower())
    text = "".join(c for c in text if unicodedata.category(c) != "Mn")
    return re.sub(r"\s+", " ", text)


def column_index(ref: str) -> int:
    letters = re.match(r"[A-Z]+", ref).group(0)
    value = 0
    for ch in letters:
        value = value * 26 + ord(ch) - 64
    return value - 1


def shared_strings(zf: zipfile.ZipFile) -> list[str]:
    try:
        root = ET.fromstring(zf.read("xl/sharedStrings.xml"))
    except KeyError:
        return []
    values = []
    for si in root.findall("a:si", NS):
        values.append("".join(t.text or "" for t in si.iterfind(".//a:t", NS)))
    return values


def workbook_sheets(zf: zipfile.ZipFile) -> list[tuple[str, str]]:
    workbook = ET.fromstring(zf.read("xl/workbook.xml"))
    rels = ET.fromstring(zf.read("xl/_rels/workbook.xml.rels"))
    targets = {rel.attrib["Id"]: rel.attrib["Target"] for rel in rels.findall("r:Relationship", REL_NS)}
    result = []
    for sheet in workbook.findall("a:sheets/a:sheet", NS):
        rel_id = sheet.attrib[f"{{{OFFICE_REL}}}id"]
        target = targets[rel_id].lstrip("/")
        if not target.startswith("xl/"):
            target = "xl/" + target
        result.append((sheet.attrib["name"], target))
    return result


def read_sheet(zf: zipfile.ZipFile, target: str, strings: list[str]) -> list[list[object]]:
    root = ET.fromstring(zf.read(target))
    rows = []
    for row_node in root.findall("a:sheetData/a:row", NS):
        row: list[object] = []
        for cell in row_node.findall("a:c", NS):
            idx = column_index(cell.attrib["r"])
            while len(row) <= idx:
                row.append(None)
            cell_type = cell.attrib.get("t")
            if cell_type == "inlineStr":
                value = "".join(t.text or "" for t in cell.iterfind(".//a:t", NS))
            else:
                node = cell.find("a:v", NS)
                raw = node.text if node is not None else None
                if raw is None:
                    value = None
                elif cell_type == "s":
                    value = strings[int(raw)]
                elif cell_type == "b":
                    value = raw == "1"
                else:
                    try:
                        num = float(raw)
                        value = int(num) if num.is_integer() else num
                    except ValueError:
                        value = raw
            row[idx] = value
        rows.append(row)
    return rows


def read_xlsx(path: Path) -> dict[str, list[list[object]]]:
    with zipfile.ZipFile(path) as zf:
        strings = shared_strings(zf)
        return {name: read_sheet(zf, target, strings) for name, target in workbook_sheets(zf)}


def cell(row: list[object], index: int) -> object:
    return row[index] if index < len(row) else None


def parse_components(sheets: dict[str, list[list[object]]], source_file: str) -> tuple[list[dict], list[str]]:
    output: list[dict] = []
    notes: list[str] = []
    for sheet_name, rows in sheets.items():
        if not rows:
            continue
        headers = [str(v or "").strip() for v in rows[0]]
        header_map = {normalize_component(h): i for i, h in enumerate(headers)}
        required = {
            "vertical de negocio": "vertical",
            "dominio": "domain",
            "componentes": "component",
            "quantidade de hosts": "host_count",
            "versao do weblogic": "weblogic",
        }
        indexes = {}
        for normalized, key in required.items():
            if normalized not in header_map:
                raise ValueError(f"Aba {sheet_name}: coluna obrigatória ausente: {normalized}")
            indexes[key] = header_map[normalized]

        current: dict | None = None
        for excel_row, row in enumerate(rows[1:], start=2):
            domain_raw = cell(row, indexes["domain"])
            component_raw = cell(row, indexes["component"])
            if domain_raw not in (None, ""):
                raw = str(domain_raw).strip()
                component_hint = str(component_raw or "").strip()
                match = re.search(r"([A-Za-z0-9._-]+_(?:domain|doamin))", raw, re.I)
                domain = match.group(1) if match else None
                if not domain:
                    match = re.search(r"\(([A-Za-z0-9._-]+_domain)\)\s*$", component_hint, re.I)
                    domain = match.group(1) if match else raw
                endpoint_match = re.search(r"\(([^()]+?)(?::(\d+))?\)\s*$", raw)
                endpoint = None
                if endpoint_match and not re.search(r"_domain$", endpoint_match.group(1), re.I):
                    endpoint = endpoint_match.group(1)
                host_count = cell(row, indexes["host_count"])
                current = {
                    "vertical_business": str(cell(row, indexes["vertical"]) or "").strip() or None,
                    "source_domain": domain,
                    "source_domain_raw": raw,
                    "source_endpoint": endpoint,
                    "declared_host_count": int(host_count) if isinstance(host_count, (int, float)) else None,
                    "weblogic_version": str(cell(row, indexes["weblogic"]) or "").strip() or None,
                    "group_start_row": excel_row,
                }
            if component_raw in (None, ""):
                continue
            if current is None:
                notes.append(f"{sheet_name}!{excel_row}: componente ignorado por não possuir bloco de domínio")
                continue
            component = str(component_raw).strip()
            component = re.sub(
                rf"\s*\({re.escape(current['source_domain'])}\)\s*$", "", component, flags=re.I
            ).strip()
            source_key_text = f"{source_file}|{sheet_name}|{excel_row}|{current['source_domain']}|{component}"
            record = {
                "source_key": hashlib.sha256(source_key_text.encode("utf-8")).hexdigest(),
                "source_file": source_file,
                "source_sheet": sheet_name,
                "source_row": excel_row,
                **current,
                "normalized_source_domain": normalize_domain(current["source_domain"]),
                "component_name": component,
            }
            output.append(record)
    return output, notes


def match_demo(records: list[dict], hosts_json: Path | None) -> None:
    domains: defaultdict[str, list[str]] = defaultdict(list)
    if hosts_json and hosts_json.exists():
        hosts = json.loads(hosts_json.read_text(encoding="utf-8"))
        for name in sorted({h.get("dominio") for h in hosts if h.get("dominio")}):
            domains[normalize_domain(name)].append(name)
    for index, record in enumerate(records, start=1):
        candidates = domains.get(record["normalized_source_domain"], [])
        record["id"] = index
        record["matched_domain"] = candidates[0] if len(candidates) == 1 else None
        record["status"] = "matched" if len(candidates) == 1 else ("ambiguous" if len(candidates) > 1 else "pending")
        record["tecnologias"] = []
        record["hosts_explicitos"] = []


def sql_quote(value: object) -> str:
    if value is None:
        return "null"
    return "'" + str(value).replace("'", "''") + "'"


def json_sql(value: dict) -> str:
    return sql_quote(json.dumps(value, ensure_ascii=False, separators=(",", ":"))) + "::jsonb"


def build_sql(records: list[dict]) -> str:
    columns = [
        "source_key", "source_file", "source_sheet", "source_row", "source_domain",
        "source_domain_raw", "normalized_source_domain", "vertical_business", "component_name",
        "declared_host_count", "weblogic_version", "source_endpoint", "payload",
    ]
    lines = [
        "-- Gerado por scripts/import_components.py. Execute após a migration 002.",
        "-- Idempotente: source_key é único e componentes usam upsert por domínio/nome/versão.",
        "begin;",
    ]
    batch_size = 100
    for start in range(0, len(records), batch_size):
        batch = records[start:start + batch_size]
        lines.append("insert into public.domain_component_imports (" + ", ".join(columns) + ") values")
        values = []
        for r in batch:
            payload = {
                "source_domain_raw": r["source_domain_raw"],
                "source_endpoint": r["source_endpoint"],
                "declared_host_count": r["declared_host_count"],
                "weblogic_version": r["weblogic_version"],
            }
            values.append("  (" + ", ".join([
                sql_quote(r["source_key"]), sql_quote(r["source_file"]), sql_quote(r["source_sheet"]),
                str(r["source_row"]), sql_quote(r["source_domain"]), sql_quote(r["source_domain_raw"]),
                sql_quote(r["normalized_source_domain"]), sql_quote(r["vertical_business"]),
                sql_quote(r["component_name"]), str(r["declared_host_count"]) if r["declared_host_count"] is not None else "null",
                sql_quote(r["weblogic_version"]), sql_quote(r["source_endpoint"]), json_sql(payload),
            ]) + ")")
        lines.append(",\n".join(values))
        lines.append("on conflict (source_key) do update set\n"
                     "  source_domain = excluded.source_domain,\n"
                     "  source_domain_raw = excluded.source_domain_raw,\n"
                     "  normalized_source_domain = excluded.normalized_source_domain,\n"
                     "  vertical_business = excluded.vertical_business,\n"
                     "  component_name = excluded.component_name,\n"
                     "  declared_host_count = excluded.declared_host_count,\n"
                     "  weblogic_version = excluded.weblogic_version,\n"
                     "  source_endpoint = excluded.source_endpoint,\n"
                     "  payload = excluded.payload,\n"
                     "  imported_at = now();")
    lines.extend([
        "select public.process_domain_component_imports() as resumo_importacao;",
        "commit;",
        "",
        "-- Auditoria:",
        "-- select status, count(*) from public.domain_component_imports group by status order by status;",
        "-- select source_domain, count(*) from public.domain_component_imports where status <> 'matched' group by source_domain order by source_domain;",
    ])
    return "\n".join(lines)


def build_report(records: list[dict], sheets: dict[str, list[list[object]]], notes: list[str]) -> str:
    seen_groups = {(r["source_sheet"], r["group_start_row"]) for r in records}
    domain_groups = []
    for marker in sorted(seen_groups):
        domain_groups.append(next(r for r in records if (r["source_sheet"], r["group_start_row"]) == marker))
    distinct_domains = {r["source_domain"] for r in records}
    repeated = Counter(r["source_domain"] for r in domain_groups)
    pending_domains = sorted({r["source_domain"] for r in records if r["status"] != "matched"})
    matched_rows = sum(r["status"] == "matched" for r in records)
    verticals = sorted({r["vertical_business"] for r in records if r["vertical_business"]})
    versions = Counter(r["weblogic_version"] or "Não informado" for r in records)
    duplicate_components = Counter((r["source_domain"], normalize_component(r["component_name"]), r["weblogic_version"]) for r in records)
    duplicate_count = sum(v - 1 for v in duplicate_components.values() if v > 1)

    return f"""# Análise da planilha de componentes

## Estrutura encontrada

- Abas analisadas: {', '.join(sheets.keys())}
- Colunas exatas: `Vertical de negócio`, `domínio`, `Componentes`, `Quantidade de hosts `, `Versão do Weblogic`
- Linhas de componentes: **{len(records)}**
- Blocos de domínio: **{len(domain_groups)}**
- Domínios distintos na planilha: **{len(distinct_domains)}**
- Verticais distintas: **{len(verticals)}**
- Registros associados automaticamente ao inventário atual: **{matched_rows}**
- Registros pendentes/ambíguos: **{len(records) - matched_rows}**
- Repetições exatas de componente no mesmo domínio/versão: **{duplicate_count}** (tratadas por upsert)

## Decisão de modelagem

A planilha **não contém uma coluna de hostname**. Ela informa apenas a quantidade de hosts no bloco do domínio. Por segurança, a importação:

1. relaciona cada componente ao domínio;
2. preserva `Quantidade de hosts` como valor declarado;
3. usa os hosts já associados ao domínio para a visualização da topologia;
4. não cria vínculos componente-host fictícios;
5. deixa a tabela `componente_hosts` disponível para associações explícitas futuras.

## Normalização

A correspondência automática remove espaços, acentos e diferenças entre maiúsculas/minúsculas, hífen, ponto e underscore. Não utiliza similaridade aproximada. Uma associação só é automática quando existe exatamente um domínio com a mesma forma normalizada.

## Domínios repetidos em blocos

{chr(10).join(f'- `{name}`: {count} blocos' for name, count in sorted(repeated.items()) if count > 1) or '- Nenhum'}

## Domínios pendentes no inventário atual

{chr(10).join(f'- `{name}`' for name in pending_domains) or '- Nenhum'}

## Versões WebLogic encontradas

{chr(10).join(f'- `{name}`: {count} componentes' for name, count in versions.most_common())}

## Observações do parser

{chr(10).join(f'- {n}' for n in notes) or '- Nenhuma inconsistência estrutural adicional.'}
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("xlsx", type=Path)
    parser.add_argument("--hosts-json", type=Path)
    parser.add_argument("--sql-out", type=Path, default=Path("database/imports/002_components_from_planilha.sql"))
    parser.add_argument("--json-out", type=Path, default=Path("data/components.json"))
    parser.add_argument("--report-out", type=Path, default=Path("docs/PLANILHA_COMPONENTES_ANALISE.md"))
    args = parser.parse_args()

    sheets = read_xlsx(args.xlsx)
    records, notes = parse_components(sheets, args.xlsx.name)
    match_demo(records, args.hosts_json)

    for path in (args.sql_out, args.json_out, args.report_out):
        path.parent.mkdir(parents=True, exist_ok=True)
    args.sql_out.write_text(build_sql(records), encoding="utf-8")
    args.json_out.write_text(json.dumps(records, ensure_ascii=False, indent=2), encoding="utf-8")
    args.report_out.write_text(build_report(records, sheets, notes), encoding="utf-8")

    status = Counter(r["status"] for r in records)
    print(json.dumps({
        "sheets": list(sheets),
        "components": len(records),
        "domains": len({r['source_domain'] for r in records}),
        "status": status,
        "sql": str(args.sql_out),
        "json": str(args.json_out),
        "report": str(args.report_out),
    }, ensure_ascii=False, indent=2, default=dict))


if __name__ == "__main__":
    main()
