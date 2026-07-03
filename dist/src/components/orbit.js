// Interação leve da órbita 3D. O movimento principal fica no CSS para evitar
// dependências pesadas e manter compatibilidade com GitHub Pages e Safari.
export function initHeroOrbit() {
  const stage = document.getElementById('hero-orbit');
  if (!stage) return;

  const reduced = window.matchMedia('(prefers-reduced-motion: reduce)');
  const finePointer = window.matchMedia('(pointer: fine)');

  const reset = () => {
    stage.style.setProperty('--tilt-x', '-7deg');
    stage.style.setProperty('--tilt-y', '8deg');
  };

  const tilt = event => {
    if (reduced.matches || !finePointer.matches) return;
    const rect = stage.getBoundingClientRect();
    const x = (event.clientX - rect.left) / rect.width - .5;
    const y = (event.clientY - rect.top) / rect.height - .5;
    stage.style.setProperty('--tilt-x', `${(-7 - y * 12).toFixed(2)}deg`);
    stage.style.setProperty('--tilt-y', `${(8 + x * 16).toFixed(2)}deg`);
  };

  stage.addEventListener('pointermove', tilt, { passive: true });
  stage.addEventListener('pointerleave', reset, { passive: true });

  const observer = new IntersectionObserver(entries => {
    const visible = entries[0]?.isIntersecting;
    stage.classList.toggle('orbit-paused', !visible);
  }, { threshold: .05 });
  observer.observe(stage);

  document.addEventListener('visibilitychange', () => {
    stage.classList.toggle('orbit-paused', document.hidden);
  });

  reduced.addEventListener?.('change', reset);
  reset();
}
