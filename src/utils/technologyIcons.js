// Ícones SVG locais: nenhuma imagem externa e uma única regra centralizada.
import { escapeHtml } from './helpers.js';

const paths = {
  server: '<rect x="4" y="4" width="16" height="6" rx="2"/><rect x="4" y="14" width="16" height="6" rx="2"/><path d="M8 7h.01M8 17h.01"/>',
  java: '<path d="M8 17c3 2 7 0 8-2M7 14c4 2 9 0 10-2M9 11c-2-3 4-3 2-7 4 3-2 5 1 7"/><path d="M6 20h12"/>',
  database: '<ellipse cx="12" cy="5" rx="8" ry="3"/><path d="M4 5v6c0 1.7 3.6 3 8 3s8-1.3 8-3V5M4 11v6c0 1.7 3.6 3 8 3s8-1.3 8-3v-6"/>',
  linux: '<rect x="3" y="4" width="18" height="16" rx="3"/><path d="m7 9 3 3-3 3M12 15h5"/>',
  windows: '<path d="M3 5 11 4v7H3V5Zm10-1 8-1v8h-8V4ZM3 13h8v7l-8-1v-6Zm10 0h8v8l-8-1v-7Z"/>',
  api: '<path d="M8 9 4 12l4 3M16 9l4 3-4 3M14 5l-4 14"/>',
  queue: '<path d="M5 7h11l-2-2M19 17H8l2 2"/><circle cx="4" cy="17" r="1"/><circle cx="20" cy="7" r="1"/>',
  web: '<circle cx="12" cy="12" r="9"/><path d="M3 12h18M12 3a15 15 0 0 1 0 18M12 3a15 15 0 0 0 0 18"/>',
  balance: '<path d="M12 3v5M5 8h14M6 8v5M18 8v5M12 8v5"/><rect x="3" y="13" width="6" height="7" rx="2"/><rect x="9" y="13" width="6" height="7" rx="2"/><rect x="15" y="13" width="6" height="7" rx="2"/>',
  cluster: '<circle cx="12" cy="5" r="3"/><circle cx="5" cy="18" r="3"/><circle cx="19" cy="18" r="3"/><path d="m10 8-3 7M14 8l3 7M8 18h8"/>',
  container: '<path d="m12 3 9 5-9 5-9-5 9-5Z"/><path d="m3 8 9 5 9-5M3 13l9 5 9-5"/>',
  component: '<rect x="7" y="7" width="10" height="10" rx="2"/><path d="M9 3v4M15 3v4M9 17v4M15 17v4M3 9h4M3 15h4M17 9h4M17 15h4"/>',
};

export function technologyKind(value = '') {
  const v = String(value).toLowerCase();
  if (/java|jax|jdk|spring/.test(v)) return 'java';
  if (/oracle|sql|database|banco|db2|postgres|mysql/.test(v)) return 'database';
  if (/linux|rhel|redhat|centos|rocky|unix/.test(v)) return 'linux';
  if (/windows|iis|\.net/.test(v)) return 'windows';
  if (/api|rest|soap|ws-|webservice|servico/.test(v)) return 'api';
  if (/jms|mdb|fila|queue|kafka|mensageria|mq/.test(v)) return 'queue';
  if (/apache|nginx|httpd|web/.test(v)) return 'web';
  if (/haproxy|proxy|load.?balance|balanceador/.test(v)) return 'balance';
  if (/kubernetes|k8s|cluster/.test(v)) return 'cluster';
  if (/docker|container|podman/.test(v)) return 'container';
  if (/weblogic|wls|application.?server/.test(v)) return 'server';
  return 'component';
}

export function technologyIcon(value, options = {}) {
  const kind = technologyKind(value);
  const size = Number(options.size ?? 20);
  const label = escapeHtml(options.label ?? value ?? 'Componente');
  return `<span class="tech-icon tech-icon-${kind}" title="${label}" aria-label="${label}">
    <svg width="${size}" height="${size}" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">${paths[kind]}</svg>
  </span>`;
}
