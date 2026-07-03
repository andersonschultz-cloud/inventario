import * as api from './services/api.js';
import * as auth from './services/auth.js';
import { initFilters, applyFilters, populateFilters, renderSummary, clearAll, setFilters } from './components/filters.js';
import { renderDashboard } from './components/dashboard.js';
import { renderExploreAnalytics } from './components/exploreAnalytics.js';
import { initTable, renderTable, resetPage } from './components/table.js';
import { initHostForm, openHostForm, populateFormLookups } from './components/hostForm.js';
import { initTopology, renderTopology } from './components/topology.js';
import { renderAdmin } from './components/admin.js';
import { exportCsv, enrichHosts } from './utils/helpers.js';
import { exportPng, exportPdf, exportFilename } from './components/export.js';
import { initBackground } from './components/background.js';
import { initHeroOrbit } from './components/orbit.js';
import { initRouter, navigate, currentRoute } from './router.js';

let hosts = [];
let rawHosts = [];
let components = [];
let pending = [];
let lookups = { times: [], tecnologias: [], dominios: [], negocios: [] };
let qualitySummary = { total_importados: 0, associados: 0, pendentes: 0, ambiguos: 0, invalidos: 0 };
let dataReady = false;

const $ = id => document.getElementById(id);

function toast(message, type = 'ok') {
  const element = $('toast');
  element.textContent = message;
  element.className = `toast ${type}`;
  setTimeout(() => element.classList.add('hidden'), 3600);
}

function currentRows() { return applyFilters(hosts); }

function pendingCount() {
  return Number(qualitySummary.pendentes ?? 0) + Number(qualitySummary.ambiguos ?? 0) + Number(qualitySummary.invalidos ?? 0);
}

function renderExplore() {
  const rows = currentRows();
  renderExploreAnalytics(rows, hosts.length, filters => setFilters(filters));
  renderTable(rows, { editable: auth.canEdit(), deletable: auth.canDelete() });
  renderSummary(rows.length, hosts.length);
}

function renderCurrentPage() {
  if (!dataReady) return;
  const route = currentRoute();
  if (route === 'dashboard') {
    requestAnimationFrame(() => renderDashboard(hosts, components, pendingCount(), (filters, target = 'explorar') => navigate(target, filters)));
  } else if (route === 'explorar') {
    renderExplore();
  } else if (route === 'topologia') {
    renderTopology(hosts, components, filters => navigate('explorar', filters));
  } else if (route === 'admin' && auth.isAdmin()) {
    renderAdmin({
      pending,
      domainLookups: lookups.dominios,
      associate: async (items, domainId) => {
        try {
          for (const item of items) await api.associatePendingImport(item.id, domainId);
          toast(`${items.length} registro(s) associado(s) com sucesso.`);
          await reloadData();
        } catch (error) {
          toast(`Erro ao associar: ${error.message}`, 'err');
          throw error;
        }
      },
    });
  }
}

async function reloadData() {
  const [hostData, componentData, lookupData, qualityData] = await Promise.all([
    api.fetchHosts(), api.fetchComponents(), api.fetchLookups(), api.fetchQualitySummary(),
  ]);
  rawHosts = hostData;
  components = componentData;
  lookups = lookupData;
  qualitySummary = qualityData;
  hosts = enrichHosts(rawHosts, components);
  pending = auth.isAdmin() ? await api.fetchPendingImports() : [];
  populateFilters(hosts);
  populateFormLookups(lookups, hosts);
  dataReady = true;
  renderCurrentPage();
}

function setupModeBadge() {
  const badge = $('mode-badge');
  if (api.MODE === 'demo') {
    badge.textContent = 'DEMO';
    badge.classList.add('demo');
    badge.title = 'Configure o Supabase para habilitar escrita e associações administrativas.';
    $('btn-auth').classList.add('hidden');
  } else {
    badge.textContent = 'SUPABASE';
    badge.title = 'Dados carregados do Supabase';
  }
}

function updatePermissionUi() {
  const logged = Boolean(auth.getUser());
  const profile = $('btn-auth');
  const role = logged ? auth.getRole() : 'viewer';
  const title = profile?.querySelector('.profile-copy strong');
  const subtitle = profile?.querySelector('.profile-copy small');
  const avatar = profile?.querySelector('.profile-avatar');
  if (title) title.textContent = logged ? role.charAt(0).toUpperCase() + role.slice(1) : 'Acesso restrito';
  if (subtitle) subtitle.textContent = logged ? 'Clique para sair' : 'Entrar na plataforma';
  if (avatar) avatar.textContent = logged ? role.slice(0, 2).toUpperCase() : 'AD';
  $('btn-add').classList.toggle('hidden', !auth.canEdit());
  $('nav-admin').classList.toggle('hidden', !auth.isAdmin());
  if (currentRoute() === 'admin' && !auth.isAdmin()) navigate('dashboard');
}

function setupAuthUi() {
  auth.onAuthChange(async () => {
    updatePermissionUi();
    if (dataReady) {
      pending = auth.isAdmin() ? await api.fetchPendingImports() : [];
      renderCurrentPage();
    }
  });
  $('btn-auth').addEventListener('click', async () => {
    if (auth.getUser()) {
      await auth.signOut();
      toast('Sessão encerrada.');
    } else {
      $('modal-auth').classList.remove('hidden');
    }
  });
  $('btn-login').addEventListener('click', async () => {
    try {
      await auth.signIn($('auth-email').value.trim(), $('auth-pass').value);
      $('modal-auth').classList.add('hidden');
      toast('Login efetuado.');
    } catch (error) {
      $('auth-error').textContent = `Falha no login: ${error.message}`;
      $('auth-error').classList.remove('hidden');
    }
  });
  $('btn-signup').addEventListener('click', async () => {
    try {
      await auth.signUp($('auth-email').value.trim(), $('auth-pass').value);
      $('auth-error').classList.add('hidden');
      toast('Conta criada. Confirme o e-mail e solicite a permissão necessária.');
    } catch (error) {
      $('auth-error').textContent = `Falha no cadastro: ${error.message}`;
      $('auth-error').classList.remove('hidden');
    }
  });
}

function setupModals() {
  document.querySelectorAll('.modal').forEach(modal => modal.addEventListener('click', event => {
    if (event.target === modal || event.target.hasAttribute('data-close')) modal.classList.add('hidden');
  }));
  document.addEventListener('keydown', event => {
    if (event.key === 'Escape') document.querySelectorAll('.modal').forEach(modal => modal.classList.add('hidden'));
  });
}

function setupNavigation() {
  const sidebar = $('sidebar');
  const backdrop = $('sidebar-backdrop');
  const closeSidebar = () => {
    sidebar?.classList.remove('open');
    backdrop?.classList.add('hidden');
    $('btn-menu').setAttribute('aria-expanded', 'false');
  };
  const openSidebar = () => {
    sidebar?.classList.add('open');
    backdrop?.classList.remove('hidden');
    $('btn-menu').setAttribute('aria-expanded', 'true');
  };

  $('btn-menu').addEventListener('click', () => sidebar?.classList.contains('open') ? closeSidebar() : openSidebar());
  backdrop?.addEventListener('click', closeSidebar);
  $('main-nav').addEventListener('click', closeSidebar);

  document.querySelectorAll('[data-open-explore]').forEach(element => {
    const open = () => navigate('explorar');
    element.addEventListener('click', open);
    element.addEventListener('keydown', event => {
      if (event.key === 'Enter' || event.key === ' ') open();
    });
  });
  document.addEventListener('keydown', event => {
    if ((event.metaKey || event.ctrlKey) && event.key.toLowerCase() === 'k') {
      event.preventDefault();
      navigate('explorar');
      requestAnimationFrame(() => $('f-busca')?.focus());
    }
  });

  const routeTitles = {
    dashboard: 'Dashboard executivo',
    explorar: 'Explorar inventário',
    topologia: 'Topologia dos domínios',
    admin: 'Administração',
  };

  initRouter((route, params) => {
    if (route === 'admin' && !auth.isAdmin()) return navigate('dashboard');
    document.querySelectorAll('[data-page]').forEach(page => page.classList.toggle('hidden', page.dataset.page !== route));
    document.querySelectorAll('[data-route]').forEach(link => link.classList.toggle('active', link.dataset.route === route));
    $('context-actions').classList.toggle('hidden', route !== 'explorar');
    const pageTitle = $('topbar-page-title');
    if (pageTitle) pageTitle.textContent = routeTitles[route] ?? 'Inventário de infraestrutura';
    if (route === 'explorar') {
      const accepted = ['busca', 'time', 'tecnologia', 'dominio', 'componente', 'vertical', 'weblogic', 'so', 'familia', 'java', 'ambiente', 'situacao', 'atividade', 'saude_so'];
      setFilters(Object.fromEntries(accepted.map(key => [key, params[key] ?? ''])), false);
      resetPage();
    }
    closeSidebar();
    window.scrollTo({ top: 0, behavior: 'auto' });
    renderCurrentPage();
  });
}

async function handleDelete(host) {
  if (!confirm(`Remover o host "${host.hostname}" do inventário? Esta ação não pode ser desfeita.`)) return;
  try {
    await api.deleteHost(host.id);
    toast(`Host ${host.hostname} removido.`);
    await reloadData();
  } catch (error) {
    toast(`Erro ao remover: ${error.message}`, 'err');
  }
}

function setupExports() {
  $('btn-export').addEventListener('click', () => {
    const rows = currentRows();
    if (!rows.length) return toast('Nada para exportar com os filtros atuais.', 'err');
    exportCsv(rows, exportFilename('csv'));
    toast(`${rows.length} host(s) exportado(s) em CSV.`);
  });
  $('btn-print').addEventListener('click', () => {
    if (!currentRows().length) return toast('Nada para exportar com os filtros atuais.', 'err');
    $('modal-print').classList.remove('hidden');
  });
  const run = async (fn, label) => {
    const rows = currentRows();
    const buttons = [$('btn-print-png'), $('btn-print-pdf')];
    buttons.forEach(button => { button.disabled = true; });
    $('print-status').classList.remove('hidden');
    try {
      await fn(rows);
      $('modal-print').classList.add('hidden');
      toast(`${label} gerado com ${rows.length} host(s).`);
    } catch (error) {
      console.error(error);
      toast(`Erro ao gerar ${label}: ${error.message}`, 'err');
    } finally {
      buttons.forEach(button => { button.disabled = false; });
      $('print-status').classList.add('hidden');
    }
  };
  $('btn-print-png').addEventListener('click', () => run(exportPng, 'PNG'));
  $('btn-print-pdf').addEventListener('click', () => run(exportPdf, 'PDF'));
}

async function main() {
  initBackground();
  initHeroOrbit();
  setupModeBadge();
  setupModals();
  setupNavigation();
  setupAuthUi();

  await api.init();
  await auth.initAuth();

  initFilters(() => { resetPage(); renderExplore(); });
  initTable({ onEdit: host => openHostForm(host), onDelete: handleDelete });
  initTopology();
  initHostForm(async action => {
    toast(`Host ${action} com sucesso.`);
    await reloadData();
  });
  document.addEventListener('table:refresh', renderExplore);
  document.addEventListener('filters:clear', clearAll);
  $('btn-add').addEventListener('click', () => openHostForm());
  setupExports();

  await reloadData();
}

main().catch(error => {
  console.error(error);
  document.querySelector('.app-shell').innerHTML = `<section class="panel fatal-error"><h1>Falha ao inicializar</h1><p>${error.message}</p></section>`;
});
