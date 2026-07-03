import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';

const components = JSON.parse(await readFile(new URL('../data/components.json', import.meta.url), 'utf8'));
assert.equal(components.length, 515);
assert.equal(components.filter(item => item.status === 'matched').length, 477);
assert.equal(new Set(components.map(item => item.source_domain)).size, 100);
assert.ok(components.some(item => item.source_domain === 'appreccred_domain'));
assert.ok(components.some(item => item.status === 'pending'));
const unique = new Set(components.map(item => [item.status, item.matched_domain ?? item.source_domain, item.component_name.toLowerCase().replace(/\s+/g, ' '), item.weblogic_version ?? ''].join('|')));
assert.equal(unique.size, 496);

console.log('Validação dos dados de componentes: OK');
