-- Seed gerado automaticamente a partir da planilha (ECER + DCPER, produção)
-- Executar APÓS schema.sql

insert into public.times (sigla, nome) values
  ('ECER', 'ECER - Crédito e Risco'),
  ('DCPER', 'DCPER - DevOps CORE - Pagamentos e Recebimentos')
on conflict (sigla) do nothing;

insert into public.tecnologias (nome) values
  ('Apache_Httpd'),
  ('Apache_Tomcat'),
  ('Batch_C'),
  ('Database'),
  ('Grafana'),
  ('HAProxy'),
  ('InfluxDB'),
  ('Keepalived'),
  ('Nginx'),
  ('OC4J'),
  ('Oracle_BAM'),
  ('Oracle_OSB'),
  ('Oracle_SOA'),
  ('Oracle_Service_Bus'),
  ('Oracle_UCM'),
  ('Oracle_WebCenter'),
  ('Oracle_WebLogic'),
  ('RedHat_Jboss'),
  ('RedHat_Wildfly'),
  ('Somente SO'),
  ('Spring'),
  ('Varnish-Cache'),
  ('Virtual_Workstation')
on conflict (nome) do nothing;

insert into public.dominios (nome) values
  ('/EstruturaOrganizacionalService'),
  ('Cachecorp'),
  ('Cachecorp V2'),
  ('Cadastro, Cobrança'),
  ('ContaCorrente'),
  ('ModuloUA'),
  ('PGDM-78438'),
  ('RedeColaborativa'),
  ('admoffice_domain'),
  ('admofficeapp_domain'),
  ('agro'),
  ('alcada_domain'),
  ('analise_domain'),
  ('app1osbcred1p'),
  ('app_alienacaoveiculos_domain'),
  ('app_doccomp_domain'),
  ('app_gestlimi_domain'),
  ('app_limites_domain'),
  ('app_motorcalc_domain'),
  ('app_prdcred_domain'),
  ('appreccred12c2_domain'),
  ('appreccred_domain'),
  ('appreccred_domain (Migração RHEL 9)'),
  ('arcgis'),
  ('bam_domain'),
  ('bam_domain, soacorp_domain, soabpel_domain, osbcorp_domain, eventos_domain'),
  ('batchbureau12c2_domain'),
  ('bip_domain, oer_domain'),
  ('bpeltrans_domain'),
  ('bureau'),
  ('bureau_domain'),
  ('c_batch_cyber (serviços externos)'),
  ('cadarel_domain'),
  ('cadarel_domain_infrend_domain'),
  ('cadpos'),
  ('cadpos_domain'),
  ('cadpos_domain (pendente validar descontinuação, Vladimir Ramos)'),
  ('capturaweb_domain'),
  ('ccor_nne'),
  ('cobrancaonline'),
  ('compcc_domain'),
  ('contas12c2_domain'),
  ('contas_domain'),
  ('contasapagar'),
  ('contaspg_domain e wscontaspg_domain'),
  ('convenios'),
  ('corp_domain'),
  ('credito_domain'),
  ('custom_tcptrace'),
  ('cyber_domain'),
  ('cyber_domain (serviços externos)'),
  ('db_arcgis'),
  ('ecm_domain'),
  ('ecm_ecmbusiness_domain_ecmportal_domain'),
  ('ecm_ecmportalext_domain'),
  ('engcontabil'),
  ('enginecontabil_domain'),
  ('esteira'),
  ('esteira_domain'),
  ('eventos_domain, osbcorp_domain'),
  ('filas_digital_domain'),
  ('formalistica_domain'),
  ('frontcorp'),
  ('frontcorp12c_domain'),
  ('frontged_domain'),
  ('gesgara'),
  ('gestaoprocessos_domain'),
  ('gestlimi'),
  ('gestlimirel_domain'),
  ('grafana'),
  ('infra_domain'),
  ('infrasoadb'),
  ('infrend_domain'),
  ('mda'),
  ('monitor-soa'),
  ('monitoramento_bureau'),
  ('nai'),
  ('neurotech'),
  ('notificacao_domain'),
  ('oer'),
  ('oer_domain'),
  ('osb-comunicados'),
  ('osb-esteira'),
  ('osb3c_domain, soa3c_domain'),
  ('osb3cmua_domain'),
  ('osbadm_domain'),
  ('osbbureau'),
  ('osbbureau_domain'),
  ('osbcomunicados_domain'),
  ('osbcontas_domain'),
  ('osbconv_domain'),
  ('osbcorp12c_domain'),
  ('osbcred12c2_domain'),
  ('osbcred_domain'),
  ('osbesteira_domain'),
  ('osbrisco_domain'),
  ('osr_domain'),
  ('pld_domain'),
  ('processos-retaguarda (soascomp)'),
  ('rdcolab'),
  ('recuperacaocredito'),
  ('redecolab_mobi'),
  ('relcrd_domain'),
  ('repositorio_cor_gac'),
  ('sefapr_domain'),
  ('segcorp'),
  ('segpatrimonial'),
  ('ses'),
  ('soa'),
  ('soa3c_domain'),
  ('soabpel_domain'),
  ('soacorp_domain'),
  ('soaformcons_domain'),
  ('soascomp_domain'),
  ('sobras'),
  ('spring_batch'),
  ('ummagumma (monitor-infra)'),
  ('vazio'),
  ('wccmigracao_domain'),
  ('web1credimob1p'),
  ('webcenter'),
  ('webcenter_webcenter_domain'),
  ('webcenter_webcenterext_domain'),
  ('webcred'),
  ('wlscomp_domain'),
  ('worklist'),
  ('ws-bndes12c'),
  ('ws-bureau'),
  ('ws-contasapagar'),
  ('ws-convenios12c'),
  ('ws-cyber'),
  ('ws-engcontabil'),
  ('ws-recor'),
  ('ws_alienacaoveiculos_domain'),
  ('ws_canais_osb-credito12c'),
  ('ws_cobranca11gdg_domain'),
  ('ws_contacorrente_domain'),
  ('ws_contas_nc_domain'),
  ('ws_credcanais_domain'),
  ('ws_doccomp_domain'),
  ('ws_geocreditoagricola'),
  ('ws_gestlimi12c2_domain (ETL Java 8)'),
  ('ws_gestlimi_domain'),
  ('ws_gestlimi_domain (DESLIGADO)'),
  ('ws_lavdinhe_domain'),
  ('ws_limites_domain'),
  ('ws_motorcalc12C2_domain (ETL Java 8)'),
  ('ws_motorcalc_domain'),
  ('ws_mua_domain'),
  ('ws_prdcred_domain'),
  ('ws_proagro_wscred12c'),
  ('wsalcadas_domain'),
  ('wsanalise_domain'),
  ('wsanaliserel_domain'),
  ('wsbndes12c2_domain (ETL Java 8)'),
  ('wsbndes_domain'),
  ('wscadastro_domain'),
  ('wscartoes_domain'),
  ('wscobranca11g_domain e ws_cobranca_domain'),
  ('wscobranca11g_domain, ws_cobranca_domain'),
  ('wscobranca12c2_domain'),
  ('wscobranca12c2_domain (ETL Java 8)'),
  ('wsconsbco_domain'),
  ('wscontas'),
  ('wscontas11g_domain'),
  ('wscontas_digital_domain'),
  ('wscontas_domain'),
  ('wscontas_saque_domain'),
  ('wscontaspg_domain'),
  ('wsconvenio12c_domain'),
  ('wsconvenios12c2_domain'),
  ('wsconvenios_digital_domain'),
  ('wsconvenios_domain'),
  ('wscorp12c_doamin'),
  ('wscorp_domain'),
  ('wscred12c2_domain'),
  ('wscred12c_domain'),
  ('wscredito12c2_domain'),
  ('wscredito_domain'),
  ('wscredito_domain (DESLIGADO)'),
  ('wscustodia12c_domain'),
  ('wscustodia_domain'),
  ('wscyber_domain'),
  ('wsesteira12C2_domain (ETL Java 8)'),
  ('wsesteira_domain'),
  ('wsindliq12C2_domain (ETL Java 8)'),
  ('wsindliq_domain'),
  ('wslegado_domain'),
  ('wspgboleto_domain'),
  ('wsprecificacao12c_domain'),
  ('wsprecificacao_domain'),
  ('wsprovadevida_domain'),
  ('wsreccred_domain'),
  ('wsrecor_domain'),
  ('wsredecol_domain'),
  ('wsrisco_domain'),
  ('wsscomp_domain'),
  ('wstarifas_domain'),
  ('wts_core_credito'),
  ('wts_desenvolvimento'),
  ('wts_linux'),
  ('wts_zancan')
on conflict (nome) do nothing;

insert into public.negocios (nome) values
  ('Administrativo'),
  ('Analise'),
  ('ArcGIS'),
  ('Arquitetura'),
  ('BAM'),
  ('BNDES'),
  ('Cadastro'),
  ('Cadastro, Cobrança'),
  ('Cobrança'),
  ('Comunicados'),
  ('Consórcio'),
  ('Conta corrente'),
  ('Contabilidade (controladoria, gestão financeira)'),
  ('Contas'),
  ('Contas (desativado?)'),
  ('Contas, Convênios'),
  ('Convenios'),
  ('Corporativo'),
  ('Corporativo, Crédito'),
  ('Corporativo, Documentos'),
  ('Crédito'),
  ('Crédito Imobiliário (validar com samuel_schaffer)'),
  ('DESCONTINUADO'),
  ('DESCONTINUANDO?'),
  ('Documentos'),
  ('Esteira de contas'),
  ('Esteira de crédito'),
  ('Esteira de crédito, eventos'),
  ('Gateway Neurotech'),
  ('Gestão de Limites'),
  ('Gestão de garantias'),
  ('Gráficos investimento, caixa, rsa, caixa'),
  ('Infraestrutura_Corporativa'),
  ('Lavagem de Dinheiro'),
  ('Legislativo'),
  ('Legislação'),
  ('Limites'),
  ('Motor de Cálculo'),
  ('Plano de Segurança'),
  ('Rede colaborativa'),
  ('Regulatório'),
  ('Rendimentos'),
  ('Restritivos'),
  ('Risco'),
  ('SRE_Observabilidade'),
  ('Tarifas'),
  ('Índice de Liquidez')
on conflict (nome) do nothing;

-- Hosts
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'adm1admoffice1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'admoffice_domain'
left join public.negocios n on n.nome = 'Plano de Segurança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'adm1admofficeapp1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'admofficeapp_domain'
left join public.negocios n on n.nome = 'Plano de Segurança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'adm1cadarel1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'infrend_domain'
left join public.negocios n on n.nome = 'Rendimentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'adm1cyber1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cyber_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'adm1sefa1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'sefapr_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app0servcco001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_digital_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app0servcco002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'filas_digital_domain'
left join public.negocios n on n.nome = 'DESCONTINUANDO?'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctcorre005p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_doccomp_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app0soacorp001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'BAM 11G | SOA 11G | OSB 11G | WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bam_domain, soacorp_domain, soabpel_domain, osbcorp_domain, eventos_domain'
left join public.negocios n on n.nome = 'Esteira de crédito, eventos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app0svcinbu001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Necessário validar com time do GESRES/BUREAU', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'spring_batch'
left join public.negocios n on n.nome = 'Restritivos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1admbnds1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'formalistica_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1admoffice1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'admofficeapp_domain'
left join public.negocios n on n.nome = 'Plano de Segurança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1admosr1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osr_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1admpcrd001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsprecificacao_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ancredt001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanaliserel_domain'
left join public.negocios n on n.nome = 'Analise'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ancredt002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanaliserel_domain'
left join public.negocios n on n.nome = 'Analise'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1anlcred001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanalise_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1anlcred002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanalise_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1anlcred003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanalise_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1anlcred004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'analise_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1cadarel1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G | WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cadarel_domain_infrend_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1cadpos3p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cadpos_domain (pendente validar descontinuação, Vladimir Ramos)'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1consbco001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsconsbco_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper001p', t.id, d.id, n.id, 'RedHat-9.3', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred_domain (Migração RHEL 9)'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper002p', t.id, d.id, n.id, 'RedHat-9.3', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred_domain (Migração RHEL 9)'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1csrcext3p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_ecmportalext_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctcorre001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wslegado_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctcorre002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wstarifas_domain'
left join public.negocios n on n.nome = 'Tarifas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctrlalc001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsalcadas_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctrlalc002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'alcada_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1cyberbt1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Release inferior a atual do provedor', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'c_batch_cyber (serviços externos)'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1cyberrc001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscyber_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1dashinf006p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ummagumma (monitor-infra)'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1dashinf011p', t.id, d.id, n.id, 'RedHat-8.10', 'RHEL', 'Version 9.3.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'grafana'
left join public.negocios n on n.nome = 'Gráficos investimento, caixa, rsa, caixa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1dircorp001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'HA-Proxy version 1.5.18 | varnish-6.0.8 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1doccorp001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'vazio'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1crtcobr002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ccor_nne'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2crtcobr002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ccor_nne'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'adm1compcc1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'compcc_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1compcc1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'compcc_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2compcc2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'compcc_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1anlcred001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | varnish-6.0.2 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ContaCorrente'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2anlcred001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | varnish-6.0.2 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ContaCorrente'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ssobper002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'contas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ssobper002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'contas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctcorre006p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'contas12c2_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servccs001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'contas12c2_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctcorre006p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'contas12c2_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servccs001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'contas12c2_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ecm1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_ecmbusiness_domain_ecmportal_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ecm3p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_ecmbusiness_domain_ecmportal_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1emprest001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_credcanais_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1enginec001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'enginecontabil_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1estcont001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wlscomp_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1estcred001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain (DESLIGADO)'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1estsiac001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'esteira_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1estsiac002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbesteira_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1estsiac003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsesteira_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1estsiac004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'Version 8.1.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'grafana'
left join public.negocios n on n.nome = 'SRE_Observabilidade'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1fobndes001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'formalistica_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1fobndes002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'formalistica_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1forcons001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soaformcons_domain'
left join public.negocios n on n.nome = 'Consórcio'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1frtalve002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_alienacaoveiculos_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1frtalve003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_alienacaoveiculos_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1geocred002p', t.id, d.id, n.id, 'RedHat-8.8', 'RHEL', 'nginx/1.14.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'arcgis'
left join public.negocios n on n.nome = 'ArcGIS'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestlim001p', t.id, d.id, n.id, 'RedHat-7.2', 'RHEL', 'WLS 11G', 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain (DESLIGADO)'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestlimi1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_gestlimi_domain'
left join public.negocios n on n.nome = 'Gestão de Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestres002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestres003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestres004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestres005p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestres006p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestres007p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestres008p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstappd004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'custom_tcptrace'
left join public.negocios n on n.nome = 'SRE_Observabilidade'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstappd005p', t.id, d.id, n.id, 'Rocky-8.10', 'Rocky', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wts_linux'
left join public.negocios n on n.nome = 'Infraestrutura_Corporativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstasoa001p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soascomp_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstasoa003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'jboss-5.1.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'infrasoadb'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstasoa006p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wccmigracao_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstasoa008p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'frontged_domain'
left join public.negocios n on n.nome = 'Documentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstdoct001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'capturaweb_domain'
left join public.negocios n on n.nome = 'Documentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstdoct002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'capturaweb_domain'
left join public.negocios n on n.nome = 'Documentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstlimi001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gestlimirel_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gwneuro001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Removido', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'neurotech'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1indliqu001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsindliq12C2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Índice de Liquidez'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1infrend1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'infrend_domain'
left join public.negocios n on n.nome = 'Rendimentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1limcaut001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_motorcalc_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1limcaut002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_motorcalc_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1limites1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_limites_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1macmoni001p', t.id, d.id, n.id, 'RedHat-6.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'infra_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1modua3p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1modua5p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1modua7p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1modua9p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1modulua001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cadastro, Cobrança'
left join public.negocios n on n.nome = 'Cadastro, Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1monisoa001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp12c_doamin'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1oer1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G | WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bip_domain, oer_domain'
left join public.negocios n on n.nome = 'Arquitetura'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1osbcorp002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcorp12c_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1osbcred1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app1osbcred1p'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1osbrisco1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbrisco_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1osr1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osr_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1platcad001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osb3c_domain, soa3c_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1platcad002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soa3c_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1platcad003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soa3c_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1platcad008p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_mua_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1platrec001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsreccred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1platrec002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1platrec003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcred12c2_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1portagr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'credito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1prdcred1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_prdcred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1precpro001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscred12c_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1precpro003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsprecificacao12c_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1precpro005p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.1', 'Remover (validar)', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsreccred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1raterec001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Version 4.4.3 | InfluxDB v1.3.4', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'repositorio_cor_gac'
left join public.negocios n on n.nome = 'SRE_Observabilidade'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1raterec003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Version 6.7.0 | Apache/2.4.34', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'grafana'
left join public.negocios n on n.nome = 'SRE_Observabilidade'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1rdcolab002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter'
left join public.negocios n on n.nome = 'Rede colaborativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1rdcolab003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter'
left join public.negocios n on n.nome = 'Rede colaborativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1relcrd1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'relcrd_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1restbat1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1risco1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsrisco_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1riskcnt002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1sap006p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbadm_domain'
left join public.negocios n on n.nome = 'Administrativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servbur001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servbur002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctcorre003p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcontas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctcorre003p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcontas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcco001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcco003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscred12c2_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcre001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcomunicados_domain'
left join public.negocios n on n.nome = 'Comunicados'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp004p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp005p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp006p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osb-comunicados'
left join public.negocios n on n.nome = 'Comunicados'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp014p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'varnish-6.0.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cadastro, Cobrança'
left join public.negocios n on n.nome = 'Cadastro, Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp016p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | varnish-6.0.2 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = '/EstruturaOrganizacionalService'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp018p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'frontcorp12c_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp026p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'corp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp027p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'tomcat-8.5.33', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'worklist'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp028p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_domain'
left join public.negocios n on n.nome = 'Corporativo, Documentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp029p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcrp030p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcus001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscustodia12c_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito12c2_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_motorcalc12C2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Motor de Cálculo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr003p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsesteira12C2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Esteira de crédito, eventos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi12c2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Gestão de Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr005p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr006p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr007p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdcr008p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servdre001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servfbn001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'vazio'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servpla001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osb3cmua_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siscrbn004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsbndes12c2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'BNDES'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soabpel001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soabpel_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soabpel002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soabpel_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bam_domain'
left join public.negocios n on n.nome = 'Esteira de crédito, eventos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bam_domain'
left join public.negocios n on n.nome = 'BAM'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp003p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp005p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp006p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp007p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soacorp008p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soamonit1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'AppServer baixado', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'monitor-soa'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soatols002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'jboss-5.1.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'monitor-soa'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soautil1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G | OSB 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'eventos_domain, osbcorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1soautil3p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G | OSB 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'eventos_domain, osbcorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1srvappf001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsbndes_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1srvappf002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsbndes_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1srvcrre001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsrecor_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1svcinbu001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'tomcat-7.0.96', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'monitoramento_bureau'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1svcinbu002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'batchbureau12c2_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1svconve001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsprovadevida_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1topaztr002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'pld_domain'
left join public.negocios n on n.nome = 'Lavagem de Dinheiro'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wcrcext1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Removido', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter_webcenterext_domain'
left join public.negocios n on n.nome = 'Rede colaborativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wcrcext3p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Removido', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter_webcenterext_domain'
left join public.negocios n on n.nome = 'Rede colaborativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wlcyber1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cyber_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wlsefa1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'sefapr_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wscadastro1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscadastro_domain'
left join public.negocios n on n.nome = 'Cadastro'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wscadastro3p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscadastro_domain'
left join public.negocios n on n.nome = 'Cadastro'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wscred1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ancredt001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanaliserel_domain'
left join public.negocios n on n.nome = 'Analise'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ancredt002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanaliserel_domain'
left join public.negocios n on n.nome = 'Analise'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2anlcred001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanalise_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2anlcred002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanalise_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2anlcred003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsanalise_domain'
left join public.negocios n on n.nome = 'Analise'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2anlcred004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'analise_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2cadarel2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cadarel_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2cadpos4p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cadpos_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2compimg001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_doccomp_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2consbco001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsconsbco_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper001p', t.id, d.id, n.id, 'RedHat-9.3', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred_domain (Migração RHEL 9)'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper002p', t.id, d.id, n.id, 'RedHat-9.3', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred_domain (Migração RHEL 9)'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2csrcext4p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_ecmportalext_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctcorre001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wslegado_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctcorre002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wstarifas_domain'
left join public.negocios n on n.nome = 'Tarifas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctrlalc001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsalcadas_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctrlalc002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'alcada_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2cyberbt2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Release inferior a atual do provedor', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'c_batch_cyber (serviços externos)'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2cyberrc001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscyber_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2cyberrc002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cyber_domain (serviços externos)'
left join public.negocios n on n.nome = 'Restritivos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2dashinf003p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ummagumma (monitor-infra)'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2dircorp001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'HA-Proxy version 1.5.18 | varnish-6.0.8 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ecm2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_ecmbusiness_domain_ecmportal_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ecm4p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_ecmbusiness_domain_ecmportal_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2emprest001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_credcanais_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2enginec001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'enginecontabil_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2estcont001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wlscomp_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2estcred001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2estsiac001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'esteira_domain'
left join public.negocios n on n.nome = 'Esteira de crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2estsiac002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbesteira_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2estsiac003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsesteira_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2fobndes001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'formalistica_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2fobndes002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'formalistica_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2forcons001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soaformcons_domain'
left join public.negocios n on n.nome = 'Consórcio'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2frtalve002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_alienacaoveiculos_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2frtalve003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_alienacaoveiculos_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestlim001p', t.id, d.id, n.id, 'RedHat-7.2', 'RHEL', 'WLS 11G', 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestlimi2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_gestlimi_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestres001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestres002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestres003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestres004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestres005p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestres006p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestres007p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstasoa001p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soascomp_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstasoa003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'frontged_domain'
left join public.negocios n on n.nome = 'Documentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstdoct001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'capturaweb_domain'
left join public.negocios n on n.nome = 'Documentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstdoct002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'capturaweb_domain'
left join public.negocios n on n.nome = 'Documentos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstlimi001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gestlimirel_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gwneuro004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', null, 'Removido', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'neurotech'
left join public.negocios n on n.nome = 'Gateway Neurotech'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2indliqu001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsindliq12C2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Índice de Liquidez'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2infrend2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'infrend_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2limcaut001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_motorcalc_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2limcaut002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_motorcalc_domain'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2limites2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_limites_domain'
left join public.negocios n on n.nome = 'Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2modua4p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2modua6p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2modua8p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2modulua001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cadastro, Cobrança'
left join public.negocios n on n.nome = 'Cadastro, Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2monisoa001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp12c_doamin'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2oer2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'oer_domain'
left join public.negocios n on n.nome = 'Arquitetura'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2osbcorp002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcorp12c_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2osbcred2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2osbrisco2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbrisco_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2osr2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osr_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2platcad004p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soa3c_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2platcad005p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soa3c_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2platcad010p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_mua_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2platrec001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsreccred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2platrec002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2platrec003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcred12c2_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2portagr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'credito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2prdcred2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'app_prdcred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2precpro001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscred12c_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2precpro002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsprecificacao_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2precpro003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsprecificacao12c_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2precpro009p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.1', 'Remover (validar)', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsreccred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2rdcolab002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter_webcenter_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2rdcolab003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter_webcenter_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2risco2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsrisco_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2riskcnt002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'pld_domain'
left join public.negocios n on n.nome = 'Lavagem de Dinheiro'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2sap005p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbadm_domain'
left join public.negocios n on n.nome = 'Administrativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servbur001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servbur002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcar001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscartoes_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcar002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscartoes_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcar003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscartoes_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcco001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcco006p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscred12c2_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcre001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbcomunicados_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcre002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcre003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcre004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcre005p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscredito_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp004p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp005p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gestrcd002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_contacorrente_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp006p', t.id, d.id, n.id, 'RedHat-6.6', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osb-comunicados'
left join public.negocios n on n.nome = 'Comunicados'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp007p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'notificacao_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp013p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'varnish-6.0.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cadastro, Cobrança'
left join public.negocios n on n.nome = 'Cadastro, Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp014p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'frontcorp12c_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp016p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'HA-Proxy version 1.5.18 | varnish-6.0.2 | Keepalived v1.3.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = '/EstruturaOrganizacionalService'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp025p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'corp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp026p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'tomcat-8.5.33', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'worklist'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp027p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcrp028p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcus001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscustodia12c_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servdcr001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_motorcalc12C2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Motor de Cálculo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servdcr002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsesteira12C2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Esteira de crédito, eventos'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servdcr003p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi12c2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Gestão de Limites'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servdre001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'appreccred12c2_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servfbn001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'vazio'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servpla001p', t.id, d.id, n.id, 'RedHat-7.3', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osb3cmua_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siscrbn004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsbndes12c2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'BNDES'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soabpel001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soabpel_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soabpel002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soabpel_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bam_domain'
left join public.negocios n on n.nome = 'BAM'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bam_domain'
left join public.negocios n on n.nome = 'BAM'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp003p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp005p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp006p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp007p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soacorp008p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soacorp_domain'
left join public.negocios n on n.nome = 'Corporativo, Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soautil2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G | OSB 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'eventos_domain, osbcorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2soautil4p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G | OSB 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'eventos_domain, osbcorp_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2srvappf001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsbndes_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2srvappf002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsbndes_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2srvcrre001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsrecor_domain'
left join public.negocios n on n.nome = 'Legislativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2svcinbu001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2svcinbu002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'batchbureau12c2_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2svconve001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsprovadevida_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2topaztr001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'pld_domain'
left join public.negocios n on n.nome = 'Legislação'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ucm2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ecm_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2wcrcext2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter_webcenterext_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2wcrcext4p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcenter_webcenterext_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2wlcyber2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cyber_domain'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2wlsefa2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'sefapr_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2wscadastro2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscadastro_domain'
left join public.negocios n on n.nome = 'Cadastro'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2wscadastro4p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscadastro_domain'
left join public.negocios n on n.nome = 'Cadastro'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'dtb1geocred002p', t.id, d.id, n.id, 'RedHat-8.8', 'RHEL', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'db_arcgis'
left join public.negocios n on n.nome = 'ArcGIS'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'modua11', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'modua1-uat', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'modua21', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'modua2-uat', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Sem suporte', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ModuloUA'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web0platrec001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'web1credimob1p'
left join public.negocios n on n.nome = 'Crédito Imobiliário (validar com samuel_schaffer)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1admoffice1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'segpatrimonial'
left join public.negocios n on n.nome = 'Administrativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1bobndes001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-bndes12c'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1cadpos1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cadpos'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1cred1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Apache/2.2.3', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcred'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1cyberrc001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-cyber'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1enginec001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'engcontabil'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1enginec002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-engcontabil'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1estcont001p', t.id, d.id, n.id, 'RedHat-6.6', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'processos-retaguarda (soascomp)'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1estsiac001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'esteira'
left join public.negocios n on n.nome = 'Esteira de crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1estsiac002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osb-esteira'
left join public.negocios n on n.nome = 'Esteira de crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1geocred003p', t.id, d.id, n.id, 'RedHat-8.9', 'RHEL', '0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'arcgis'
left join public.negocios n on n.nome = 'ArcGIS'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1gestrcd001p', t.id, d.id, n.id, 'RedHat-7.2', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1gestres001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-bureau'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1gestres002p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1gstappd008p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1gstasoa001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'worklist'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1gstdoct001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'segcorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1gstdoct002p', t.id, d.id, n.id, 'RedHat-7.6', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'segcorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1oer1p', t.id, d.id, n.id, 'RedHat-6.4', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'oer'
left join public.negocios n on n.nome = 'Arquitetura'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1portagr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'agro'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1rccred1p', t.id, d.id, n.id, 'RedHat-6.4', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gestlimi'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1rcext1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'redecolab_mobi'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1rcsoa1p', t.id, d.id, n.id, 'RedHat-6.4', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'frontcorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1rest3p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Apache/2.2.3', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'neurotech'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1servcre001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_proagro_wscred12c'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1servcrp001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'rdcolab'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1servdcr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_geocreditoagricola'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1servdre001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'recuperacaocredito'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1ses1p', t.id, d.id, n.id, 'RedHat-6.3', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ses'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1siacsis002p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'mda'
left join public.negocios n on n.nome = 'Legislativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1soacorp001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soa'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1srvcrre001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-recor'
left join public.negocios n on n.nome = 'Legislativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1ssobper001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'sobras'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1estcont002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsscomp_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1svconve002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'nai'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1varnishsoa1p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'varnish-4.0.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'RedeColaborativa'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1wscred1p', t.id, d.id, n.id, 'RedHat-6.6', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_canais_osb-credito12c'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2admoffice2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'segpatrimonial'
left join public.negocios n on n.nome = 'Administrativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2anlcred002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'vazio'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2bobndes001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-bndes12c'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gestrcd001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_contacorrente_domain'
left join public.negocios n on n.nome = 'Conta corrente'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcus002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_contas_nc_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcus002p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_contas_nc_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctcorre004p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_doccomp_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ctcorre005p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_doccomp_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ctcorre004p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_doccomp_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2cadpos2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'cadpos'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2cred2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'Apache/2.2.3', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'webcred'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2cyberrc001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-cyber'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2enginec001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-engcontabil'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2enginec002p', t.id, d.id, n.id, 'RedHat-7.3', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'engcontabil'
left join public.negocios n on n.nome = 'Contabilidade (controladoria, gestão financeira)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2estcont001p', t.id, d.id, n.id, 'RedHat-6.6', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'processos-retaguarda (soascomp)'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2estsiac001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'esteira'
left join public.negocios n on n.nome = 'Esteira de crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2estsiac002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osb-esteira'
left join public.negocios n on n.nome = 'Esteira de crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2gestres001p', t.id, d.id, n.id, 'RedHat-7.7', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2gestres002p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-bureau'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2gestres003p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'bureau'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2gstappd002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'osbbureau'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2gstasoa001p', t.id, d.id, n.id, 'RedHat-6.8', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'worklist'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2gstdoct001p', t.id, d.id, n.id, 'RedHat-7.6', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'segcorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2gstdoct002p', t.id, d.id, n.id, 'RedHat-7.6', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'segcorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2oer2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'oer'
left join public.negocios n on n.nome = 'Arquitetura'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2portagr001p', t.id, d.id, n.id, 'RedHat-7.3', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'agro'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2rccred2p', t.id, d.id, n.id, 'RedHat-6.4', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gestlimi'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2rcext2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Desligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'redecolab_mobi'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2rcsoa2p', t.id, d.id, n.id, 'RedHat-6.4', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'frontcorp'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1ssobper003p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2ssobper002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2rest4p', t.id, d.id, n.id, 'RedHat-6.3', 'RHEL', null, 'Removido', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'neurotech'
left join public.negocios n on n.nome = 'Risco'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1ssobper001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcco005p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2ssobper001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 12.1', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2servcre001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_proagro_wscred12c'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2servcrp001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'rdcolab'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcco005p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_saque_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcco003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas_saque_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcco004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas11g_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcco002p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas11g_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2servcco004p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontas11g_domain'
left join public.negocios n on n.nome = 'Contas (desativado?)'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1contaspg1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontaspg_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2contaspg2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscontaspg_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2servdcr001p', t.id, d.id, n.id, 'RedHat-7.2', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_geocreditoagricola'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2servdre001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'recuperacaocredito'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2ses2p', t.id, d.id, n.id, 'RedHat-6.3', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ses'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2siacsis001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'mda'
left join public.negocios n on n.nome = 'Legislativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2soacorp001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'soa'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2srvcrre001p', t.id, d.id, n.id, 'RedHat-7.5', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws-recor'
left join public.negocios n on n.nome = 'Legislativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2custodia2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wscustodia_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2ssobper001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'sobras'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2svconve002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'nai'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2varnishsoa2p', t.id, d.id, n.id, 'RedHat-7.6', 'RHEL', 'varnish-4.0.5', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'RedeColaborativa'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2wscred2p', t.id, d.id, n.id, 'RedHat-6.6', 'RHEL', 'Apache/2.2.15', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_canais_osb-credito12c'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'wls1admoffice1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'admoffice_domain'
left join public.negocios n on n.nome = 'Plano de Segurança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1chleg1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Removido', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'PGDM-78438'
left join public.negocios n on n.nome = 'DESCONTINUADO'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1credcanais1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_credcanais_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1gestlimi1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1integra1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gestaoprocessos_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1legado1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wslegado_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1legado7p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wslegado_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1limites1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_limites_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1pld1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'pld_domain'
left join public.negocios n on n.nome = 'Legislação'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1prdcred1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_prdcred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1redecol1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsredecol_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2chleg2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Removido', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'PGDM-78438'
left join public.negocios n on n.nome = 'DESCONTINUADO'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2gestlimi2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2indliq2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsindliq_domain'
left join public.negocios n on n.nome = 'Índice de Liquidez'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2integra2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gestaoprocessos_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2legado2p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wslegado_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2legado8p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wslegado_domain'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1wsscomp1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsscomp_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2estcont002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsscomp_domain'
left join public.negocios n on n.nome = 'Esteira de contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2limites2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_limites_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2prdcred2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_prdcred_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2redecol2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wsredecol_domain'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'wts1gstappd003p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wts_linux'
left join public.negocios n on n.nome = 'Infraestrutura_Corporativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'wts1vmsmidd001p', t.id, d.id, n.id, 'RedHat-9.4', 'RHEL', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wts_core_credito'
left join public.negocios n on n.nome = 'Infraestrutura_Corporativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'wts2apiutil001p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wts_zancan'
left join public.negocios n on n.nome = 'Infraestrutura_Corporativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'wts2gstappd002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', null, 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'wts_desenvolvimento'
left join public.negocios n on n.nome = 'Infraestrutura_Corporativa'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstappd003p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'wildfly-11.0.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gesgara'
left join public.negocios n on n.nome = 'Gestão de garantias'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstappd002p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'wildfly-11.0.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gesgara'
left join public.negocios n on n.nome = 'Gestão de garantias'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstappd008p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'wildfly-11.0.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gesgara'
left join public.negocios n on n.nome = 'Gestão de garantias'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstappd007p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'wildfly-11.0.0', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'gesgara'
left join public.negocios n on n.nome = 'Gestão de garantias'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstappd009p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'HAProxy version 2.8.14-c23fe91', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp V2'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstappd006p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'HAProxy version 2.8.14-c23fe91', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp V2'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstappd001p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'HAProxy version 2.8.14-c23fe91', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp V2'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstappd004p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'HAProxy version 2.8.14-c23fe91', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp V2'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1gstappd010p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'varnish-6.6.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp V2'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2gstappd005p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'varnish-6.6.2', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'Cachecorp V2'
left join public.negocios n on n.nome = 'Corporativo'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper013p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper014p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper015p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper016p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper013p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper014p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper015p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper016p', t.id, d.id, n.id, 'RedHat-9.6', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_gestlimi_domain'
left join public.negocios n on n.nome = 'Crédito'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper007p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper008p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper009p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1credoper010p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper007p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper008p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper009p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2credoper010p', t.id, d.id, n.id, 'RedHat-9.5', 'RHEL', 'WLS 11G', 'Ligado', null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'ECER'
left join public.dominios d on d.nome = 'ws_lavdinhe_domain'
left join public.negocios n on n.nome = 'Regulatório'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1bpeltra001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'SOA 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'bpeltrans_domain'
left join public.negocios n on n.nome = 'Contas, Convênios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1bpeltra002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'SOA 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'bpeltrans_domain'
left join public.negocios n on n.nome = 'Contas, Convênios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1bpeltrans1p', t.id, d.id, n.id, 'RedHat-5.11', 'RHEL', 'SOA 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'bpeltrans_domain'
left join public.negocios n on n.nome = 'Contas, Convênios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2bpeltra001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'SOA 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'bpeltrans_domain'
left join public.negocios n on n.nome = 'Contas, Convênios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2bpeltra002p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'SOA 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'bpeltrans_domain'
left join public.negocios n on n.nome = 'Contas, Convênios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1crtcobr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'cobrancaonline'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2crtcobr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'cobrancaonline'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1contaspg1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'contasapagar'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2contaspg2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'contasapagar'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1contaspg1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'contaspg_domain e wscontaspg_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2contaspg2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'contaspg_domain e wscontaspg_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'adm1contaspg1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'contaspg_domain e wscontaspg_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1convenios1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'convenios'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2convenios2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'convenios'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1osbconv1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'OSB 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'osbconv_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2osbconv2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'OSB 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'osbconv_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1crtcobr002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'ws_cobranca11gdg_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2crtcobr002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'ws_cobranca11gdg_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1crtcobr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G /12G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wscobranca11g_domain e ws_cobranca_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2crtcobr001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G /12G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wscobranca11g_domain, ws_cobranca_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siccobi007p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wscobranca12c2_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siccobi007p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wscobranca12c2_domain (ETL Java 8)'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1wscontaspg1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'ws-contasapagar'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2wscontaspg2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'Apache/2.2.15', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'ws-contasapagar'
left join public.negocios n on n.nome = 'Contas'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1svconve002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenio12c_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2svconve002p', t.id, d.id, n.id, 'RedHat-7.2', 'RHEL', 'WLS 12', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenio12c_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1servcco002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 12', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_digital_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1coninss001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1svconve003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1svconve004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2coninss001p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2svconve003p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2svconve004p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws1convenios1p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'ws2convenios2p', t.id, d.id, n.id, 'RedHat-6.10', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web1svconve001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'ws-convenios12c'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'web2svconve001p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'Apache/2.4.6', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'ws-convenios12c'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1svconve005p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios12c2_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2svconve005p', t.id, d.id, n.id, 'CentOS-7', 'CentOS', 'WLS 12', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wsconvenios12c2_domain'
left join public.negocios n on n.nome = 'Convenios'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siccobi001p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siccobi002p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siccobi003p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siccobi004p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siccobi005p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app1siccobi006p', t.id, d.id, n.id, 'RedHat-7.9', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siccobi001p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siccobi002p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siccobi003p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siccobi004p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siccobi005p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;
insert into public.hosts (hostname, time_id, dominio_id, negocio_id, versao_so, tipo_so, release, situacao, criticidade, ambiente, versao_java, observacao)
select 'app2siccobi006p', t.id, d.id, n.id, 'RedHat-7.4', 'RHEL', 'WLS 11G', null, null, 'PROD', null, null
from (select 1) x
left join public.times t on t.sigla = 'DCPER'
left join public.dominios d on d.nome = 'wspgboleto_domain'
left join public.negocios n on n.nome = 'Cobrança'
on conflict (hostname) do nothing;

-- Vínculo host x tecnologia
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'adm1admoffice1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'adm1admofficeapp1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'adm1cadarel1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'adm1cyber1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'adm1sefa1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app0servcco001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app0servcco002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctcorre005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app0soacorp001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app0soacorp001p' and tc.nome = 'Oracle_BAM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app0soacorp001p' and tc.nome = 'Oracle_OSB'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app0svcinbu001p' and tc.nome = 'Spring'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1admbnds1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1admoffice1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1admosr1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1admpcrd001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ancredt001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ancredt002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1anlcred001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1anlcred002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1anlcred003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1anlcred004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1cadarel1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1cadpos3p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1consbco001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1csrcext3p' and tc.nome = 'Oracle_UCM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctcorre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctcorre002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctrlalc001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctrlalc002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1cyberbt1p' and tc.nome = 'Batch_C'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1cyberrc001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1dashinf006p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1dashinf006p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1dashinf011p' and tc.nome = 'Grafana'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1dircorp001p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1dircorp001p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1dircorp001p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1doccorp001p' and tc.nome = 'Somente SO'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1crtcobr002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2crtcobr002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'adm1compcc1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1compcc1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2compcc2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1anlcred001p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1anlcred001p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1anlcred001p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2anlcred001p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2anlcred001p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2anlcred001p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ssobper002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ssobper002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctcorre006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servccs001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctcorre006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servccs001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ecm1p' and tc.nome = 'Oracle_UCM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ecm3p' and tc.nome = 'Oracle_UCM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1emprest001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1enginec001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1estcont001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1estcred001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1estsiac001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1estsiac002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1estsiac003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1estsiac004p' and tc.nome = 'Grafana'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1fobndes001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1fobndes002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1forcons001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1frtalve002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1frtalve003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1geocred002p' and tc.nome = 'Nginx'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestlim001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestlimi1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestres002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestres003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestres004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestres005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestres006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestres007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestres008p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstappd004p' and tc.nome = 'Virtual_Workstation'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstappd005p' and tc.nome = 'Virtual_Workstation'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstasoa001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstasoa003p' and tc.nome = 'Database'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstasoa006p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstasoa008p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstdoct001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstdoct002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstlimi001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gwneuro001p' and tc.nome = 'Apache_Tomcat'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1indliqu001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1infrend1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1limcaut001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1limcaut002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1limites1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1macmoni001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1modua3p' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1modua5p' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1modua7p' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1modua9p' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1modulua001p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1modulua001p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1monisoa001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1oer1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1osbcorp002p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1osbcred1p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1osbrisco1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1osr1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1platcad001p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1platcad002p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1platcad003p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1platcad008p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1platrec001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1platrec002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1platrec003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1portagr001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1prdcred1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1precpro001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1precpro003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1precpro005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1raterec001p' and tc.nome = 'Grafana'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1raterec001p' and tc.nome = 'InfluxDB'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1raterec003p' and tc.nome = 'Grafana'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1rdcolab002p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1rdcolab003p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1relcrd1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1restbat1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1risco1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1riskcnt002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1sap006p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servbur001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servbur002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctcorre003p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctcorre003p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcco001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcco003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp006p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp014p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp016p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp016p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp016p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp018p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp026p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp027p' and tc.nome = 'Apache_Tomcat'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp028p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp029p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcrp030p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcus001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdcr008p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servdre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servfbn001p' and tc.nome = 'Somente SO'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servpla001p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siscrbn004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soabpel001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soabpel002p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp001p' and tc.nome = 'Oracle_BAM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp002p' and tc.nome = 'Oracle_BAM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp003p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp004p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp005p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp006p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp007p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soacorp008p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soamonit1p' and tc.nome = 'RedHat_Jboss'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soatols002p' and tc.nome = 'RedHat_Jboss'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soautil1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1soautil3p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1srvappf001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1srvappf002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1srvcrre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1svcinbu001p' and tc.nome = 'Apache_Tomcat'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1svcinbu002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1svconve001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1topaztr002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wcrcext1p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wcrcext3p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wlcyber1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wlsefa1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wscadastro1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wscadastro3p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wscred1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ancredt001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ancredt002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2anlcred001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2anlcred002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2anlcred003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2anlcred004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2cadarel2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2cadpos4p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2compimg001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2consbco001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2csrcext4p' and tc.nome = 'Oracle_UCM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctcorre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctcorre002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctrlalc001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctrlalc002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2cyberbt2p' and tc.nome = 'Batch_C'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2cyberrc001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2cyberrc002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2dashinf003p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2dashinf003p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2dircorp001p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2dircorp001p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2dircorp001p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ecm2p' and tc.nome = 'Oracle_UCM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ecm4p' and tc.nome = 'Oracle_UCM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2emprest001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2enginec001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2estcont001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2estcred001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2estsiac001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2estsiac002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2estsiac003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2fobndes001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2fobndes002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2forcons001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2frtalve002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2frtalve003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestlim001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestlimi2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestres001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestres002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestres003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestres004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestres005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestres006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestres007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstasoa001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstasoa003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstdoct001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstdoct002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstlimi001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gwneuro004p' and tc.nome = 'Apache_Tomcat'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2indliqu001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2infrend2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2limcaut001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2limcaut002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2limites2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2modua4p' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2modua6p' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2modua8p' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2modulua001p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2modulua001p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2monisoa001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2oer2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2osbcorp002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2osbcred2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2osbrisco2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2osr2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2platcad004p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2platcad005p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2platcad010p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2platrec001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2platrec002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2platrec003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2portagr001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2prdcred2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2precpro001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2precpro002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2precpro003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2precpro009p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2rdcolab002p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2rdcolab003p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2risco2p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2riskcnt002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2sap005p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servbur001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servbur002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcar001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcar002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcar003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcco001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcco006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcre002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcre003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcre004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcre005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gestrcd002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp006p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp013p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp014p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp016p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp016p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp016p' and tc.nome = 'Keepalived'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp025p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp026p' and tc.nome = 'Apache_Tomcat'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp027p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcrp028p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcus001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servdcr001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servdcr002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servdcr003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servdre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servfbn001p' and tc.nome = 'Somente SO'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servpla001p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siscrbn004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soabpel001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soabpel002p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp001p' and tc.nome = 'Oracle_BAM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp002p' and tc.nome = 'Oracle_BAM'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp003p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp004p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp005p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp006p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp007p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soacorp008p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soautil2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2soautil4p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2srvappf001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2srvappf002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2srvcrre001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2svcinbu001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2svcinbu002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2svconve001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2topaztr001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ucm2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2wcrcext2p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2wcrcext4p' and tc.nome = 'Oracle_WebCenter'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2wlcyber2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2wlsefa2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2wscadastro2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2wscadastro4p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'dtb1geocred002p' and tc.nome = 'Database'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'modua11' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'modua1-uat' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'modua21' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'modua2-uat' and tc.nome = 'OC4J'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web0platrec001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1admoffice1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1bobndes001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1cadpos1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1cred1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1cyberrc001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1enginec001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1enginec002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1estcont001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1estsiac001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1estsiac002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1geocred003p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1gestrcd001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1gestres001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1gestres002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1gstappd008p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1gstasoa001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1gstdoct001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1gstdoct002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1oer1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1portagr001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1rccred1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1rcext1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1rcsoa1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1rest3p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1servcre001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1servcrp001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1servdcr001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1servdre001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1ses1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1siacsis002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1soacorp001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1srvcrre001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1ssobper001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1estcont002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1svconve002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1varnishsoa1p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1wscred1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2admoffice2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2anlcred002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2bobndes001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gestrcd001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcus002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcus002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctcorre004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ctcorre005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ctcorre004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2cadpos2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2cred2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2cyberrc001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2enginec001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2enginec002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2estcont001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2estsiac001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2estsiac002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2gestres001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2gestres002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2gestres003p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2gstappd002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2gstasoa001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2gstdoct001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2gstdoct002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2oer2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2portagr001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2rccred2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2rcext2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2rcsoa2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1ssobper003p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2ssobper002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2rest4p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1ssobper001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcco005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2ssobper001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2servcre001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2servcrp001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcco005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcco003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcco004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcco002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2servcco004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1contaspg1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2contaspg2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2servdcr001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2servdre001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2ses2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2siacsis001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2soacorp001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2srvcrre001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2custodia2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2ssobper001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2svconve002p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2varnishsoa2p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2wscred2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'wls1admoffice1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1chleg1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1credcanais1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1gestlimi1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1integra1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1legado1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1legado7p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1limites1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1pld1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1prdcred1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1redecol1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2chleg2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2gestlimi2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2indliq2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2integra2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2legado2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2legado8p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1wsscomp1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2estcont002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2limites2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2prdcred2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2redecol2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'wts1gstappd003p' and tc.nome = 'Virtual_Workstation'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'wts1vmsmidd001p' and tc.nome = 'Virtual_Workstation'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'wts2apiutil001p' and tc.nome = 'Virtual_Workstation'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'wts2gstappd002p' and tc.nome = 'Virtual_Workstation'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstappd003p' and tc.nome = 'RedHat_Wildfly'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstappd002p' and tc.nome = 'RedHat_Wildfly'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstappd008p' and tc.nome = 'RedHat_Wildfly'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstappd007p' and tc.nome = 'RedHat_Wildfly'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstappd009p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstappd006p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstappd001p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstappd004p' and tc.nome = 'HAProxy'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1gstappd010p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2gstappd005p' and tc.nome = 'Varnish-Cache'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper013p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper014p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper015p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper016p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper013p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper014p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper015p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper016p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper008p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper009p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1credoper010p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper008p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper009p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2credoper010p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1bpeltra001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1bpeltra002p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1bpeltrans1p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2bpeltra001p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2bpeltra002p' and tc.nome = 'Oracle_SOA'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1crtcobr001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2crtcobr001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1contaspg1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2contaspg2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1contaspg1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2contaspg2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'adm1contaspg1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1convenios1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2convenios2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1osbconv1p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2osbconv2p' and tc.nome = 'Oracle_Service_Bus'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1crtcobr002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2crtcobr002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1crtcobr001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2crtcobr001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siccobi007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siccobi007p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1wscontaspg1p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2wscontaspg2p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1svconve002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2svconve002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1servcco002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1coninss001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1svconve003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1svconve004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2coninss001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2svconve003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2svconve004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws1convenios1p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'ws2convenios2p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web1svconve001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'web2svconve001p' and tc.nome = 'Apache_Httpd'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1svconve005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2svconve005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siccobi001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siccobi002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siccobi003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siccobi004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siccobi005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app1siccobi006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siccobi001p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siccobi002p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siccobi003p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siccobi004p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siccobi005p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;
insert into public.host_tecnologias (host_id, tecnologia_id)
select h.id, tc.id from public.hosts h, public.tecnologias tc
where h.hostname = 'app2siccobi006p' and tc.nome = 'Oracle_WebLogic'
on conflict do nothing;