#!/usr/bin/env python3
"""
Importa o inventário da planilha Excel e gera:
  - data/hosts.json      (modo demo do frontend)
  - database/seed.sql    (carga inicial no Supabase)

Uso:
  pip install pandas openpyxl
  python scripts/import_xlsx.py "ECER_e_DCPER_-_Inventário_de_máquinas__produção_.xlsx"

Abas lidas: 'ECER - Inventário de produção' e 'DCPER - Inventário de produção'
"""
import sys
import json
from pathlib import Path

import pandas as pd

SHEETS = [
    ('ECER - Inventário de produção', 'ECER'),
    ('DCPER - Inventário de produção', 'DCPER'),
]

TIMES = {
    'ECER': 'ECER - Crédito e Risco',
    'DCPER': 'DCPER - DevOps CORE - Pagamentos e Recebimentos',
}


def so_familia(v):
    if pd.isna(v):
        return None
    v = str(v).lower()
    if v.startswith('redhat'):
        return 'RHEL'
    if v.startswith('centos'):
        return 'CentOS'
    if v.startswith('rocky'):
        return 'Rocky'
    return str(v).split('-')[0]


def cell(row, col):
    v = row.get(col)
    return None if pd.isna(v) else str(v).strip() or None


def extract(xlsx_path):
    rows, seen = [], set()
    for sheet, sigla in SHEETS:
        df = pd.read_excel(xlsx_path, sheet_name=sheet)
        for _, r in df.iterrows():
            host = cell(r, 'Servidor')
            if not host or host.lower() in seen:
                continue
            seen.add(host.lower())
            tec_raw = cell(r, 'Técnologia') or ''
            rows.append({
                'hostname': host,
                'time': sigla,
                'versao_so': cell(r, 'Versão do SO'),
                'tipo_so': so_familia(r.get('Versão do SO')),
                'negocio': cell(r, 'Negócio'),
                'tecnologias': [t.strip() for t in tec_raw.split(',') if t.strip()],
                'release': cell(r, 'Release'),
                'dominio': cell(r, 'Domínio'),
                'situacao': cell(r, 'Situação'),
                'criticidade': cell(r, 'Críticidade'),
                'ambiente': 'PROD',
                'versao_java': None,
                'observacao': None,
            })
    return rows


def q(v):
    return 'null' if v is None else "'" + str(v).replace("'", "''") + "'"


def build_seed(rows):
    tecs = sorted({t for r in rows for t in r['tecnologias']})
    doms = sorted({r['dominio'] for r in rows if r['dominio']})
    negs = sorted({r['negocio'] for r in rows if r['negocio']})

    out = ["-- Seed gerado por scripts/import_xlsx.py", "-- Executar APÓS schema.sql", ""]
    out.append("insert into public.times (sigla, nome) values")
    out.append(",\n".join(f"  ({q(s)}, {q(n)})" for s, n in TIMES.items()) + "\non conflict (sigla) do nothing;\n")
    for table, values in [('tecnologias', tecs), ('dominios', doms), ('negocios', negs)]:
        out.append(f"insert into public.{table} (nome) values")
        out.append(",\n".join(f"  ({q(v)})" for v in values) + "\non conflict (nome) do nothing;\n")

    out.append("-- Hosts")
    for r in rows:
        out.append(
            "insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, "
            "release, situacao, criticidade, ambiente, versao_java, observacao)\n"
            f"select {q(r['hostname'])}, t.id, d.id, n.id, {q(r['versao_so'])}, {q(r['tipo_so'])}, "
            f"{q(r['release'])}, {q(r['situacao'])}, {q(r['criticidade'])}, {q(r['ambiente'])}, "
            f"{q(r['versao_java'])}, {q(r['observacao'])}\n"
            "from (select 1) x\n"
            f"left join public.times t on t.sigla = {q(r['time'])}\n"
            f"left join public.dominios d on d.nome = {q(r['dominio'])}\n"
            f"left join public.negocios n on n.nome = {q(r['negocio'])}\n"
            "on conflict (hostname) do nothing;"
        )
    out.append("\n-- Vínculo host x tecnologia")
    for r in rows:
        for t in r['tecnologias']:
            out.append(
                "insert into public.host_tecnologias (host_id, tecnologia_id)\n"
                "select h.id, tc.id from public.hosts h, public.tecnologias tc\n"
                f"where h.hostname = {q(r['hostname'])} and tc.nome = {q(t)}\n"
                "on conflict do nothing;"
            )
    return "\n".join(out)


def main():
    if len(sys.argv) < 2:
        sys.exit("Uso: python scripts/import_xlsx.py <planilha.xlsx>")
    xlsx = sys.argv[1]
    root = Path(__file__).resolve().parent.parent
    rows = extract(xlsx)

    (root / 'data').mkdir(exist_ok=True)
    (root / 'database').mkdir(exist_ok=True)
    (root / 'data/hosts.json').write_text(
        json.dumps(rows, ensure_ascii=False, indent=1), encoding='utf-8')
    (root / 'database/seed.sql').write_text(build_seed(rows), encoding='utf-8')
    print(f"OK: {len(rows)} hosts -> data/hosts.json e database/seed.sql")


if __name__ == '__main__':
    main()
