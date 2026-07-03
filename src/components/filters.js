import { debounce, escapeHtml, countBy, searchRows, hostActivity, soRisk } from '../utils/helpers.js';

export const VAZIO = '__vazio__';

const state = {
  busca: '', time: '', tecnologia: '', dominio: '', componente: '', vertical: '',
  weblogic: '', so: '', familia: '', java: '', ambiente: '', situacao: '', atividade: '', saude_so: '',
};

const controls = {
  busca: 'f-busca', time: 'f-time', tecnologia: 'f-tec', dominio: 'f-dominio',
  componente: 'f-componente', vertical: 'f-vertical', weblogic: 'f-weblogic',
  so: 'f-so', familia: 'f-familia', java: 'f-java', ambiente: 'f-ambiente',
  situacao: 'f-situacao', atividade: 'f-atividade', saude_so: 'f-saude-so',
};

let onChangeCallback = null;

export function getFilterState() { return { ...state }; }
export function hasActiveFilters() { return Object.values(state).some(Boolean); }

export function describeFilters() {
  const labels = {
    busca: 'busca', time: 'time', tecnologia: 'tecnologia', dominio: 'domínio',
    componente: 'componente', vertical: 'vertical', weblogic: 'WebLogic',
    so: 'versão SO', familia: 'família SO', java: 'Java', ambiente: 'ambiente',
    situacao: 'situação', atividade: 'estado operacional', saude_so: 'saúde do SO',
  };
  const displayValues = {
    atividade: { ligado: 'Ligados', desativado: 'Desativados', sem_status: 'Sem status' },
    saude_so: { ok: 'Suportado', warn: 'Suporte estendido', eol: 'Fora de suporte', neutral: 'Não classificado' },
  };
  return Object.entries(state)
    .filter(([, value]) => value)
    .map(([key, value]) => `${labels[key]}: ${value === VAZIO ? '(não informado)' : (displayValues[key]?.[value] ?? value)}`);
}

function fieldMatch(value, filter) {
  if (!filter) return true;
  if (filter === VAZIO) return value == null || value === '';
  return (value ?? '') === filter;
}

function arrayMatch(values, filter) {
  if (!filter) return true;
  if (filter === VAZIO) return !(values ?? []).length;
  return (values ?? []).includes(filter);
}

export function applyFilters(rows) {
  const structured = rows.filter(row =>
    fieldMatch(row.time, state.time)
    && arrayMatch(row.tecnologias, state.tecnologia)
    && fieldMatch(row.dominio, state.dominio)
    && arrayMatch(row.componentes, state.componente)
    && fieldMatch(row.vertical_negocio, state.vertical)
    && arrayMatch(row.versoes_weblogic, state.weblogic)
    && fieldMatch(row.versao_so, state.so)
    && fieldMatch(row.tipo_so, state.familia)
    && fieldMatch(row.versao_java, state.java)
    && fieldMatch(row.ambiente, state.ambiente)
    && fieldMatch(row.situacao, state.situacao)
    && (!state.atividade || hostActivity(row) === state.atividade)
    && (!state.saude_so || soRisk(row.versao_so) === state.saude_so));
  return searchRows(structured, state.busca);
}

function fillSelect(id, values, current, hasEmpty) {
  const select = document.getElementById(id);
  if (!select) return;
  const placeholder = select.options[0]?.outerHTML ?? '<option value="">Todos</option>';
  const options = values.map(value =>
    `<option value="${escapeHtml(value)}" ${value === current ? 'selected' : ''}>${escapeHtml(value)}</option>`);
  if (hasEmpty) options.push(`<option value="${VAZIO}" ${current === VAZIO ? 'selected' : ''}>(não informado)</option>`);
  select.innerHTML = placeholder + options.join('');
}

export function populateFilters(rows) {
  const unique = fn => countBy(rows, fn).map(pair => pair[0])
    .sort((a, b) => String(a).localeCompare(String(b), 'pt-BR', { numeric: true }));
  const hasEmpty = fn => rows.some(row => {
    const value = fn(row);
    return value == null || value === '' || (Array.isArray(value) && !value.length);
  });

  fillSelect('f-time', unique(row => row.time), state.time, hasEmpty(row => row.time));
  fillSelect('f-tec', unique(row => row.tecnologias ?? []), state.tecnologia, hasEmpty(row => row.tecnologias));
  fillSelect('f-dominio', unique(row => row.dominio), state.dominio, hasEmpty(row => row.dominio));
  fillSelect('f-componente', unique(row => row.componentes ?? []), state.componente, hasEmpty(row => row.componentes));
  fillSelect('f-vertical', unique(row => row.vertical_negocio), state.vertical, hasEmpty(row => row.vertical_negocio));
  fillSelect('f-weblogic', unique(row => row.versoes_weblogic ?? []), state.weblogic, hasEmpty(row => row.versoes_weblogic));
  fillSelect('f-so', unique(row => row.versao_so), state.so, hasEmpty(row => row.versao_so));
  fillSelect('f-familia', unique(row => row.tipo_so), state.familia, hasEmpty(row => row.tipo_so));
  fillSelect('f-java', unique(row => row.versao_java), state.java, hasEmpty(row => row.versao_java));
  fillSelect('f-ambiente', unique(row => row.ambiente), state.ambiente, hasEmpty(row => row.ambiente));
  fillSelect('f-situacao', unique(row => row.situacao), state.situacao, hasEmpty(row => row.situacao));
}

export function renderSummary(filteredCount, totalCount) {
  const chips = describeFilters().map(description => `<span class="chip">${escapeHtml(description)}</span>`);
  const count = `<strong>${filteredCount}</strong> de ${totalCount} hosts`;
  const target = document.getElementById('filter-summary');
  target.innerHTML = chips.length
    ? `${count} · ${chips.join(' ')} <button id="chip-limpar" class="chip chip-btn" type="button">✕ limpar tudo</button>`
    : count;
  document.getElementById('chip-limpar')?.addEventListener('click', clearAll);
}

export function setFilters(values = {}, trigger = true) {
  for (const key of Object.keys(state)) {
    if (Object.hasOwn(values, key)) state[key] = values[key] ?? '';
  }
  for (const [key, id] of Object.entries(controls)) {
    const control = document.getElementById(id);
    if (control) control.value = state[key];
  }
  if (trigger) onChangeCallback?.();
}

export function clearAll() {
  setFilters(Object.fromEntries(Object.keys(state).map(key => [key, ''])));
}

export function initFilters(onChange) {
  onChangeCallback = onChange;
  document.getElementById('f-busca').addEventListener('input', debounce(event => {
    state.busca = event.target.value.trim();
    onChange();
  }, 180));
  for (const [key, id] of Object.entries(controls)) {
    if (key === 'busca') continue;
    document.getElementById(id)?.addEventListener('change', event => {
      state[key] = event.target.value;
      onChange();
    });
  }
  document.getElementById('btn-limpar').addEventListener('click', clearAll);
}
