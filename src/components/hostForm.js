// ============================================================
// Formulário de host (modal) — criação e edição com validação
// ============================================================
import { escapeHtml } from '../utils/helpers.js';
import { saveHost, hostnameExists } from '../services/api.js';

let editingId = null;
let onSavedCb = null;

const $ = (id) => document.getElementById(id);

export function initHostForm(onSaved) {
  onSavedCb = onSaved;
  $('btn-save-host').addEventListener('click', submit);

  // Auto-sugere família a partir da versão digitada
  $('h-versao-so').addEventListener('input', () => {
    const v = $('h-versao-so').value.toLowerCase();
    if (v.startsWith('redhat')) $('h-tipo-so').value = 'RHEL';
    else if (v.startsWith('centos')) $('h-tipo-so').value = 'CentOS';
    else if (v.startsWith('rocky')) $('h-tipo-so').value = 'Rocky';
  });
}

export function populateFormLookups(lookups, hosts) {
  $('h-time').innerHTML = lookups.times.map(t =>
    `<option value="${escapeHtml(t.sigla)}">${escapeHtml(t.sigla)}</option>`).join('');
  const dl = (id, values) => $(id).innerHTML =
    values.map(v => `<option value="${escapeHtml(v)}">`).join('');
  dl('dl-dominios', lookups.dominios.map(d => d.nome));
  dl('dl-negocios', lookups.negocios.map(n => n.nome));
  dl('dl-tecs', lookups.tecnologias.map(t => t.nome));
  dl('dl-so', [...new Set(hosts.map(h => h.versao_so).filter(Boolean))].sort());
}

export function openHostForm(host = null) {
  editingId = host?.id ?? null;
  $('modal-host-title').textContent = host ? `Editar ${host.hostname}` : 'Novo host';
  $('h-hostname').value = host?.hostname ?? '';
  $('h-time').value = host?.time ?? $('h-time').options[0]?.value ?? '';
  $('h-dominio').value = host?.dominio ?? '';
  $('h-negocio').value = host?.negocio ?? '';
  $('h-tec').value = (host?.tecnologias ?? []).join(', ');
  $('h-versao-so').value = host?.versao_so ?? '';
  $('h-tipo-so').value = host?.tipo_so ?? '';
  $('h-release').value = host?.release ?? '';
  $('h-java').value = host?.versao_java ?? '';
  $('h-ambiente').value = host?.ambiente ?? 'PROD';
  $('h-situacao').value = host?.situacao ?? 'Ligado';
  $('h-criticidade').value = host?.criticidade ?? '';
  $('h-obs').value = host?.observacao ?? '';
  hideError();
  $('modal-host').classList.remove('hidden');
  $('h-hostname').focus();
}

function showError(msg) {
  const el = $('form-error');
  el.textContent = msg;
  el.classList.remove('hidden');
}
function hideError() { $('form-error').classList.add('hidden'); }

async function submit() {
  hideError();
  const form = {
    hostname: $('h-hostname').value.trim(),
    time: $('h-time').value,
    dominio: $('h-dominio').value.trim(),
    negocio: $('h-negocio').value.trim(),
    tecnologias: $('h-tec').value.split(',').map(s => s.trim()).filter(Boolean),
    versao_so: $('h-versao-so').value.trim(),
    tipo_so: $('h-tipo-so').value,
    release: $('h-release').value.trim(),
    versao_java: $('h-java').value.trim(),
    ambiente: $('h-ambiente').value,
    situacao: $('h-situacao').value,
    criticidade: $('h-criticidade').value,
    observacao: $('h-obs').value.trim(),
  };

  // Validações
  if (!form.hostname) return showError('Hostname é obrigatório.');
  if (!/^[a-zA-Z0-9._-]+$/.test(form.hostname))
    return showError('Hostname inválido: use apenas letras, números, ponto, hífen e underscore.');
  if (!form.time) return showError('Time é obrigatório.');

  const btn = $('btn-save-host');
  btn.disabled = true;
  btn.textContent = 'Salvando…';
  try {
    if (await hostnameExists(form.hostname, editingId))
      return showError(`Já existe um host com o hostname "${form.hostname}".`);
    await saveHost(form, editingId);
    $('modal-host').classList.add('hidden');
    onSavedCb?.(editingId ? 'atualizado' : 'criado');
  } catch (err) {
    showError(err.demo ? err.message : `Erro ao salvar: ${err.message}`);
  } finally {
    btn.disabled = false;
    btn.textContent = 'Salvar host';
  }
}
