import assert from 'node:assert/strict';
import { hostActivity, hostActivityLabel, soRisk, soRiskLabel } from '../src/utils/helpers.js';
import { computeExploreMetrics } from '../src/components/exploreAnalytics.js';

assert.equal(hostActivity({ situacao: 'Ligado' }), 'ligado');
assert.equal(hostActivity({ situacao: 'Desligado' }), 'desativado');
assert.equal(hostActivity({ situacao: 'Removido' }), 'desativado');
assert.equal(hostActivity({ situacao: 'Remover (validar)' }), 'desativado');
assert.equal(hostActivity({ situacao: null }), 'sem_status');
assert.equal(hostActivityLabel('desativado'), 'Desativados');

assert.equal(soRisk('RedHat-5.11'), 'eol');
assert.equal(soRisk('RedHat-6.10'), 'eol');
assert.equal(soRisk('CentOS-7'), 'eol');
assert.equal(soRisk('RedHat-7.9'), 'warn');
assert.equal(soRisk('RedHat-8.10'), 'ok');
assert.equal(soRisk('RedHat-9.6'), 'ok');
assert.equal(soRisk('Rocky-8.10'), 'ok');
assert.equal(soRisk(null), 'neutral');
assert.equal(soRiskLabel('eol'), 'Fora de suporte');
assert.equal(soRiskLabel('warn'), 'Suporte estendido');

console.log('Testes de estado operacional e ciclo de vida do SO: OK');

const metrics = computeExploreMetrics([
  { situacao: 'Ligado', versao_so: 'RedHat-8.10', dominio: 'a_domain' },
  { situacao: 'Desligado', versao_so: 'RedHat-6.10', dominio: 'a_domain' },
  { situacao: null, versao_so: 'RedHat-7.9', dominio: 'b_domain' },
]);
assert.deepEqual(metrics.activities, { ligado: 1, desativado: 1, sem_status: 1 });
assert.deepEqual(metrics.risks, { ok: 1, warn: 1, eol: 1, neutral: 0 });
assert.deepEqual(metrics.domains, [['a_domain', 2], ['b_domain', 1]]);
