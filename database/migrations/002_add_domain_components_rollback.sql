-- Rollback opcional da migration 002.
-- ATENÇÃO: remove somente estruturas criadas pela migration e os dados de
-- componentes/importação. Hosts, usuários, tecnologias, negócios e times são preservados.
begin;

drop view if exists public.domain_summary_view;
drop view if exists public.import_quality_summary_view;
drop view if exists public.componentes_view;
drop function if exists public.associate_component_import(bigint, bigint);
drop function if exists public.process_domain_component_imports();
drop trigger if exists componentes_prepare_reference on public.componentes;
drop trigger if exists verticais_prepare_reference on public.verticais_negocio;
drop trigger if exists dominios_prepare_reference on public.dominios;
drop table if exists public.domain_component_imports;
drop table if exists public.componente_hosts;
drop table if exists public.componente_tecnologias;
drop table if exists public.componentes;
alter table public.dominios drop column if exists vertical_id;
alter table public.dominios drop column if exists nome_normalizado;
alter table public.dominios drop column if exists atualizado_em;
drop table if exists public.verticais_negocio;
drop function if exists public.prepare_inventory_reference_row();
drop function if exists public.normalize_component_name(text);
drop function if exists public.normalize_domain_name(text);

-- Restaura hosts_view no formato original da v3.
create or replace view public.hosts_view as
select
  h.id, h.hostname, t.sigla as time, d.nome as dominio, n.nome as negocio,
  h.versao_so, h.tipo_so, h.release, h.versao_java, h.ambiente, h.situacao,
  h.criticidade, h.observacao, h.criado_em, h.atualizado_em,
  coalesce((select array_agg(tc.nome order by tc.nome)
    from public.host_tecnologias ht
    join public.tecnologias tc on tc.id = ht.tecnologia_id
    where ht.host_id = h.id), '{}') as tecnologias
from public.hosts h
left join public.times t on t.id = h.time_id
left join public.dominios d on d.id = h.dominio_id
left join public.negocios n on n.id = h.negocio_id;

commit;
