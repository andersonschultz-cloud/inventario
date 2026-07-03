// ============================================================
// Utilitários compartilhados
// ============================================================

export const escapeHtml = (s) =>
  String(s ?? '').replace(/[&<>"']/g, (c) =>
    ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c]));

export function clean(v) {
  if (v == null) return null;
  const s = String(v).replace(/\s+/g, ' ').trim();
  return s === '' ? null : s;
}

// Forma canônica conservadora. Útil para domínio e busca; não faz fuzzy match.
export function normText(v) {
  return String(v ?? '')
    .toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[_\-./\\|\s]+/g, ' ')
    .trim();
}

export function normDomain(v) {
  return normText(v).replace(/\s+/g, '');
}

const TEXT_FIELDS = [
  'hostname', 'time', 'dominio', 'negocio', 'vertical_negocio', 'versao_so',
  'tipo_so', 'release', 'versao_java', 'ambiente', 'situacao', 'criticidade',
  'observacao',
];

export function sanitizeHost(h) {
  const out = { ...h };
  for (const field of TEXT_FIELDS) out[field] = clean(out[field]);
  out.tecnologias = [...new Set((out.tecnologias ?? []).map(clean).filter(Boolean))];
  out.componentes = [...new Set((out.componentes ?? []).map(clean).filter(Boolean))];
  out.versoes_weblogic = [...new Set((out.versoes_weblogic ?? []).map(clean).filter(Boolean))];
  out._hay = buildHaystack(out);
  return out;
}

export function sanitizeComponent(c) {
  return {
    ...c,
    id: Number(c.id),
    dominio: clean(c.dominio ?? c.matched_domain ?? c.source_domain),
    source_domain: clean(c.source_domain),
    vertical_negocio: clean(c.vertical_negocio ?? c.vertical_business),
    nome: clean(c.nome ?? c.component_name),
    versao_weblogic: clean(c.versao_weblogic ?? c.weblogic_version),
    quantidade_hosts_declarada: c.quantidade_hosts_declarada ?? c.declared_host_count ?? null,
    source_endpoint: clean(c.source_endpoint),
    tecnologias: [...new Set((c.tecnologias ?? []).map(clean).filter(Boolean))],
    hosts_explicitos: [...new Set((c.hosts_explicitos ?? []).map(clean).filter(Boolean))],
    status: c.status ?? (c.dominio ? 'matched' : 'pending'),
  };
}

export function buildHaystack(item) {
  return normText([
    item.hostname, item.time, item.dominio, item.negocio, item.vertical_negocio,
    (item.tecnologias ?? []).join(' '), (item.componentes ?? []).join(' '),
    (item.versoes_weblogic ?? []).join(' '), item.nome, item.versao_weblogic,
    item.versao_so, item.tipo_so, item.release, item.versao_java,
    item.ambiente, item.situacao, item.criticidade, item.observacao,
  ].filter(Boolean).join(' | '));
}

export function searchRows(rows, query) {
  const q = normText(query);
  if (!q) return rows;
  const exact = rows.filter(row => (row._hay ?? buildHaystack(row)).includes(q));
  if (exact.length) return exact;
  const tokens = q.split(' ').filter(Boolean);
  return rows.filter(row => {
    const hay = row._hay ?? buildHaystack(row);
    return tokens.every(token => token.length >= 2
      ? hay.includes(token)
      : new RegExp(`(^| )${token}( |$)`).test(hay));
  });
}

export function enrichHosts(hosts, components) {
  const byDomain = new Map();
  for (const component of components) {
    const key = normDomain(component.dominio);
    if (!key || component.status !== 'matched') continue;
    if (!byDomain.has(key)) byDomain.set(key, []);
    byDomain.get(key).push(component);
  }
  return hosts.map(host => {
    const domainComponents = byDomain.get(normDomain(host.dominio)) ?? [];
    const vertical = host.vertical_negocio ?? domainComponents.find(c => c.vertical_negocio)?.vertical_negocio ?? null;
    const out = {
      ...host,
      vertical_negocio: vertical,
      componentes: domainComponents.map(c => c.nome).filter(Boolean),
      versoes_weblogic: [...new Set(domainComponents.map(c => c.versao_weblogic).filter(Boolean))],
      component_count: domainComponents.length,
    };
    out._hay = buildHaystack(out);
    return out;
  });
}

export function buildDomainTopology(hosts, components) {
  const domains = new Map();
  const ensure = (name) => {
    const key = normDomain(name) || `__sem_dominio__${name ?? ''}`;
    if (!domains.has(key)) {
      domains.set(key, {
        key,
        dominio: name || '(sem domínio)',
        vertical_negocio: null,
        hostMap: new Map(),
        componentMap: new Map(),
      });
    }
    return domains.get(key);
  };

  // Hosts e componentes são filhos independentes do domínio. Os mapas também
  // protegem a topologia contra registros duplicados vindos da consulta.
  for (const host of hosts) {
    const domain = ensure(host.dominio);
    const hostKey = host.id != null ? `id:${host.id}` : `hostname:${normText(host.hostname)}`;
    if (!domain.hostMap.has(hostKey)) domain.hostMap.set(hostKey, host);
    domain.vertical_negocio ||= host.vertical_negocio;
  }
  for (const component of components) {
    const domain = ensure(component.dominio ?? component.source_domain);
    const componentKey = component.id != null
      ? `id:${component.id}`
      : `component:${normText(component.nome)}:${normText(component.versao_weblogic)}`;
    if (!domain.componentMap.has(componentKey)) domain.componentMap.set(componentKey, component);
    domain.vertical_negocio ||= component.vertical_negocio;
  }

  return [...domains.values()]
    .map(domain => {
      const hosts = [...domain.hostMap.values()]
        .sort((a, b) => String(a.hostname ?? '').localeCompare(String(b.hostname ?? ''), 'pt-BR'));
      const components = [...domain.componentMap.values()]
        .sort((a, b) => String(a.nome ?? '').localeCompare(String(b.nome ?? ''), 'pt-BR'));
      return {
        key: domain.key,
        dominio: domain.dominio,
        vertical_negocio: domain.vertical_negocio,
        hosts,
        components,
        technologies: [...new Set([
          ...hosts.flatMap(h => h.tecnologias ?? []),
          ...components.flatMap(c => c.tecnologias ?? []),
        ])].sort(),
        weblogicVersions: [...new Set(components.map(c => c.versao_weblogic).filter(Boolean))].sort(),
        incomplete: !domain.vertical_negocio || !hosts.length || !components.length,
        status: hosts.length && components.length ? 'completo' : 'incompleto',
      };
    })
    .sort((a, b) => b.hosts.length - a.hosts.length || a.dominio.localeCompare(b.dominio, 'pt-BR'));
}

export function debounce(fn, ms = 250) {
  let timer;
  return (...args) => {
    clearTimeout(timer);
    timer = setTimeout(() => fn(...args), ms);
  };
}

export function hostActivity(hostOrStatus) {
  const status = normText(typeof hostOrStatus === 'object' ? hostOrStatus?.situacao : hostOrStatus);
  if (!status) return 'sem_status';
  if (status === 'ligado' || status === 'ativo' || status === 'online') return 'ligado';
  if (['desligado', 'desativado', 'inativo', 'offline', 'removido'].includes(status) || status.startsWith('remover')) return 'desativado';
  return 'sem_status';
}

export function hostActivityLabel(activity) {
  return ({ ligado: 'Ligados', desativado: 'Desativados', sem_status: 'Sem status' })[activity] ?? 'Sem status';
}

// Classificação conservadora baseada na família/versão principal.
// RHEL 7 fica separado como suporte estendido, e não é somado ao EOL definitivo.
export function soRisk(versaoSo) {
  if (!versaoSo) return 'neutral';
  const value = normText(versaoSo);
  const major = Number(value.match(/\b(\d{1,2})(?:\D|$)/)?.[1]);

  if (/\b(?:redhat|red hat|rhel)\b/.test(value)) {
    if (!Number.isFinite(major)) return 'neutral';
    if (major <= 6) return 'eol';
    if (major === 7) return 'warn';
    return major >= 8 ? 'ok' : 'neutral';
  }
  if (/\bcentos\b/.test(value)) {
    if (!Number.isFinite(major)) return 'neutral';
    return major <= 8 ? 'eol' : 'ok';
  }
  if (/\brocky\b/.test(value)) {
    if (!Number.isFinite(major)) return 'neutral';
    return major >= 8 ? 'ok' : 'eol';
  }
  return 'neutral';
}

export function soRiskLabel(risk) {
  return ({ ok: 'Suportado', warn: 'Suporte estendido', eol: 'Fora de suporte', neutral: 'Não classificado' })[risk] ?? 'Não classificado';
}

export function situacaoBadge(s) {
  if (!s) return 'badge-neutral';
  if (s === 'Ligado') return 'badge-lig';
  if (s === 'Desligado') return 'badge-des';
  return 'badge-rem';
}

export function exportCsv(rows, filename = 'inventario-hosts.csv') {
  const cols = [
    'hostname', 'time', 'dominio', 'vertical_negocio', 'negocio', 'componentes',
    'tecnologias', 'versoes_weblogic', 'versao_so', 'tipo_so', 'release',
    'versao_java', 'ambiente', 'situacao', 'criticidade', 'observacao',
  ];
  const esc = (value) => {
    if (Array.isArray(value)) value = value.join(' | ');
    value = String(value ?? '');
    return /[";\n]/.test(value) ? `"${value.replace(/"/g, '""')}"` : value;
  };
  const lines = [cols.join(';'), ...rows.map(row => cols.map(col => esc(row[col])).join(';'))];
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8' });
  const anchor = document.createElement('a');
  anchor.href = URL.createObjectURL(blob);
  anchor.download = filename;
  anchor.click();
  URL.revokeObjectURL(anchor.href);
}

export function countBy(rows, keyFn) {
  const map = new Map();
  for (const row of rows) {
    const values = keyFn(row);
    for (const value of Array.isArray(values) ? values : [values]) {
      if (value == null || value === '') continue;
      map.set(value, (map.get(value) ?? 0) + 1);
    }
  }
  return [...map.entries()].sort((a, b) => b[1] - a[1] || String(a[0]).localeCompare(String(b[0]), 'pt-BR'));
}

export const plural = (count, singular, pluralForm = `${singular}s`) =>
  `${count} ${count === 1 ? singular : pluralForm}`;
