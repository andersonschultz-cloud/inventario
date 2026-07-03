import { escapeHtml, normDomain, plural } from '../utils/helpers.js';

let pendingItems = [];
let domains = [];
let onAssociate = null;

function groupPending() {
  const map = new Map();
  for (const item of pendingItems) {
    const key = normDomain(item.source_domain) || `row-${item.id}`;
    if (!map.has(key)) map.set(key, { source_domain: item.source_domain, items: [] });
    map.get(key).items.push(item);
  }
  return [...map.values()].sort((a, b) => String(a.source_domain).localeCompare(String(b.source_domain), 'pt-BR'));
}

function renderGroup(group, index) {
  const first = group.items[0];
  return `
    <article class="pending-card" data-group-index="${index}">
      <div class="pending-head">
        <div>
          <span class="eyebrow">Domínio de origem</span>
          <h3 class="mono">${escapeHtml(group.source_domain ?? '(ausente)')}</h3>
          <p>${plural(group.items.length, 'componente')} · ${escapeHtml(first.vertical_business ?? 'Vertical não informada')}</p>
        </div>
        <span class="status-pill pending">${escapeHtml(first.status ?? 'pending')}</span>
      </div>
      <details>
        <summary>Ver componentes e diagnóstico</summary>
        <div class="pending-components">${group.items.map(item => `
          <div><strong>${escapeHtml(item.component_name)}</strong><span>WebLogic ${escapeHtml(item.weblogic_version ?? '—')} · linha ${item.source_row ?? '—'}</span></div>`).join('')}</div>
        <p class="form-error">${escapeHtml(first.error_message ?? 'Sem correspondência normalizada segura.')}</p>
      </details>
      <div class="association-row">
        <label>Associar ao domínio existente
          <select class="pending-domain-select">
            <option value="">Selecione o domínio correto</option>
            ${domains.map(domain => `<option value="${domain.id}">${escapeHtml(domain.nome)}</option>`).join('')}
          </select>
        </label>
        <button type="button" class="btn btn-primary pending-associate">Associar ${group.items.length > 1 ? 'todos' : ''}</button>
      </div>
    </article>`;
}

function bind() {
  document.querySelectorAll('.pending-associate').forEach(button => button.addEventListener('click', async () => {
    const card = button.closest('.pending-card');
    const group = groupPending()[Number(card.dataset.groupIndex)];
    const domainId = card.querySelector('.pending-domain-select').value;
    if (!domainId) return;
    button.disabled = true;
    button.textContent = 'Associando…';
    try {
      await onAssociate?.(group.items, Number(domainId));
    } finally {
      button.disabled = false;
      button.textContent = 'Associar';
    }
  }));
}

function render() {
  const container = document.getElementById('pending-list');
  const groups = groupPending();
  document.getElementById('admin-pending-count').textContent = `${plural(pendingItems.length, 'registro')} em ${plural(groups.length, 'domínio')}`;
  container.innerHTML = groups.length
    ? groups.map(renderGroup).join('')
    : '<div class="empty-state success-empty"><div class="empty-icon">✓</div><p><strong>Nenhuma associação pendente.</strong></p><p class="muted">Todos os componentes importados possuem domínio associado.</p></div>';
  bind();
}

export function renderAdmin({ pending, domainLookups, associate }) {
  pendingItems = pending ?? [];
  domains = domainLookups ?? [];
  onAssociate = associate;
  render();
}
