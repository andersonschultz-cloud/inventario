import { MODE, getClient } from './api.js';

let currentUser = null;
let currentRole = 'viewer';
const listeners = [];

export function onAuthChange(fn) { listeners.push(fn); }
function notify() { listeners.forEach(fn => fn(currentUser, currentRole)); }

export function getUser() { return currentUser; }
export function getRole() { return currentRole; }
export function isAdmin() { return MODE === 'supabase' && Boolean(currentUser) && currentRole === 'admin'; }
export function canEdit() { return MODE === 'supabase' && Boolean(currentUser) && ['editor', 'admin'].includes(currentRole); }
export function canDelete() { return isAdmin(); }

async function loadRole() {
  if (!currentUser) { currentRole = 'viewer'; return; }
  const { data, error } = await getClient().from('profiles').select('role').eq('id', currentUser.id).maybeSingle();
  if (error) console.warn('Não foi possível carregar o papel do usuário:', error.message);
  currentRole = data?.role ?? 'viewer';
}

export async function initAuth() {
  if (MODE !== 'supabase') { notify(); return; }
  const client = getClient();
  const { data: { session } } = await client.auth.getSession();
  currentUser = session?.user ?? null;
  await loadRole();
  notify();
  client.auth.onAuthStateChange(async (_event, nextSession) => {
    currentUser = nextSession?.user ?? null;
    await loadRole();
    notify();
  });
}

export async function signIn(email, password) {
  const { error } = await getClient().auth.signInWithPassword({ email, password });
  if (error) throw error;
}

export async function signUp(email, password) {
  const { error } = await getClient().auth.signUp({ email, password });
  if (error) throw error;
}

export async function signOut() {
  const { error } = await getClient().auth.signOut();
  if (error) throw error;
}
