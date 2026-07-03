import assert from 'node:assert/strict';
import { normDomain, normText, enrichHosts } from '../src/utils/helpers.js';

assert.equal(normDomain(' bureau_domain '), 'bureaudomain');
assert.equal(normDomain('BUREAU-DOMAIN'), 'bureaudomain');
assert.equal(normDomain('bureau.domain'), 'bureaudomain');
assert.equal(normText('Crédito'), 'credito');

const hosts = [{ id: 1, hostname: 'host1', dominio: 'BUREAU-DOMAIN', tecnologias: [] }];
const components = [{ id: 1, dominio: 'bureau_domain', nome: 'ServicoBureau', versao_weblogic: '12.2.1.4', vertical_negocio: 'Crédito', status: 'matched' }];
const [host] = enrichHosts(hosts, components);
assert.deepEqual(host.componentes, ['ServicoBureau']);
assert.deepEqual(host.versoes_weblogic, ['12.2.1.4']);
assert.equal(host.vertical_negocio, 'Crédito');

console.log('Testes de normalização e relacionamento: OK');
