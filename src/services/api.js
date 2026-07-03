// ============================================================
// Camada de dados — Supabase ou modo demo local
// ============================================================
import { SUPABASE_URL, SUPABASE_ANON_KEY, isConfigured } from '../config/supabase.js';
import { sanitizeHost, sanitizeComponent, normDomain, normText } from '../utils/helpers.js';

let supabase = null;
let demoHosts = [];
let demoComponents = [];
let demoImports = [];

export const MODE = isConfigured() ? 'supabase' : 'demo';

export async function init() {
  if (MODE === 'supabase') {
    const { createClient } = await import('https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm');
    supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
    return supabase;
  }
  const [hostsResponse, componentsResponse] = await Promise.all([
    fetch('data/hosts.json'),
    fetch('data/components.json').catch(() => null),
  ]);
  const rawHosts = await hostsResponse.json();
  const rawComponents = componentsResponse?.ok ? await componentsResponse.json() : [];
  demoHosts = rawHosts.map((host, index) => sanitizeHost({ id: index + 1, ...host }));
  demoImports = rawComponents.map(sanitizeComponent);
  const uniqueComponents = new Map();
  for (const component of demoImports) {
    const key = [component.status, normDomain(component.dominio ?? component.source_domain), normText(component.nome), component.versao_weblogic ?? ''].join('|');
    if (!uniqueComponents.has(key)) uniqueComponents.set(key, component);
  }
  demoComponents = [...uniqueComponents.values()];
  return null;
}

export function getClient() { return supabase; }

export async function fetchHosts() {
  if (MODE === 'demo') return demoHosts.map(host => ({ ...host }));
  const { data, error } = await supabase.from('hosts_view').select('*').order('hostname');
  if (error) throw error;
  return (data ?? []).map(sanitizeHost);
}

export async function fetchComponents() {
  if (MODE === 'demo') return demoComponents.map(component => ({ ...component }));
  const { data, error } = await supabase.from('componentes_view').select('*').order('dominio').order('nome');
  if (error) {
    // Permite que a v3 continue funcionando antes da migration.
    if (['42P01', 'PGRST205'].includes(error.code)) return [];
    throw error;
  }
  return (data ?? []).map(component => sanitizeComponent({ ...component, status: 'matched' }));
}

export async function fetchQualitySummary() {
  if (MODE === 'demo') {
    return {
      total_importados: demoImports.length,
      associados: demoImports.filter(item => item.status === 'matched').length,
      pendentes: demoImports.filter(item => item.status === 'pending').length,
      ambiguos: demoImports.filter(item => item.status === 'ambiguous').length,
      invalidos: demoImports.filter(item => item.status === 'invalid').length,
    };
  }
  const { data, error } = await supabase.from('import_quality_summary_view').select('*').maybeSingle();
  if (error) {
    if (['42P01', 'PGRST205'].includes(error.code)) return { total_importados: 0, associados: 0, pendentes: 0, ambiguos: 0, invalidos: 0 };
    throw error;
  }
  return data ?? { total_importados: 0, associados: 0, pendentes: 0, ambiguos: 0, invalidos: 0 };
}

export async function fetchPendingImports() {
  if (MODE === 'demo') {
    return demoImports.filter(component => component.status !== 'matched').map(component => ({
      id: component.id,
      source_domain: component.source_domain,
      source_domain_raw: component.source_domain_raw,
      vertical_business: component.vertical_negocio,
      component_name: component.nome,
      declared_host_count: component.quantidade_hosts_declarada,
      weblogic_version: component.versao_weblogic,
      status: component.status,
      error_message: 'Domínio não encontrado no inventário demo',
      source_row: component.source_row,
    }));
  }
  const { data, error } = await supabase
    .from('domain_component_imports')
    .select('id, source_domain, source_domain_raw, vertical_business, component_name, declared_host_count, weblogic_version, status, error_message, source_row')
    .neq('status', 'matched')
    .order('source_domain')
    .order('source_row');
  if (error) {
    if (['42501', '42P01', 'PGRST205'].includes(error.code)) return [];
    throw error;
  }
  return data ?? [];
}

export async function fetchLookups() {
  if (MODE === 'demo') {
    const unique = values => [...new Set(values.filter(Boolean))].sort((a, b) => a.localeCompare(b, 'pt-BR'));
    return {
      times: unique(demoHosts.map(host => host.time)).map((sigla, index) => ({ id: index + 1, sigla })),
      tecnologias: unique(demoHosts.flatMap(host => host.tecnologias)).map((nome, index) => ({ id: index + 1, nome })),
      dominios: unique(demoHosts.map(host => host.dominio)).map((nome, index) => ({ id: index + 1, nome, nome_normalizado: normDomain(nome) })),
      negocios: unique(demoHosts.map(host => host.negocio)).map((nome, index) => ({ id: index + 1, nome })),
    };
  }
  const [times, tecnologias, negocios] = await Promise.all([
    supabase.from('times').select('id, sigla').order('sigla'),
    supabase.from('tecnologias').select('id, nome').order('nome'),
    supabase.from('negocios').select('id, nome').order('nome'),
  ]);
  let dominios = await supabase.from('dominios').select('id, nome, nome_normalizado').order('nome');
  if (dominios.error?.code === '42703' || /nome_normalizado/i.test(dominios.error?.message ?? '')) {
    dominios = await supabase.from('dominios').select('id, nome').order('nome');
  }
  for (const result of [times, tecnologias, dominios, negocios]) {
    if (result.error) throw result.error;
  }
  return {
    times: times.data ?? [], tecnologias: tecnologias.data ?? [],
    dominios: dominios.data ?? [], negocios: negocios.data ?? [],
  };
}

function assertWritable() {
  if (MODE === 'demo') {
    const error = new Error('Modo demo: configure o Supabase para habilitar edição.');
    error.demo = true;
    throw error;
  }
}

async function ensureLookup(table, column, value) {
  if (!value) return null;
  const { data: found, error: findError } = await supabase.from(table).select('id').eq(column, value).maybeSingle();
  if (findError) throw findError;
  if (found) return found.id;
  const { data, error } = await supabase.from(table).insert({ [column]: value }).select('id').single();
  if (error) throw error;
  return data.id;
}

export async function hostnameExists(hostname, ignoreId = null) {
  if (MODE === 'demo') {
    return demoHosts.some(host => host.hostname.toLowerCase() === hostname.toLowerCase() && host.id !== ignoreId);
  }
  let query = supabase.from('hosts').select('id').ilike('hostname', hostname);
  if (ignoreId) query = query.neq('id', ignoreId);
  const { data, error } = await query;
  if (error) throw error;
  return (data ?? []).length > 0;
}

export async function saveHost(form, editingId = null) {
  assertWritable();
  const { data: timeRows, error: timeError } = await supabase.from('times').select('id').eq('sigla', form.time);
  if (timeError) throw timeError;
  const dominioId = await ensureLookup('dominios', 'nome', form.dominio);
  const negocioId = await ensureLookup('negocios', 'nome', form.negocio);
  const payload = {
    hostname: form.hostname,
    time_id: timeRows?.[0]?.id ?? null,
    dominio_id: dominioId,
    negocio_id: negocioId,
    versao_so: form.versao_so || null,
    tipo_so: form.tipo_so || null,
    release: form.release || null,
    versao_java: form.versao_java || null,
    ambiente: form.ambiente || 'PROD',
    situacao: form.situacao || 'Ligado',
    criticidade: form.criticidade || null,
    observacao: form.observacao || null,
  };

  let hostId;
  if (editingId) {
    const { error } = await supabase.from('hosts').update(payload).eq('id', editingId);
    if (error) throw error;
    hostId = editingId;
    const { error: clearError } = await supabase.from('host_tecnologias').delete().eq('host_id', hostId);
    if (clearError) throw clearError;
  } else {
    const { data, error } = await supabase.from('hosts').insert(payload).select('id').single();
    if (error) throw error;
    hostId = data.id;
  }

  for (const name of form.tecnologias) {
    const technologyId = await ensureLookup('tecnologias', 'nome', name);
    if (!technologyId) continue;
    const { error } = await supabase.from('host_tecnologias').insert({ host_id: hostId, tecnologia_id: technologyId });
    if (error && error.code !== '23505') throw error;
  }
  return hostId;
}

export async function deleteHost(id) {
  assertWritable();
  const { error } = await supabase.from('hosts').delete().eq('id', id);
  if (error) throw error;
}

export async function associatePendingImport(importId, domainId) {
  assertWritable();
  const { data, error } = await supabase.rpc('associate_component_import', {
    p_import_id: Number(importId),
    p_domain_id: Number(domainId),
  });
  if (error) throw error;
  return data;
}
