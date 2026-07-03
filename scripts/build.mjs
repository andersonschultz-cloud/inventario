import { cp, mkdir, readFile, readdir, rm, stat } from 'node:fs/promises';
import { dirname, extname, join, resolve } from 'node:path';
import { spawnSync } from 'node:child_process';

const root = resolve(new URL('..', import.meta.url).pathname);
const dist = join(root, 'dist');

async function walk(dir) {
  const entries = await readdir(dir, { withFileTypes: true });
  const files = [];
  for (const entry of entries) {
    const path = join(dir, entry.name);
    if (entry.isDirectory()) files.push(...await walk(path));
    else files.push(path);
  }
  return files;
}

async function validateImports(file) {
  const source = await readFile(file, 'utf8');
  const imports = [...source.matchAll(/(?:from\s+|import\s*)['"](\.\.?\/[^'"]+)['"]/g)].map(match => match[1]);
  for (const specifier of imports) {
    const target = resolve(dirname(file), specifier);
    try { await stat(target); }
    catch { throw new Error(`Import local inexistente em ${file.replace(root, '.')}: ${specifier}`); }
  }
}

await rm(dist, { recursive: true, force: true });
await mkdir(dist, { recursive: true });

for (const item of ['index.html', 'src', 'data', 'assets']) {
  await cp(join(root, item), join(dist, item), { recursive: true });
}

const jsFiles = (await walk(join(root, 'src'))).filter(file => extname(file) === '.js');
for (const file of jsFiles) {
  const result = spawnSync(process.execPath, ['--check', file], { encoding: 'utf8' });
  if (result.status !== 0) throw new Error(result.stderr || `Falha de sintaxe em ${file}`);
  await validateImports(file);
}

const html = await readFile(join(root, 'index.html'), 'utf8');
for (const required of ['src/app.js', 'src/styles/main.css', 'chart.umd.min.js']) {
  if (!html.includes(required)) throw new Error(`index.html não referencia ${required}`);
}

console.log(`Build concluído: ${jsFiles.length} módulos validados e arquivos copiados para dist/.`);
