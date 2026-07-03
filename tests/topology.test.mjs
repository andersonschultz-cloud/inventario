import assert from 'node:assert/strict';
import { buildDomainTopology } from '../src/utils/helpers.js';

const hosts = [
  { id: 1, hostname: 'host-a', dominio: 'core_domain', tecnologias: ['Linux'], vertical_negocio: 'Core' },
  { id: 2, hostname: 'host-b', dominio: 'core_domain', tecnologias: ['Linux'], vertical_negocio: 'Core' },
  { id: 2, hostname: 'host-b', dominio: 'core_domain', tecnologias: ['Linux'], vertical_negocio: 'Core' },
];
const components = [
  { id: 10, nome: 'ServicoA', dominio: 'CORE-DOMAIN', tecnologias: ['Java'], versao_weblogic: '12.2.1.4', status: 'matched' },
  { id: 11, nome: 'ServicoB', dominio: 'core.domain', tecnologias: ['Java'], versao_weblogic: '12.2.1.4', status: 'matched' },
];

const topology = buildDomainTopology(hosts, components);
assert.equal(topology.length, 1, 'Variações normalizadas devem formar um único domínio');
assert.equal(topology[0].hosts.length, 2, 'Hosts repetidos não podem ser multiplicados por componente');
assert.equal(topology[0].components.length, 2, 'Componentes devem ficar associados diretamente ao domínio');
assert.deepEqual(topology[0].hosts.map(item => item.hostname), ['host-a', 'host-b']);
assert.ok(topology[0].components.every(component => !('hosts' in component)), 'Componentes não devem receber todos os hosts do domínio como filhos');

console.log('Teste da hierarquia domínio → componentes e domínio → hosts: OK');
