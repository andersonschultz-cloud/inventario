// ============================================================
// Exportação da visão atual — PNG e PDF
// Estratégia: em vez de fotografar a tela (paginada, com botões
// de ação e efeitos de vidro que confundem o html2canvas),
// montamos um "relatório" dedicado fora da viewport com:
//   cabeçalho + data/hora + filtros ativos + KPIs +
//   gráficos (imagens exportadas do Chart.js) +
//   TODOS os registros filtrados (sem paginação, sem ações).
// html2canvas e jsPDF são carregados sob demanda (lazy) para
// não pesar o carregamento inicial, importante no mobile.
// ============================================================
import { escapeHtml, hostActivity, soRisk, soRiskLabel, situacaoBadge } from '../utils/helpers.js';
import { describeFilters } from './filters.js';
import { getExploreChartImages } from './exploreAnalytics.js';

const CDN = {
  html2canvas: 'https://cdn.jsdelivr.net/npm/html2canvas@1.4.1/dist/html2canvas.min.js',
  jspdf: 'https://cdn.jsdelivr.net/npm/jspdf@2.5.1/dist/jspdf.umd.min.js',
};

const loaded = {};
function loadScript(src) {
  if (loaded[src]) return loaded[src];
  loaded[src] = new Promise((resolve, reject) => {
    const s = document.createElement('script');
    s.src = src;
    s.onload = resolve;
    s.onerror = () => reject(new Error('Falha ao carregar biblioteca de exportação. Verifique a conexão.'));
    document.head.appendChild(s);
  });
  return loaded[src];
}

function timestamp() {
  const d = new Date();
  const p = (n) => String(n).padStart(2, '0');
  return `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())}_${p(d.getHours())}h${p(d.getMinutes())}`;
}

// Nome de arquivo: data/hora + indicação dos filtros ativos (sanitizado)
export function exportFilename(ext) {
  const filtros = describeFilters()
    .map(f => f.replace(/[^\p{L}\p{N}]+/gu, '-'))
    .join('_')
    .slice(0, 80);
  return `inventario_${timestamp()}${filtros ? '_' + filtros : '_sem-filtros'}.${ext}`;
}

function kpiHtml(rows) {
  const total = rows.length;
  const ligados = rows.filter(r => hostActivity(r) === 'ligado').length;
  const desativados = rows.filter(r => hostActivity(r) === 'desativado').length;
  const eol = rows.filter(r => soRisk(r.versao_so) === 'eol').length;
  const extended = rows.filter(r => soRisk(r.versao_so) === 'warn').length;
  const doms = new Set(rows.map(r => r.dominio).filter(Boolean)).size;
  const cell = (n, l) => `<div class="rp-kpi"><div class="rp-kpi-n">${n}</div><div class="rp-kpi-l">${l}</div></div>`;
  return cell(total, 'Hosts') + cell(ligados, 'Ligados') + cell(desativados, 'Desativados')
    + cell(doms, 'Domínios') + cell(eol, 'SO fora de suporte') + cell(extended, 'Suporte estendido');
}

function tableHtml(rows) {
  const badge = (txt, cls) => `<span class="rp-badge ${cls}">${escapeHtml(txt ?? '—')}</span>`;
  const soCls = { ok: 'rp-ok', warn: 'rp-warn', eol: 'rp-eol', neutral: '' };
  const body = rows.map(r => `
    <tr>
      <td class="rp-mono"><strong>${escapeHtml(r.hostname)}</strong></td>
      <td>${escapeHtml(r.time ?? '—')}</td>
      <td class="rp-mono">${escapeHtml(r.dominio ?? '—')}</td>
      <td>${escapeHtml(r.vertical_negocio ?? '—')}</td>
      <td>${escapeHtml((r.componentes ?? []).join(', ') || '—')}</td>
      <td>${escapeHtml((r.tecnologias ?? []).join(', ') || '—')}</td>
      <td class="rp-mono">${escapeHtml((r.versoes_weblogic ?? []).join(', ') || '—')}</td>
      <td>${badge(r.versao_so, soCls[soRisk(r.versao_so)])}</td>
      <td>${badge(soRiskLabel(soRisk(r.versao_so)), soCls[soRisk(r.versao_so)])}</td>
      <td class="rp-mono">${escapeHtml(r.versao_java ?? '—')}</td>
      <td>${escapeHtml(r.ambiente ?? '—')}</td>
      <td>${badge(r.situacao, situacaoBadge(r.situacao).replace('badge-', 'rp-s-'))}</td>
    </tr>`).join('');
  return `<table class="rp-table">
    <thead><tr><th>Hostname</th><th>Time</th><th>Domínio</th><th>Vertical</th><th>Componentes</th>
    <th>Tecnologias</th><th>WebLogic</th><th>SO</th><th>Saúde SO</th><th>Java</th><th>Ambiente</th><th>Situação</th></tr></thead>
    <tbody>${body}</tbody></table>`;
}

const REPORT_CSS = `
  .rp-root { width: 1320px; background: #FFFFFF; color: #16241B; font-family: Inter, Arial, sans-serif; padding: 28px 32px; }
  .rp-head { display: flex; justify-content: space-between; align-items: flex-start; border-bottom: 3px solid #3FA110; padding-bottom: 14px; margin-bottom: 16px; }
  .rp-title { font-family: Archivo, Arial, sans-serif; font-size: 22px; font-weight: 800; color: #146E37; margin: 0; }
  .rp-sub { font-size: 12px; color: #47584D; margin-top: 4px; }
  .rp-filtros { font-size: 12px; margin: 0 0 16px; color: #16241B; }
  .rp-filtros .chip { display: inline-block; background: #D7E6C8; color: #146E37; border-radius: 99px; padding: 2px 10px; margin: 2px 4px 2px 0; }
  .rp-kpis { display: grid; grid-template-columns: repeat(6, 1fr); gap: 10px; margin-bottom: 18px; }
  .rp-kpi { border: 1px solid #E1E9DD; border-left: 4px solid #3FA110; border-radius: 8px; padding: 10px; }
  .rp-kpi-n { font-family: Archivo, Arial, sans-serif; font-size: 24px; font-weight: 800; }
  .rp-kpi-l { font-size: 10px; text-transform: uppercase; color: #47584D; letter-spacing: .04em; }
  .rp-charts { display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-bottom: 18px; }
  .rp-chart { border: 1px solid #E1E9DD; border-radius: 8px; padding: 10px; }
  .rp-chart h3 { font-size: 11px; text-transform: uppercase; color: #146E37; margin: 0 0 6px; font-family: Archivo, Arial, sans-serif; }
  .rp-chart img { width: 100%; display: block; }
  .rp-table { width: 100%; border-collapse: collapse; font-size: 11px; }
  .rp-table th { text-align: left; font-size: 9.5px; text-transform: uppercase; color: #146E37; border-bottom: 2px solid #D7E6C8; padding: 6px; font-family: Archivo, Arial, sans-serif; }
  .rp-table td { padding: 5px 6px; border-bottom: 1px solid #EDF2EA; vertical-align: top; }
  .rp-mono { font-family: 'JetBrains Mono', monospace; font-size: 10.5px; }
  .rp-badge { padding: 1px 6px; border-radius: 5px; font-size: 10px; white-space: nowrap; }
  .rp-ok { background: #D7E6C8; color: #146E37; } .rp-warn { background: #FFF3C4; color: #7a5b00; }
  .rp-eol { background: #FBE3DD; color: #C7351B; }
  .rp-s-lig { background: #D7E6C8; color: #146E37; } .rp-s-des { background: #E1E9DD; color: #47584D; }
  .rp-s-rem { background: #FBE3DD; color: #C7351B; } .rp-s-neutral { background: #E1E9DD; color: #47584D; }
  .rp-foot { margin-top: 14px; font-size: 10px; color: #47584D; text-align: center; }
`;

function buildReport(rows) {
  const filtros = describeFilters();
  const charts = getExploreChartImages(); // gráficos da visão filtrada
  const wrap = document.createElement('div');
  wrap.style.cssText = 'position: fixed; left: -12000px; top: 0; z-index: -1;';
  wrap.innerHTML = `
    <style>${REPORT_CSS}</style>
    <div class="rp-root" id="rp-root">
      <div class="rp-head">
        <div>
          <h1 class="rp-title">Inventário de Hosts — ECER &amp; DCPER</h1>
          <div class="rp-sub">Gerado em ${new Date().toLocaleString('pt-BR')} · ${rows.length} host(s) na visão atual</div>
        </div>
      </div>
      <p class="rp-filtros">${filtros.length
        ? 'Filtros aplicados: ' + filtros.map(f => `<span class="chip">${escapeHtml(f)}</span>`).join('')
        : 'Sem filtros — inventário completo.'}</p>
      <div class="rp-kpis">${kpiHtml(rows)}</div>
      <div class="rp-charts">${charts.map(c =>
        `<div class="rp-chart"><h3>${escapeHtml(c.title)}</h3><img src="${c.dataUrl}" alt=""></div>`).join('')}</div>
      ${tableHtml(rows)}
      <div class="rp-foot">Inventário de máquinas · infraestrutura — aplicações core e crédito</div>
    </div>`;
  document.body.appendChild(wrap);
  return wrap;
}

async function renderCanvas(rows) {
  await loadScript(CDN.html2canvas);
  const wrap = buildReport(rows);
  try {
    // scale fixo em 2: nitidez boa e custo previsível também no celular
    return await window.html2canvas(wrap.querySelector('#rp-root'), {
      scale: 2, backgroundColor: '#FFFFFF', logging: false, useCORS: true,
    });
  } finally {
    wrap.remove();
  }
}

export async function exportPng(rows) {
  const canvas = await renderCanvas(rows);
  return new Promise((resolve, reject) => {
    canvas.toBlob((blob) => {
      if (!blob) return reject(new Error('Falha ao gerar a imagem.'));
      const a = document.createElement('a');
      a.href = URL.createObjectURL(blob);
      a.download = exportFilename('png');
      a.click();
      URL.revokeObjectURL(a.href);
      resolve();
    }, 'image/png');
  });
}

export async function exportPdf(rows) {
  await loadScript(CDN.jspdf);
  const canvas = await renderCanvas(rows);
  const { jsPDF } = window.jspdf;

  // A4 retrato; fatiamos o canvas alto em páginas
  const pdf = new jsPDF({ unit: 'mm', format: 'a4', orientation: 'portrait' });
  const pageW = pdf.internal.pageSize.getWidth();
  const pageH = pdf.internal.pageSize.getHeight();
  const margin = 8;
  const imgW = pageW - margin * 2;
  const pxPerMm = canvas.width / imgW;
  const pagePx = Math.floor((pageH - margin * 2) * pxPerMm);

  const slice = document.createElement('canvas');
  const sctx = slice.getContext('2d');
  slice.width = canvas.width;

  for (let y = 0, page = 0; y < canvas.height; y += pagePx, page++) {
    const h = Math.min(pagePx, canvas.height - y);
    slice.height = h;
    sctx.fillStyle = '#FFFFFF';
    sctx.fillRect(0, 0, slice.width, h);
    sctx.drawImage(canvas, 0, y, canvas.width, h, 0, 0, canvas.width, h);
    if (page > 0) pdf.addPage();
    pdf.addImage(slice.toDataURL('image/jpeg', 0.92), 'JPEG', margin, margin, imgW, h / pxPerMm);
  }
  pdf.save(exportFilename('pdf'));
}
