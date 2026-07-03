-- ============================================================
-- Inventário de Hosts — Schema Supabase (PostgreSQL)
-- Executar no SQL Editor do Supabase ANTES do seed.sql
-- ============================================================

-- ---------- Tabelas de referência (lookups) ----------

create table if not exists public.times (
  id         bigint generated always as identity primary key,
  sigla      text not null unique,
  nome       text not null,
  criado_em  timestamptz not null default now()
);

create table if not exists public.tecnologias (
  id         bigint generated always as identity primary key,
  nome       text not null unique,
  criado_em  timestamptz not null default now()
);

create table if not exists public.dominios (
  id         bigint generated always as identity primary key,
  nome       text not null unique,
  criado_em  timestamptz not null default now()
);

create table if not exists public.negocios (
  id         bigint generated always as identity primary key,
  nome       text not null unique,
  criado_em  timestamptz not null default now()
);

-- ---------- Tabela principal ----------

create table if not exists public.hosts (
  id             bigint generated always as identity primary key,
  hostname       text not null,
  time_id        bigint references public.times(id) on delete set null,
  dominio_id     bigint references public.dominios(id) on delete set null,
  negocio_id     bigint references public.negocios(id) on delete set null,
  versao_so      text,                          -- ex.: RedHat-7.9
  tipo_so        text,                          -- ex.: RHEL, CentOS, Rocky
  release        text,                          -- ex.: WLS 11G, SOA 11G
  versao_java    text,                          -- ex.: JDK 8
  ambiente       text not null default 'PROD',  -- PROD | NPROD | HOM | DEV
  situacao       text default 'Ligado',         -- Ligado | Desligado | Removido | Remover (validar)
  criticidade    text,                          -- Alta | Média | Baixa
  observacao     text,
  criado_em      timestamptz not null default now(),
  atualizado_em  timestamptz not null default now()
);

-- Hostname único (case-insensitive) — evita duplicidade
create unique index if not exists hosts_hostname_unique
  on public.hosts (lower(hostname));
-- Constraint nominal (necessária para o "on conflict (hostname)" do seed)
do $$ begin
  alter table public.hosts add constraint hosts_hostname_key unique (hostname);
exception when duplicate_table or duplicate_object then null;
end $$;

-- Índices para os filtros mais usados
create index if not exists hosts_dominio_idx   on public.hosts (dominio_id);
create index if not exists hosts_time_idx      on public.hosts (time_id);
create index if not exists hosts_versao_so_idx on public.hosts (versao_so);
create index if not exists hosts_tipo_so_idx   on public.hosts (tipo_so);
create index if not exists hosts_situacao_idx  on public.hosts (situacao);
create index if not exists hosts_java_idx      on public.hosts (versao_java);

-- ---------- N:N host x tecnologia ----------
-- Um host pode ter várias tecnologias (ex.: Oracle_SOA + Oracle_BAM + Oracle_OSB)

create table if not exists public.host_tecnologias (
  host_id       bigint not null references public.hosts(id) on delete cascade,
  tecnologia_id bigint not null references public.tecnologias(id) on delete cascade,
  primary key (host_id, tecnologia_id)
);

create index if not exists ht_tecnologia_idx on public.host_tecnologias (tecnologia_id);

-- ---------- Perfis / Roles ----------
-- viewer: só leitura | editor: insere/edita | admin: tudo, inclusive delete

create table if not exists public.profiles (
  id         uuid primary key references auth.users(id) on delete cascade,
  email      text,
  role       text not null default 'viewer' check (role in ('viewer','editor','admin')),
  criado_em  timestamptz not null default now()
);

-- Cria o profile automaticamente quando um usuário se registra
create or replace function public.handle_new_user()
returns trigger
language plpgsql security definer set search_path = public as $$
begin
  insert into public.profiles (id, email) values (new.id, new.email)
  on conflict (id) do nothing;
  return new;
end; $$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- Helper: role do usuário logado
create or replace function public.current_role_of_user()
returns text language sql stable security definer set search_path = public as $$
  select coalesce((select role from public.profiles where id = auth.uid()), 'viewer');
$$;

-- ---------- Trigger atualizado_em ----------

create or replace function public.set_atualizado_em()
returns trigger language plpgsql as $$
begin
  new.atualizado_em = now();
  return new;
end; $$;

drop trigger if exists hosts_atualizado_em on public.hosts;
create trigger hosts_atualizado_em
  before update on public.hosts
  for each row execute function public.set_atualizado_em();

-- ---------- View de leitura (join pronto para o frontend) ----------

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
  coalesce(
    (select array_agg(tc.nome order by tc.nome)
       from public.host_tecnologias ht
       join public.tecnologias tc on tc.id = ht.tecnologia_id
      where ht.host_id = h.id),
    '{}'
  ) as tecnologias
from public.hosts h
left join public.times    t on t.id = h.time_id
left join public.dominios d on d.id = h.dominio_id
left join public.negocios n on n.id = h.negocio_id;

-- ============================================================
-- RLS — Row Level Security
-- Leitura pública | escrita para editor/admin | delete só admin
-- ============================================================

alter table public.hosts             enable row level security;
alter table public.host_tecnologias  enable row level security;
alter table public.times             enable row level security;
alter table public.tecnologias       enable row level security;
alter table public.dominios          enable row level security;
alter table public.negocios          enable row level security;
alter table public.profiles          enable row level security;

-- Leitura pública (anon + authenticated)
create policy "leitura publica hosts"        on public.hosts            for select using (true);
create policy "leitura publica ht"           on public.host_tecnologias for select using (true);
create policy "leitura publica times"        on public.times            for select using (true);
create policy "leitura publica tecnologias"  on public.tecnologias      for select using (true);
create policy "leitura publica dominios"     on public.dominios         for select using (true);
create policy "leitura publica negocios"     on public.negocios         for select using (true);

-- Escrita: editor ou admin
create policy "insert editor hosts" on public.hosts for insert to authenticated
  with check (public.current_role_of_user() in ('editor','admin'));
create policy "update editor hosts" on public.hosts for update to authenticated
  using (public.current_role_of_user() in ('editor','admin'));

create policy "insert editor ht" on public.host_tecnologias for insert to authenticated
  with check (public.current_role_of_user() in ('editor','admin'));
create policy "delete editor ht" on public.host_tecnologias for delete to authenticated
  using (public.current_role_of_user() in ('editor','admin'));

-- Cadastro de lookups: editor ou admin
create policy "insert editor tecnologias" on public.tecnologias for insert to authenticated
  with check (public.current_role_of_user() in ('editor','admin'));
create policy "insert editor dominios" on public.dominios for insert to authenticated
  with check (public.current_role_of_user() in ('editor','admin'));
create policy "insert editor negocios" on public.negocios for insert to authenticated
  with check (public.current_role_of_user() in ('editor','admin'));
create policy "insert editor times" on public.times for insert to authenticated
  with check (public.current_role_of_user() in ('editor','admin'));

-- Delete de hosts: só admin
create policy "delete admin hosts" on public.hosts for delete to authenticated
  using (public.current_role_of_user() = 'admin');

-- Profiles: cada um vê o próprio; admin vê e altera todos
create policy "ver proprio profile" on public.profiles for select to authenticated
  using (id = auth.uid() or public.current_role_of_user() = 'admin');
create policy "admin altera profiles" on public.profiles for update to authenticated
  using (public.current_role_of_user() = 'admin');

-- ============================================================
-- Pós-instalação (manual):
-- 1. Crie seu usuário via app ou no painel Auth do Supabase.
-- 2. Promova-se a admin:
--    update public.profiles set role = 'admin' where email = 'seu@email.com';
-- ============================================================
