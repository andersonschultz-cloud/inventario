import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';

const html = await readFile(new URL('../index.html', import.meta.url), 'utf8');
const css = await readFile(new URL('../src/styles/main.css', import.meta.url), 'utf8');
const app = await readFile(new URL('../src/app.js', import.meta.url), 'utf8');
const build = await readFile(new URL('../scripts/build.mjs', import.meta.url), 'utf8');

for (const id of ['sidebar', 'main-nav', 'hero-orbit', 'kpi-cards', 'page-explorar', 'page-topologia']) {
  assert.match(html, new RegExp(`id=["']${id}["']`), `Elemento obrigatório ausente: ${id}`);
}
assert.match(html, /assets\/sicredi-logo\.webp/, 'Logo local do Sicredi não referenciado');
assert.match(css, /@keyframes ring-spin-a/, 'Animação principal da órbita não encontrada');
assert.match(css, /prefers-reduced-motion/, 'Tratamento de movimento reduzido ausente');
assert.match(app, /initHeroOrbit\(\)/, 'Inicialização da órbita não encontrada');
assert.match(build, /'assets'/, 'Pasta assets não incluída no build');

console.log('Validação da interface premium e órbita 3D: OK');
