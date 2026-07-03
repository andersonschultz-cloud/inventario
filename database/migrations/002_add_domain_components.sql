-- ============================================================================
-- 002_add_domain_components.sql
-- Evolução incremental do inventário: verticais, componentes, topologia e fila
-- de importação por domínio. Seguro para executar sobre o banco existente.
-- Não remove nem recria tabelas ou dados atuais.
-- ============================================================================

begin;

-- Normalização conservadora: caixa/acentos e separadores comuns.
-- Não aplica similaridade/fuzzy matching.
create or replace function public.normalize_domain_name(value text)
returns text
language sql
immutable
parallel safe
as $$
  select nullif(
    regexp_replace(
      translate(
        lower(btrim(coalesce(value, ''))),
        'áàâãäéèêëíìîïóòôõöúùûüçñ',
        'aaaaaeeeeiiiiooooouuuucn'
      ),
      '[[:space:]_.-]+', '', 'g'
    ),
    ''
  );
$$;

create or replace function public.normalize_component_name(value text)
returns text
language sql
immutable
parallel safe
as $$
  select nullif(
    regexp_replace(
      translate(
        lower(btrim(coalesce(value, ''))),
        'áàâãäéèêëíìîïóòôõöúùûüçñ',
        'aaaaaeeeeiiiiooooouuuucn'
      ),
      '[[:space:]]+', ' ', 'g'
    ),
    ''
  );
$$;

-- Vertical de negócio é uma entidade diferente do campo negocio já associado
-- aos hosts. Mantemos ambas para não quebrar compatibilidade.
create table if not exists public.verticais_negocio (
  id            bigint generated always as identity primary key,
  nome          text not null,
  nome_normalizado text not null,
  criado_em     timestamptz not null default now(),
  atualizado_em timestamptz not null default now()
);

create unique index if not exists verticais_negocio_nome_normalizado_uidx
  on public.verticais_negocio (nome_normalizado);

alter table public.dominios
  add column if not exists nome_normalizado text,
  add column if not exists vertical_id bigint references public.verticais_negocio(id) on delete set null,
  add column if not exists atualizado_em timestamptz not null default now();

update public.dominios
   set nome_normalizado = public.normalize_domain_name(nome)
 where nome_normalizado is distinct from public.normalize_domain_name(nome);

-- Índice não único: se já existirem colisões normalizadas, a migration não falha.
-- O processador só associa automaticamente quando houver exatamente 1 domínio.
create index if not exists dominios_nome_normalizado_idx
  on public.dominios (nome_normalizado);
create index if not exists dominios_vertical_idx
  on public.dominios (vertical_id);

create table if not exists public.componentes (
  id                         bigint generated always as identity primary key,
  dominio_id                 bigint not null references public.dominios(id) on delete cascade,
  nome                       text not null,
  nome_normalizado           text not null,
  versao_weblogic            text,
  quantidade_hosts_declarada integer check (quantidade_hosts_declarada is null or quantidade_hosts_declarada >= 0),
  origem                     text not null default 'manual',
  source_endpoint            text,
  criado_em                  timestamptz not null default now(),
  atualizado_em              timestamptz not null default now()
);

create unique index if not exists componentes_dominio_nome_wls_uidx
  on public.componentes (dominio_id, nome_normalizado, coalesce(versao_weblogic, ''));
create index if not exists componentes_dominio_idx on public.componentes (dominio_id);
create index if not exists componentes_nome_idx on public.componentes (nome_normalizado);
create index if not exists componentes_weblogic_idx on public.componentes (versao_weblogic);

-- Tecnologia por componente: preparado para uma ou mais tecnologias. A planilha
-- anexada não possui essa coluna, então o importador não inventa valores.
create table if not exists public.componente_tecnologias (
  componente_id bigint not null references public.componentes(id) on delete cascade,
  tecnologia_id bigint not null references public.tecnologias(id) on delete cascade,
  criado_em     timestamptz not null default now(),
  primary key (componente_id, tecnologia_id)
);
create index if not exists ct_tecnologia_idx on public.componente_tecnologias (tecnologia_id);

-- Associação explícita componente x host para uso futuro/manual. Quando vazia,
-- a UI exibe os hosts do domínio, sem afirmar que cada host hospeda o componente.
create table if not exists public.componente_hosts (
  componente_id bigint not null references public.componentes(id) on delete cascade,
  host_id       bigint not null references public.hosts(id) on delete cascade,
  origem        text not null default 'manual',
  criado_em     timestamptz not null default now(),
  primary key (componente_id, host_id)
);
create index if not exists ch_host_idx on public.componente_hosts (host_id);

-- Staging/auditoria de importação. Registros sem associação segura permanecem
-- disponíveis para correção manual pelo administrador.
create table if not exists public.domain_component_imports (
  id                       bigint generated always as identity primary key,
  source_key               text not null unique,
  source_file              text not null,
  source_sheet             text not null,
  source_row               integer not null,
  source_domain            text,
  source_domain_raw        text,
  normalized_source_domain text,
  vertical_business        text,
  component_name           text not null,
  declared_host_count      integer,
  weblogic_version         text,
  source_endpoint          text,
  payload                  jsonb not null default '{}'::jsonb,
  status                   text not null default 'pending'
    check (status in ('pending','matched','ambiguous','invalid','ignored')),
  matched_domain_id        bigint references public.dominios(id) on delete set null,
  component_id             bigint references public.componentes(id) on delete set null,
  error_message            text,
  imported_at              timestamptz not null default now(),
  processed_at             timestamptz,
  updated_by               uuid references auth.users(id) on delete set null
);

create index if not exists dci_status_idx on public.domain_component_imports (status);
create index if not exists dci_normalized_domain_idx on public.domain_component_imports (normalized_source_domain);
create index if not exists dci_matched_domain_idx on public.domain_component_imports (matched_domain_id);
create index if not exists dci_component_idx on public.domain_component_imports (component_id);

-- Triggers de normalização/auditoria.
create or replace function public.prepare_inventory_reference_row()
returns trigger
language plpgsql
as $$
begin
  if tg_table_name = 'dominios' then
    new.nome_normalizado := public.normalize_domain_name(new.nome);
  elsif tg_table_name = 'verticais_negocio' then
    new.nome_normalizado := public.normalize_component_name(new.nome);
  elsif tg_table_name = 'componentes' then
    new.nome_normalizado := public.normalize_component_name(new.nome);
  end if;
  if tg_op = 'UPDATE' then new.atualizado_em := now(); end if;
  return new;
end;
$$;

drop trigger if exists dominios_prepare_reference on public.dominios;
create trigger dominios_prepare_reference
before insert or update of nome on public.dominios
for each row execute function public.prepare_inventory_reference_row();

drop trigger if exists verticais_prepare_reference on public.verticais_negocio;
create trigger verticais_prepare_reference
before insert or update of nome on public.verticais_negocio
for each row execute function public.prepare_inventory_reference_row();

drop trigger if exists componentes_prepare_reference on public.componentes;
create trigger componentes_prepare_reference
before insert or update of nome on public.componentes
for each row execute function public.prepare_inventory_reference_row();

-- Processamento idempotente da staging. Associa somente correspondência única.
create or replace function public.process_domain_component_imports()
returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  r record;
  v_domain_id bigint;
  v_domain_count integer;
  v_vertical_id bigint;
  v_component_id bigint;
  v_matched integer := 0;
  v_pending integer := 0;
  v_ambiguous integer := 0;
  v_invalid integer := 0;
begin
  for r in
    select *
      from public.domain_component_imports
     where status in ('pending','ambiguous','invalid')
        or component_id is null
     order by id
  loop
    begin
      update public.domain_component_imports
         set normalized_source_domain = public.normalize_domain_name(source_domain),
             error_message = null
       where id = r.id;

      if public.normalize_domain_name(r.source_domain) is null
         or public.normalize_component_name(r.component_name) is null then
        update public.domain_component_imports
           set status = 'invalid',
               error_message = 'Domínio ou componente obrigatório ausente',
               processed_at = now()
         where id = r.id;
        v_invalid := v_invalid + 1;
        continue;
      end if;

      select count(*), min(id)
        into v_domain_count, v_domain_id
        from public.dominios
       where nome_normalizado = public.normalize_domain_name(r.source_domain);

      if v_domain_count = 0 then
        update public.domain_component_imports
           set status = 'pending', matched_domain_id = null, component_id = null,
               error_message = 'Nenhum domínio com correspondência normalizada segura',
               processed_at = now()
         where id = r.id;
        v_pending := v_pending + 1;
        continue;
      elsif v_domain_count > 1 then
        update public.domain_component_imports
           set status = 'ambiguous', matched_domain_id = null, component_id = null,
               error_message = 'Mais de um domínio possui a mesma forma normalizada',
               processed_at = now()
         where id = r.id;
        v_ambiguous := v_ambiguous + 1;
        continue;
      end if;

      v_vertical_id := null;
      if nullif(btrim(r.vertical_business), '') is not null then
        insert into public.verticais_negocio (nome, nome_normalizado)
        values (btrim(r.vertical_business), public.normalize_component_name(r.vertical_business))
        on conflict (nome_normalizado) do update set nome = excluded.nome, atualizado_em = now()
        returning id into v_vertical_id;

        update public.dominios
           set vertical_id = v_vertical_id, atualizado_em = now()
         where id = v_domain_id
           and vertical_id is distinct from v_vertical_id;
      end if;

      insert into public.componentes (
        dominio_id, nome, nome_normalizado, versao_weblogic,
        quantidade_hosts_declarada, origem, source_endpoint
      ) values (
        v_domain_id, btrim(r.component_name), public.normalize_component_name(r.component_name),
        nullif(btrim(r.weblogic_version), ''), r.declared_host_count,
        'planilha_componentes', nullif(btrim(r.source_endpoint), '')
      )
      on conflict (dominio_id, nome_normalizado, (coalesce(versao_weblogic, '')))
      do update set
        nome = excluded.nome,
        quantidade_hosts_declarada = coalesce(excluded.quantidade_hosts_declarada, public.componentes.quantidade_hosts_declarada),
        source_endpoint = coalesce(excluded.source_endpoint, public.componentes.source_endpoint),
        atualizado_em = now()
      returning id into v_component_id;

      update public.domain_component_imports
         set status = 'matched', matched_domain_id = v_domain_id,
             component_id = v_component_id, error_message = null,
             processed_at = now()
       where id = r.id;
      v_matched := v_matched + 1;
    exception when others then
      update public.domain_component_imports
         set status = 'invalid', error_message = sqlerrm, processed_at = now()
       where id = r.id;
      v_invalid := v_invalid + 1;
    end;
  end loop;

  return jsonb_build_object(
    'matched', v_matched,
    'pending', v_pending,
    'ambiguous', v_ambiguous,
    'invalid', v_invalid
  );
end;
$$;

-- Associação manual para administradores. Reprocessa somente o item indicado.
create or replace function public.associate_component_import(p_import_id bigint, p_domain_id bigint)
returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  r public.domain_component_imports%rowtype;
  v_vertical_id bigint;
  v_component_id bigint;
begin
  if public.current_role_of_user() <> 'admin' then
    raise exception 'Apenas administradores podem associar domínios pendentes';
  end if;

  select * into r from public.domain_component_imports where id = p_import_id for update;
  if not found then raise exception 'Registro de importação não encontrado'; end if;
  if not exists (select 1 from public.dominios where id = p_domain_id) then
    raise exception 'Domínio de destino não encontrado';
  end if;

  if nullif(btrim(r.vertical_business), '') is not null then
    insert into public.verticais_negocio (nome, nome_normalizado)
    values (btrim(r.vertical_business), public.normalize_component_name(r.vertical_business))
    on conflict (nome_normalizado) do update set nome = excluded.nome, atualizado_em = now()
    returning id into v_vertical_id;
    update public.dominios set vertical_id = v_vertical_id, atualizado_em = now() where id = p_domain_id;
  end if;

  insert into public.componentes (
    dominio_id, nome, nome_normalizado, versao_weblogic,
    quantidade_hosts_declarada, origem, source_endpoint
  ) values (
    p_domain_id, btrim(r.component_name), public.normalize_component_name(r.component_name),
    nullif(btrim(r.weblogic_version), ''), r.declared_host_count,
    'associacao_manual', nullif(btrim(r.source_endpoint), '')
  )
  on conflict (dominio_id, nome_normalizado, (coalesce(versao_weblogic, '')))
  do update set
    nome = excluded.nome,
    quantidade_hosts_declarada = coalesce(excluded.quantidade_hosts_declarada, public.componentes.quantidade_hosts_declarada),
    source_endpoint = coalesce(excluded.source_endpoint, public.componentes.source_endpoint),
    atualizado_em = now()
  returning id into v_component_id;

  update public.domain_component_imports
     set status = 'matched', matched_domain_id = p_domain_id,
         component_id = v_component_id, error_message = null,
         processed_at = now(), updated_by = auth.uid()
   where id = p_import_id;

  return jsonb_build_object('import_id', p_import_id, 'domain_id', p_domain_id, 'component_id', v_component_id);
end;
$$;

-- Views de leitura para o frontend.
create or replace view public.componentes_view as
select
  c.id,
  c.dominio_id,
  d.nome as dominio,
  d.nome_normalizado as dominio_normalizado,
  v.nome as vertical_negocio,
  c.nome,
  c.nome_normalizado,
  c.versao_weblogic,
  c.quantidade_hosts_declarada,
  c.origem,
  c.source_endpoint,
  c.criado_em,
  c.atualizado_em,
  coalesce((
    select array_agg(t.nome order by t.nome)
      from public.componente_tecnologias ct
      join public.tecnologias t on t.id = ct.tecnologia_id
     where ct.componente_id = c.id
  ), '{}') as tecnologias,
  coalesce((
    select array_agg(h.hostname order by h.hostname)
      from public.componente_hosts ch
      join public.hosts h on h.id = ch.host_id
     where ch.componente_id = c.id
  ), '{}') as hosts_explicitos
from public.componentes c
join public.dominios d on d.id = c.dominio_id
left join public.verticais_negocio v on v.id = d.vertical_id;

create or replace view public.import_quality_summary_view as
select
  count(*)::integer as total_importados,
  count(*) filter (where status = 'matched')::integer as associados,
  count(*) filter (where status = 'pending')::integer as pendentes,
  count(*) filter (where status = 'ambiguous')::integer as ambiguos,
  count(*) filter (where status = 'invalid')::integer as invalidos
from public.domain_component_imports;

create or replace view public.domain_summary_view as
select
  d.id,
  d.nome as dominio,
  d.nome_normalizado,
  v.nome as vertical_negocio,
  count(distinct h.id)::integer as total_hosts,
  count(distinct c.id)::integer as total_componentes,
  count(distinct t.id)::integer as total_tecnologias,
  array_remove(array_agg(distinct c.versao_weblogic), null) as versoes_weblogic,
  count(distinct i.id) filter (where i.status in ('pending','ambiguous','invalid'))::integer as itens_pendentes
from public.dominios d
left join public.verticais_negocio v on v.id = d.vertical_id
left join public.hosts h on h.dominio_id = d.id
left join public.componentes c on c.dominio_id = d.id
left join public.componente_tecnologias ct on ct.componente_id = c.id
left join public.tecnologias t on t.id = ct.tecnologia_id
left join public.domain_component_imports i on i.matched_domain_id = d.id
 group by d.id, d.nome, d.nome_normalizado, v.nome;

-- Acrescenta vertical à view existente sem remover colunas antigas.
create or replace view public.hosts_view as
select
  h.id,
  h.hostname,
  t.sigla       as time,
  d.nome        as dominio,
  n.nome        as negocio,
  h.versao_so,
  h.tipo_so,
  h.release,
  h.versao_java,
  h.ambiente,
  h.situacao,
  h.criticidade,
  h.observacao,
  h.criado_em,
  h.atualizado_em,
  coalesce((
    select array_agg(tc.nome order by tc.nome)
      from public.host_tecnologias ht
      join public.tecnologias tc on tc.id = ht.tecnologia_id
     where ht.host_id = h.id
  ), '{}') as tecnologias,
  v.nome as vertical_negocio
from public.hosts h
left join public.times t on t.id = h.time_id
left join public.dominios d on d.id = h.dominio_id
left join public.negocios n on n.id = h.negocio_id
left join public.verticais_negocio v on v.id = d.vertical_id;

-- RLS das novas tabelas.
alter table public.verticais_negocio enable row level security;
alter table public.componentes enable row level security;
alter table public.componente_tecnologias enable row level security;
alter table public.componente_hosts enable row level security;
alter table public.domain_component_imports enable row level security;

-- Policies idempotentes. Editor insere/atualiza; exclusão permanece exclusiva do admin.
do $$ begin
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='verticais_negocio' and policyname='leitura publica verticais') then
    create policy "leitura publica verticais" on public.verticais_negocio for select using (true);
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componentes' and policyname='leitura publica componentes') then
    create policy "leitura publica componentes" on public.componentes for select using (true);
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_tecnologias' and policyname='leitura publica componente tecnologias') then
    create policy "leitura publica componente tecnologias" on public.componente_tecnologias for select using (true);
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_hosts' and policyname='leitura publica componente hosts') then
    create policy "leitura publica componente hosts" on public.componente_hosts for select using (true);
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='domain_component_imports' and policyname='admin le importacoes') then
    create policy "admin le importacoes" on public.domain_component_imports for select to authenticated
      using (public.current_role_of_user() = 'admin');
  end if;

  if not exists (select 1 from pg_policies where schemaname='public' and tablename='verticais_negocio' and policyname='editor insere verticais') then
    create policy "editor insere verticais" on public.verticais_negocio for insert to authenticated
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='verticais_negocio' and policyname='editor atualiza verticais') then
    create policy "editor atualiza verticais" on public.verticais_negocio for update to authenticated
      using (public.current_role_of_user() in ('editor','admin'))
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='verticais_negocio' and policyname='admin exclui verticais') then
    create policy "admin exclui verticais" on public.verticais_negocio for delete to authenticated
      using (public.current_role_of_user() = 'admin');
  end if;

  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componentes' and policyname='editor insere componentes') then
    create policy "editor insere componentes" on public.componentes for insert to authenticated
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componentes' and policyname='editor atualiza componentes') then
    create policy "editor atualiza componentes" on public.componentes for update to authenticated
      using (public.current_role_of_user() in ('editor','admin'))
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componentes' and policyname='admin exclui componentes') then
    create policy "admin exclui componentes" on public.componentes for delete to authenticated
      using (public.current_role_of_user() = 'admin');
  end if;

  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_tecnologias' and policyname='editor insere componente tecnologias') then
    create policy "editor insere componente tecnologias" on public.componente_tecnologias for insert to authenticated
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_tecnologias' and policyname='editor atualiza componente tecnologias') then
    create policy "editor atualiza componente tecnologias" on public.componente_tecnologias for update to authenticated
      using (public.current_role_of_user() in ('editor','admin'))
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_tecnologias' and policyname='admin exclui componente tecnologias') then
    create policy "admin exclui componente tecnologias" on public.componente_tecnologias for delete to authenticated
      using (public.current_role_of_user() = 'admin');
  end if;

  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_hosts' and policyname='editor insere componente hosts') then
    create policy "editor insere componente hosts" on public.componente_hosts for insert to authenticated
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_hosts' and policyname='editor atualiza componente hosts') then
    create policy "editor atualiza componente hosts" on public.componente_hosts for update to authenticated
      using (public.current_role_of_user() in ('editor','admin'))
      with check (public.current_role_of_user() in ('editor','admin'));
  end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='componente_hosts' and policyname='admin exclui componente hosts') then
    create policy "admin exclui componente hosts" on public.componente_hosts for delete to authenticated
      using (public.current_role_of_user() = 'admin');
  end if;

  if not exists (select 1 from pg_policies where schemaname='public' and tablename='domain_component_imports' and policyname='admin atualiza importacoes') then
    create policy "admin atualiza importacoes" on public.domain_component_imports for update to authenticated
      using (public.current_role_of_user() = 'admin')
      with check (public.current_role_of_user() = 'admin');
  end if;
end $$;

-- O processador de lote é executado pelo SQL Editor/importador; a RPC manual é
-- disponibilizada somente a usuários autenticados e valida role admin internamente.
revoke all on function public.process_domain_component_imports() from public, anon, authenticated;
revoke all on function public.associate_component_import(bigint, bigint) from public, anon;
grant execute on function public.associate_component_import(bigint, bigint) to authenticated;

commit;

-- Validação sugerida após executar:
-- select count(*) from public.componentes;
-- select status, count(*) from public.domain_component_imports group by status order by status;
-- select * from public.domain_summary_view order by total_componentes desc limit 20;
