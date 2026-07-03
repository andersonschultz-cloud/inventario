// ============================================================
// Fundo vivo — "rede cooperativa"
// Partículas (nós) conectadas por linhas suaves, nas cores Sicredi.
// Guardas de performance:
//   - respeita prefers-reduced-motion (não anima; fica o gradiente CSS)
//   - pausa quando a aba está oculta (visibilitychange)
//   - ~30 fps com requestAnimationFrame throttled
//   - nº de nós proporcional à área, com teto baixo no mobile
//   - devicePixelRatio limitado a 1.5 para não fritar GPU de celular
// Fallback: se canvas falhar, o gradiente estático do CSS permanece.
// ============================================================

const COLORS = ['rgba(63,161,16,', 'rgba(20,110,55,', 'rgba(87,181,42,'];
const LINK_DIST = 130;
const FPS_INTERVAL = 1000 / 30;

export function initBackground() {
  const reduced = window.matchMedia('(prefers-reduced-motion: reduce)');
  const canvas = document.getElementById('bg-canvas');
  if (!canvas || !canvas.getContext) return;
  const ctx = canvas.getContext('2d', { alpha: true });
  if (!ctx) return;

  let nodes = [];
  let raf = null;
  let last = 0;
  let running = false;

  const dpr = () => Math.min(window.devicePixelRatio || 1, 1.5);

  function resize() {
    const r = dpr();
    canvas.width = Math.floor(innerWidth * r);
    canvas.height = Math.floor(innerHeight * r);
    canvas.style.width = innerWidth + 'px';
    canvas.style.height = innerHeight + 'px';
    ctx.setTransform(r, 0, 0, r, 0, 0);
    seed();
  }

  function seed() {
    // ~1 nó a cada 26k px², teto 55 desktop / 22 mobile
    const cap = innerWidth < 640 ? 22 : 55;
    const n = Math.min(cap, Math.round((innerWidth * innerHeight) / 26000));
    nodes = Array.from({ length: n }, () => ({
      x: Math.random() * innerWidth,
      y: Math.random() * innerHeight,
      vx: (Math.random() - 0.5) * 0.35,
      vy: (Math.random() - 0.5) * 0.35,
      r: 1.4 + Math.random() * 2.2,
      c: COLORS[(Math.random() * COLORS.length) | 0],
    }));
  }

  function step(now) {
    if (!running) return;
    raf = requestAnimationFrame(step);
    if (now - last < FPS_INTERVAL) return;
    last = now;

    ctx.clearRect(0, 0, innerWidth, innerHeight);

    for (const p of nodes) {
      p.x += p.vx; p.y += p.vy;
      if (p.x < -20) p.x = innerWidth + 20; else if (p.x > innerWidth + 20) p.x = -20;
      if (p.y < -20) p.y = innerHeight + 20; else if (p.y > innerHeight + 20) p.y = -20;
    }

    // linhas de conexão (cooperação): opacidade cai com a distância
    for (let i = 0; i < nodes.length; i++) {
      const a = nodes[i];
      for (let j = i + 1; j < nodes.length; j++) {
        const b = nodes[j];
        const dx = a.x - b.x, dy = a.y - b.y;
        const d2 = dx * dx + dy * dy;
        if (d2 < LINK_DIST * LINK_DIST) {
          const o = 0.13 * (1 - Math.sqrt(d2) / LINK_DIST);
          ctx.strokeStyle = `rgba(20,110,55,${o.toFixed(3)})`;
          ctx.lineWidth = 1;
          ctx.beginPath();
          ctx.moveTo(a.x, a.y);
          ctx.lineTo(b.x, b.y);
          ctx.stroke();
        }
      }
    }

    // nós (círculos = cooperados)
    for (const p of nodes) {
      ctx.fillStyle = p.c + '0.35)';
      ctx.beginPath();
      ctx.arc(p.x, p.y, p.r, 0, Math.PI * 2);
      ctx.fill();
    }
  }

  function start() {
    if (running || reduced.matches) return;
    running = true;
    last = 0;
    raf = requestAnimationFrame(step);
  }

  function stop() {
    running = false;
    if (raf) cancelAnimationFrame(raf);
    raf = null;
  }

  // Reduced motion: limpa o canvas e deixa só o gradiente CSS
  function applyMotionPref() {
    if (reduced.matches) {
      stop();
      ctx.clearRect(0, 0, innerWidth, innerHeight);
    } else {
      start();
    }
  }

  let resizeT;
  addEventListener('resize', () => { clearTimeout(resizeT); resizeT = setTimeout(resize, 150); }, { passive: true });
  document.addEventListener('visibilitychange', () => (document.hidden ? stop() : applyMotionPref()));
  reduced.addEventListener?.('change', applyMotionPref);

  resize();
  applyMotionPref();
}
