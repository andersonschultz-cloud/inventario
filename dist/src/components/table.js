import { escapeHtml, soRisk, soRiskLabel, situacaoBadge } from '../utils/helpers.js';

const PAGE_SIZE = 25;
let page = 1;
let sortKey = 'hostname';
let sortDesc = false;
let onEditCallback = null;
let onDeleteCallback = null;

export function initTable({ onEdit, onDelete }) {
  onEditCallback = onEdit;
  onDeleteCallback = onDelete;
  document.querySelectorAll('#hosts-table thead th[data-sort]').forEach(header => {
    header.addEventListener('click', () => {
      const key = header.dataset.sort;
      if (sortKey === key) sortDesc = !sortDesc;
      else { sortKey = key; sortDesc = false; }
      document.dispatchEvent(new CustomEvent('table:refresh'));
    });
  });
  document.getElementById('pg-prev').addEventListener('click', () => { page -= 1; document.dispatchEvent(new CustomEvent('table:refresh')); });
  document.getElementById('pg-next').addEventListener('click', () => { page += 1; document.dispatchEvent(new CustomEvent('table:refresh')); });
}

export function resetPage() { page = 1; }

function valueForSort(row, key) {
  if (key === 'component_count') return Number(row.component_count ?? 0);
  if (key === 'so_health') return soRisk(row.versao_so);
  return (row[key] ?? '').toString().toLowerCase();
}

export function renderTable(rows, { editable, deletable }) {
  const sorted = [...rows].sort((a, b) => {
    const first = valueForSort(a, sortKey);
    const second = valueForSort(b, sortKey);
    return (first < second ? -1 : first > second ? 1 : 0) * (sortDesc ? -1 : 1);
  });
  const pages = Math.max(1, Math.ceil(sorted.length / PAGE_SIZE));
  page = Math.min(Math.max(1, page), pages);
  const visible = sorted.slice((page - 1) * PAGE_SIZE, page * PAGE_SIZE);

  document.querySelectorAll('#hosts-table thead th[data-sort]').forEach(header => {
    header.classList.toggle('sorted', header.dataset.sort === sortKey);
    header.classList.toggle('desc', header.dataset.sort === sortKey && sortDesc);
  });

  const riskCss = { ok: 'badge-so-ok', warn: 'badge-so-warn', eol: 'badge-so-eol', neutral: 'badge-neutral' };
  const soBadge = value => {
    if (!value) return '<span class="badge badge-neutral">—</span>';
    const risk = soRisk(value);
    return `<span class="badge ${riskCss[risk]}">${escapeHtml(value)}</span>`;
  };
  const soHealthBadge = value => {
    const risk = soRisk(value);
    return `<span class="badge ${riskCss[risk]}">${escapeHtml(soRiskLabel(risk))}</span>`;
  };

  const tbody = document.getElementById('hosts-tbody');
  if (!visible.length) {
    tbody.innerHTML = `<tr class="empty-row"><td colspan="12"><div class="empty-state">
      <div class="empty-icon">⌕</div><p><strong>Nenhum host encontrado.</strong></p>
      <p class="muted">Ajuste a busca ou <button type="button" class="link-btn" id="empty-limpar">limpe os filtros</button>.</p>
    </div></td></tr>`;
    document.getElementById('empty-limpar')?.addEventListener('click', () => document.dispatchEvent(new CustomEvent('filters:clear')));
  } else {
    tbody.innerHTML = visible.map(row => `
      <tr data-id="${row.id}">
        <td class="mono cell-host"><strong>${escapeHtml(row.hostname)}</strong></td>
        <td data-label="Time"><span class="badge badge-neutral">${escapeHtml(row.time ?? '—')}</span></td>
        <td data-label="Domínio" class="mono">${escapeHtml(row.dominio ?? '—')}</td>
        <td data-label="Vertical">${escapeHtml(row.vertical_negocio ?? '—')}</td>
        <td data-label="Componentes"><span class="count-badge">${row.component_count ?? 0}</span></td>
        <td data-label="Tecnologias">${(row.tecnologias ?? []).slice(0, 3).map(item => `<span class="tec-tag">${escapeHtml(item)}</span>`).join('') || '—'}${(row.tecnologias ?? []).length > 3 ? `<span class="tec-more">+${row.tecnologias.length - 3}</span>` : ''}</td>
        <td data-label="WebLogic" class="mono">${escapeHtml((row.versoes_weblogic ?? []).join(', ') || '—')}</td>
        <td data-label="SO">${soBadge(row.versao_so)}</td>
        <td data-label="Saúde SO">${soHealthBadge(row.versao_so)}</td>
        <td data-label="Java" class="mono">${escapeHtml(row.versao_java ?? '—')}</td>
        <td data-label="Situação"><span class="badge ${situacaoBadge(row.situacao)}">${escapeHtml(row.situacao ?? '—')}</span></td>
        <td class="cell-actions"><div class="row-actions">
          ${editable ? '<button class="icon-btn" data-act="edit" title="Editar host" aria-label="Editar host">✎</button>' : ''}
          ${deletable ? '<button class="icon-btn danger" data-act="del" title="Remover host" aria-label="Remover host">⌫</button>' : ''}
        </div></td>
      </tr>`).join('');
  }

  tbody.querySelectorAll('button[data-act]').forEach(button => button.addEventListener('click', event => {
    const target = event.target.closest('button[data-act]');
    const id = Number(target.closest('tr').dataset.id);
    const host = rows.find(row => Number(row.id) === id);
    if (target.dataset.act === 'edit') onEditCallback?.(host);
    else onDeleteCallback?.(host);
  }));

  document.getElementById('table-count').textContent = `${sorted.length} host${sorted.length === 1 ? '' : 's'}`;
  document.getElementById('pg-info').textContent = `${page} / ${pages}`;
  document.getElementById('pg-prev').disabled = page <= 1;
  document.getElementById('pg-next').disabled = page >= pages;
}
