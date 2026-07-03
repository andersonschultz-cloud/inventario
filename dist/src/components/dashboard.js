import { countBy, escapeHtml, hostActivity, normDomain, soRisk } from '../utils/helpers.js';

const PALETTE = ['#52C41A', '#146E37', '#7CC24E', '#FFCD00', '#A9D18E', '#57B52A', '#0E5B2D', '#C9E265', '#8FBF6F', '#D6B656'];
const charts = {};
let navigationCallback = null;

const TITLES = {
  'chart-vertical': 'Domínios por vertical de negócio',
  'chart-components-domain': 'Componentes por domínio',
  'chart-hosts-domain': 'Hosts por domínio',
  'chart-tech': 'Tecnologias mais utilizadas',
  'chart-wls': 'Distribuição das versões WebLogic',
  'chart-java': 'Distribuição das versões Java',
  'chart-os': 'Distribuição das versões de sistema operacional',
  'chart-family': 'Famílias de sistema operacional',
};

const KPI_ICONS = {
  hosts: '<svg viewBox="0 0 24 24"><rect x="4" y="4" width="16" height="6" rx="2"/><rect x="4" y="14" width="16" height="6" rx="2"/><path d="M8 7h.01M8 17h.01M12 7h5M12 17h5"/></svg>',
  domains: '<svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="8"/><path d="M4 12h16M12 4c2.5 2.4 3.5 5 3.5 8S14.5 17.6 12 20c-2.5-2.4-3.5-5-3.5-8S9.5 6.4 12 4z"/></svg>',
  components: '<svg viewBox="0 0 24 24"><path d="m12 3 8 4.5v9L12 21l-8-4.5v-9L12 3zM4 7.5l8 4.5 8-4.5M12 12v9"/></svg>',
  technologies: '<svg viewBox="0 0 24 24"><path d="m8 7-5 5 5 5M16 7l5 5-5 5M14 4l-4 16"/></svg>',
  pending: '<svg viewBox="0 0 24 24"><path d="M12 3 2.8 19h18.4L12 3z"/><path d="M12 9v4M12 17h.01"/></svg>',
  quality: '<svg viewBox="0 0 24 24"><path d="M12 3 5 6v5c0 4.7 2.8 8.1 7 10 4.2-1.9 7-5.3 7-10V6l-7-3z"/><path d="m9 12 2 2 4-5"/></svg>',
};

export function getChartImages() {
  return Object.entries(charts)
    .filter(([, chart]) => chart)
    .map(([id, chart]) => ({ title: TITLES[id] ?? id, dataUrl: chart.toBase64Image('image/png', 1) }));
}

function top(pairs, limit) {
  const values = pairs.slice(0, limit);
  return { labels: values.map(pair => pair[0]), values: values.map(pair => pair[1]) };
}

function chartClick(filterKey, labels) {
  if (!filterKey) return undefined;
  return (_event, elements) => {
    const index = elements?.[0]?.index;
    if (index == null) return;
    const label = labels[index];
    navigationCallback?.({ [filterKey]: label === '(não informado)' ? '__vazio__' : label });
  };
}

function makeChart(id, type, labels, values, options = {}) {
  const canvas = document.getElementById(id);
  if (!canvas || !window.Chart) return;
  charts[id]?.destroy();
  const mobile = window.matchMedia('(max-width: 640px)').matches;
  const compact = window.matchMedia('(max-width: 1100px)').matches;
  charts[id] = new Chart(canvas, {
    type,
    data: {
      labels,
      datasets: [{
        data: values,
        backgroundColor: type === 'bar' ? '#52C41A' : PALETTE,
        hoverBackgroundColor: type === 'bar' ? '#146E37' : PALETTE,
        borderColor: '#FFFFFF',
        borderWidth: type === 'doughnut' ? 3 : 0,
        borderRadius: type === 'bar' ? 9 : 0,
        borderSkipped: false,
      }],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      animation: { duration: 700, easing: 'easeOutQuart' },
      indexAxis: options.horizontal ? 'y' : 'x',
      cutout: type === 'doughnut' ? (mobile ? '62%' : '66%') : undefined,
      onClick: chartClick(options.filterKey, labels),
      onHover: (event, elements) => {
        const target = event.native?.target;
        if (target) target.style.cursor = elements.length ? 'pointer' : 'default';
      },
      plugins: {
        legend: {
          display: type === 'doughnut',
          position: mobile ? 'bottom' : 'right',
          labels: {
            color: '#53645A',
            boxWidth: 10,
            boxHeight: 10,
            usePointStyle: true,
            padding: 14,
            font: { size: compact ? 9 : 10, family: 'DM Sans', weight: 600 },
          },
        },
        tooltip: {
          displayColors: false,
          backgroundColor: '#071F15',
          titleColor: '#FFFFFF',
          bodyColor: '#D7E6C8',
          padding: 12,
          cornerRadius: 10,
          callbacks: { label: context => `${context.label}: ${context.formattedValue}` },
        },
      },
      scales: type === 'doughnut' ? {} : {
        x: {
          beginAtZero: true,
          border: { display: false },
          ticks: { color: '#77867C', precision: 0, font: { size: mobile ? 8 : 9, family: 'JetBrains Mono' }, maxRotation: mobile ? 55 : 25 },
          grid: { display: false },
        },
        y: {
          beginAtZero: true,
          border: { display: false },
          ticks: {
            color: '#637168',
            precision: 0,
            font: { size: mobile ? 8 : 9, family: 'JetBrains Mono' },
            callback: options.horizontal ? function (value) {
              const label = this.getLabelForValue(value);
              const max = mobile ? 17 : 27;
              return label.length > max ? `${label.slice(0, max - 1)}…` : label;
            } : undefined,
          },
          grid: { color: 'rgba(20,110,55,.075)', drawTicks: false },
        },
      },
    },
  });
}

function domainStats(hosts, components) {
  const map = new Map();
  const ensure = name => {
    const key = normDomain(name);
    if (!map.has(key)) map.set(key, { name: name || '(sem domínio)', hosts: 0, components: 0, vertical: null });
    return map.get(key);
  };
  hosts.forEach(host => { const item = ensure(host.dominio); item.hosts += 1; item.vertical ||= host.vertical_negocio; });
  components.filter(component => component.status === 'matched').forEach(component => {
    const item = ensure(component.dominio);
    item.components += 1;
    item.vertical ||= component.vertical_negocio;
  });
  return [...map.values()];
}

function renderHero(hosts, matchedComponents, pendingCount, incompleteHosts) {
  const active = hosts.filter(host => hostActivity(host) === 'ligado').length;
  const eol = hosts.filter(host => soRisk(host.versao_so) === 'eol').length;
  const completeness = hosts.length ? Math.max(0, Math.round(((hosts.length - incompleteHosts) / hosts.length) * 100)) : 100;

  const set = (id, value) => {
    const node = document.getElementById(id);
    if (node) node.textContent = value;
  };
  set('hero-active-hosts', active.toLocaleString('pt-BR'));
  set('hero-risk-hosts', eol.toLocaleString('pt-BR'));
  set('hero-components', matchedComponents.length.toLocaleString('pt-BR'));
  set('hero-health-copy', `${completeness}% dos registros completos`);
  set('hero-data-quality', pendingCount ? `${pendingCount} pendência(s) de associação` : 'Associações validadas');
}

export function renderKpis(hosts, components, pendingCount = 0) {
  const matchedComponents = components.filter(component => component.status === 'matched');
  const domains = new Set(hosts.map(host => normDomain(host.dominio)).filter(Boolean)).size;
  const technologies = new Set(hosts.flatMap(host => host.tecnologias ?? [])).size;
  const incompleteHosts = hosts.filter(host => !host.dominio || !host.vertical_negocio || !(host.componentes ?? []).length).length;
  const incompletePercent = hosts.length ? Math.round((incompleteHosts / hosts.length) * 100) : 0;
  const cards = [
    { value: hosts.length, label: 'Hosts', hint: 'inventário atual', filter: {}, icon: KPI_ICONS.hosts, tone: 'green' },
    { value: domains, label: 'Domínios', hint: 'distintos', route: 'topologia', icon: KPI_ICONS.domains, tone: 'deep' },
    { value: matchedComponents.length, label: 'Componentes', hint: 'associados', route: 'topologia', icon: KPI_ICONS.components, tone: 'lime' },
    { value: technologies, label: 'Tecnologias', hint: 'distintas', icon: KPI_ICONS.technologies, tone: 'blue' },
    { value: pendingCount, label: 'Pendências', hint: 'associação manual', cls: pendingCount ? 'kpi-warning' : '', route: 'admin', icon: KPI_ICONS.pending, tone: 'yellow' },
    { value: `${incompletePercent}%`, label: 'Dados incompletos', hint: `${incompleteHosts} hosts`, cls: incompletePercent ? 'kpi-attention' : '', icon: KPI_ICONS.quality, tone: 'mint' },
  ];
  document.getElementById('kpi-cards').innerHTML = cards.map((card, index) => `
    <button class="kpi ${card.cls ?? ''}" type="button" data-kpi="${index}">
      <span class="kpi-icon kpi-icon-${card.tone}">${card.icon}</span>
      <span class="kpi-content">
        <span class="kpi-num">${escapeHtml(Number.isFinite(card.value) ? card.value.toLocaleString('pt-BR') : card.value)}</span>
        <span class="kpi-label">${escapeHtml(card.label)}</span>
        <span class="kpi-hint">${escapeHtml(card.hint)}</span>
      </span>
      <span class="kpi-arrow">↗</span>
    </button>`).join('');
  document.querySelectorAll('[data-kpi]').forEach(button => button.addEventListener('click', () => {
    const card = cards[Number(button.dataset.kpi)];
    navigationCallback?.(card.filter ?? {}, card.route ?? 'explorar');
  }));
  renderHero(hosts, matchedComponents, pendingCount, incompleteHosts);
}

export function renderCharts(hosts, components) {
  const domains = domainStats(hosts, components);
  const verticalPairs = countBy(domains, domain => domain.vertical || '(não informado)');
  const componentPairs = domains.map(domain => [domain.name, domain.components]).sort((a, b) => b[1] - a[1]);
  const hostPairs = domains.map(domain => [domain.name, domain.hosts]).sort((a, b) => b[1] - a[1]);

  const vertical = top(verticalPairs, 10);
  makeChart('chart-vertical', 'doughnut', vertical.labels, vertical.values, { filterKey: 'vertical' });
  const componentDomain = top(componentPairs, 12);
  makeChart('chart-components-domain', 'bar', componentDomain.labels, componentDomain.values, { horizontal: true, filterKey: 'dominio' });
  const hostDomain = top(hostPairs, 12);
  makeChart('chart-hosts-domain', 'bar', hostDomain.labels, hostDomain.values, { horizontal: true, filterKey: 'dominio' });

  const tech = top(countBy(hosts, host => host.tecnologias ?? []), 12);
  makeChart('chart-tech', 'bar', tech.labels, tech.values, { horizontal: true, filterKey: 'tecnologia' });
  const wls = top(countBy(components.filter(component => component.status === 'matched'), component => component.versao_weblogic), 8);
  makeChart('chart-wls', 'doughnut', wls.labels, wls.values, { filterKey: 'weblogic' });
  const java = top(countBy(hosts, host => host.versao_java), 10);
  makeChart('chart-java', 'bar', java.labels, java.values, { filterKey: 'java' });
  const os = top(countBy(hosts, host => host.versao_so), 12);
  makeChart('chart-os', 'bar', os.labels, os.values, { filterKey: 'so' });
  const family = top(countBy(hosts, host => host.tipo_so), 8);
  makeChart('chart-family', 'doughnut', family.labels, family.values, { filterKey: 'familia' });
}

export function renderDashboard(hosts, components, pendingCount, onNavigate) {
  navigationCallback = onNavigate;
  renderKpis(hosts, components, pendingCount);
  renderCharts(hosts, components);

  const eol = hosts.filter(host => soRisk(host.versao_so) === 'eol').length;
  const summary = document.getElementById('dashboard-summary');
  summary.innerHTML = `<strong>${hosts.length.toLocaleString('pt-BR')}</strong> hosts monitorados, <strong>${components.filter(c => c.status === 'matched').length.toLocaleString('pt-BR')}</strong> componentes associados e <strong>${eol.toLocaleString('pt-BR')}</strong> hosts com SO fora de suporte.`;
}
