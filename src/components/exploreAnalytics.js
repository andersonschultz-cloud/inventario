import {
  escapeHtml,
  hostActivity,
  hostActivityLabel,
  soRisk,
  soRiskLabel,
} from '../utils/helpers.js';

const charts = {};
let filterCallback = null;

const TITLES = {
  'explore-chart-activity': 'Estado operacional dos hosts',
  'explore-chart-so-health': 'Saúde dos sistemas operacionais',
  'explore-chart-domain': 'Hosts por domínio na visão filtrada',
  'explore-chart-so-version': 'Versões de SO na visão filtrada',
};

const COLORS = {
  activity: ['#3FA110', '#7A887E', '#FFCD00'],
  health: ['#3FA110', '#FFCD00', '#D0442E', '#AAB5AD'],
  bar: '#3FA110',
};

export function getExploreChartImages() {
  return Object.entries(charts)
    .filter(([, chart]) => chart)
    .map(([id, chart]) => ({ title: TITLES[id] ?? id, dataUrl: chart.toBase64Image('image/png', 1) }));
}

function percent(value, total) {
  return total ? Math.round((value / total) * 100) : 0;
}

function topPairs(pairs, limit = 12) {
  const selected = pairs.slice(0, limit);
  return {
    labels: selected.map(([label]) => label),
    values: selected.map(([, value]) => value),
  };
}

export function computeExploreMetrics(rows) {
  const activities = Object.fromEntries(['ligado', 'desativado', 'sem_status'].map(key => [key, 0]));
  const risks = Object.fromEntries(['ok', 'warn', 'eol', 'neutral'].map(key => [key, 0]));
  const domains = new Map();
  const versions = new Map();

  for (const host of rows) {
    activities[hostActivity(host)] += 1;
    risks[soRisk(host.versao_so)] += 1;
    const domain = host.dominio || '(não informado)';
    const version = host.versao_so || '(não informado)';
    domains.set(domain, (domains.get(domain) ?? 0) + 1);
    versions.set(version, (versions.get(version) ?? 0) + 1);
  }

  const sorted = map => [...map.entries()].sort((a, b) => b[1] - a[1] || String(a[0]).localeCompare(String(b[0]), 'pt-BR'));
  return { activities, risks, domains: sorted(domains), versions: sorted(versions) };
}

function toggleEmpty(canvas, empty) {
  const placeholder = canvas.parentElement?.querySelector('.chart-empty');
  canvas.classList.toggle('hidden', empty);
  placeholder?.classList.toggle('hidden', !empty);
}

function makeChart(id, type, labels, values, options = {}) {
  const canvas = document.getElementById(id);
  if (!canvas || !window.Chart) return;

  charts[id]?.destroy();
  charts[id] = null;
  const empty = !values.some(value => Number(value) > 0);
  toggleEmpty(canvas, empty);
  if (empty) return;

  const mobile = window.matchMedia('(max-width: 640px)').matches;
  charts[id] = new Chart(canvas, {
    type,
    data: {
      labels,
      datasets: [{
        data: values,
        backgroundColor: options.colors ?? (type === 'bar' ? COLORS.bar : COLORS.activity),
        borderColor: '#FFFFFF',
        borderWidth: type === 'doughnut' ? 2 : 0,
        borderRadius: type === 'bar' ? 7 : 0,
      }],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      indexAxis: options.horizontal ? 'y' : 'x',
      onClick: (_event, elements) => {
        const index = elements?.[0]?.index;
        if (index == null || !options.filterKey) return;
        const rawValue = options.filterValues?.[index] ?? labels[index];
        filterCallback?.({ [options.filterKey]: rawValue === '(não informado)' ? '__vazio__' : rawValue });
      },
      onHover: (event, elements) => {
        const target = event.native?.target;
        if (target) target.style.cursor = elements.length && options.filterKey ? 'pointer' : 'default';
      },
      plugins: {
        legend: {
          display: type === 'doughnut',
          position: mobile ? 'bottom' : 'right',
          labels: { boxWidth: 11, usePointStyle: true, font: { size: 11, family: 'Inter' } },
        },
        tooltip: {
          displayColors: false,
          callbacks: {
            label: context => `${context.label}: ${context.formattedValue} host${Number(context.raw) === 1 ? '' : 's'}`,
          },
        },
      },
      scales: type === 'doughnut' ? {} : {
        x: {
          beginAtZero: true,
          ticks: { precision: 0, font: { size: mobile ? 9 : 10, family: 'JetBrains Mono' } },
          grid: { display: false },
        },
        y: {
          beginAtZero: true,
          ticks: {
            precision: 0,
            font: { size: mobile ? 9 : 10, family: 'JetBrains Mono' },
            callback: options.horizontal ? function (value) {
              const label = this.getLabelForValue(value);
              const max = mobile ? 18 : 30;
              return label.length > max ? `${label.slice(0, max - 1)}…` : label;
            } : undefined,
          },
          grid: { color: 'rgba(20,110,55,.08)' },
        },
      },
    },
  });
}

function renderKpis(rows, totalRows, metrics) {
  const { activities, risks } = metrics;
  const share = percent(rows.length, totalRows);
  const cards = [
    { value: rows.length, label: 'Hosts filtrados', hint: `${share}% do inventário`, static: true },
    { value: activities.ligado, label: 'Ligados', hint: `${percent(activities.ligado, rows.length)}% da visão`, filter: { atividade: 'ligado' } },
    { value: activities.desativado, label: 'Desativados', hint: `${percent(activities.desativado, rows.length)}% da visão`, filter: { atividade: 'desativado' }, cls: 'kpi-muted' },
    { value: activities.sem_status, label: 'Sem status', hint: 'requer validação', filter: { atividade: 'sem_status' }, cls: activities.sem_status ? 'kpi-attention' : '' },
    { value: risks.eol, label: 'SO fora de suporte', hint: `${percent(risks.eol, rows.length)}% da visão`, filter: { saude_so: 'eol' }, cls: risks.eol ? 'kpi-warning' : '' },
    { value: risks.warn, label: 'Suporte estendido', hint: 'RHEL 7 · validar ELS', filter: { saude_so: 'warn' }, cls: risks.warn ? 'kpi-attention' : '' },
  ];

  const target = document.getElementById('explore-kpis');
  target.innerHTML = cards.map((card, index) => {
    const tag = card.static ? 'article' : 'button';
    const attrs = card.static ? '' : `type="button" data-explore-kpi="${index}"`;
    return `<${tag} class="kpi explore-kpi ${card.cls ?? ''}" ${attrs}>
      <span class="kpi-num">${escapeHtml(card.value)}</span>
      <span class="kpi-label">${escapeHtml(card.label)}</span>
      <span class="kpi-hint">${escapeHtml(card.hint)}</span>
    </${tag}>`;
  }).join('');

  target.querySelectorAll('[data-explore-kpi]').forEach(button => button.addEventListener('click', () => {
    filterCallback?.(cards[Number(button.dataset.exploreKpi)].filter);
  }));

  const summary = document.getElementById('explore-insights-summary');
  summary.textContent = rows.length
    ? `${activities.ligado} ligados · ${activities.desativado} desativados · ${risks.eol} com SO fora de suporte`
    : 'Nenhum host corresponde aos filtros atuais.';
}

function renderCharts(metrics) {
  const { activities, risks } = metrics;
  const activityOrder = ['ligado', 'desativado', 'sem_status'];
  const activityValues = activityOrder.map(key => activities[key]);
  makeChart(
    'explore-chart-activity',
    'doughnut',
    activityOrder.map(hostActivityLabel),
    activityValues,
    { filterKey: 'atividade', filterValues: activityOrder, colors: COLORS.activity },
  );

  const healthOrder = ['ok', 'warn', 'eol', 'neutral'];
  const healthValues = healthOrder.map(key => risks[key]);
  makeChart(
    'explore-chart-so-health',
    'doughnut',
    healthOrder.map(soRiskLabel),
    healthValues,
    { filterKey: 'saude_so', filterValues: healthOrder, colors: COLORS.health },
  );

  const domains = topPairs(metrics.domains, 12);
  makeChart('explore-chart-domain', 'bar', domains.labels, domains.values, {
    horizontal: true,
    filterKey: 'dominio',
  });

  const versions = topPairs(metrics.versions, 12);
  makeChart('explore-chart-so-version', 'bar', versions.labels, versions.values, {
    horizontal: true,
    filterKey: 'so',
  });
}

export function renderExploreAnalytics(rows, totalRows, onFilter) {
  filterCallback = onFilter;
  const metrics = computeExploreMetrics(rows);
  renderKpis(rows, totalRows, metrics);
  renderCharts(metrics);
}
