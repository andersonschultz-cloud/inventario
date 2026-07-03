const routes = new Set(['dashboard', 'explorar', 'topologia', 'admin']);
let listener = null;

export function currentRoute() {
  const route = location.hash.replace(/^#\/?/, '').split('?')[0] || 'dashboard';
  return routes.has(route) ? route : 'dashboard';
}

export function navigate(route, params = {}) {
  const target = routes.has(route) ? route : 'dashboard';
  const query = new URLSearchParams(Object.entries(params).filter(([, value]) => value != null && value !== ''));
  location.hash = `#/${target}${query.size ? `?${query}` : ''}`;
}

export function routeParams() {
  const query = location.hash.split('?')[1] ?? '';
  return Object.fromEntries(new URLSearchParams(query));
}

export function initRouter(onChange) {
  listener = () => onChange(currentRoute(), routeParams());
  window.addEventListener('hashchange', listener);
  if (!location.hash) history.replaceState(null, '', '#/dashboard');
  listener();
}
