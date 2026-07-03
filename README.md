# Inventário de Hosts — Dashboard, Exploração e Topologia

Aplicação estática para consulta e gestão do inventário de servidores, integrada ao Supabase. A versão 5 reconstrói toda a experiência visual com navegação lateral, dashboard executivo premium, órbita 3D animada, identidade Sicredi, melhor hierarquia visual e responsividade, preservando integralmente a camada de dados existente. As versões anteriores adicionaram componentes por domínio, gráficos filtrados e a topologia correta domínio → componentes e domínio → hosts.

**Stack preservada:** HTML, CSS e JavaScript ES Modules · Supabase/PostgreSQL/Auth/RLS · Chart.js · GitHub Pages. Não há dependências de runtime no npm.

---


## Atualização visual v5 — nenhuma alteração no Supabase

Esta atualização modifica somente o frontend e o processo de build. **Não execute migration, schema ou importação para aplicar o redesign.**

O pacote continua usando exatamente as mesmas consultas, views, autenticação, roles e policies já configuradas. A integração permanece em `src/config/supabase.js` e a camada de dados em `src/services/api.js`.

Principais mudanças:

- nova estrutura com menu lateral, cabeçalho operacional e navegação mobile;
- dashboard reconstruído com hierarquia executiva e cards premium;
- órbita 3D feita em HTML/CSS, com rotação contínua e inclinação por ponteiro;
- pausa automática da animação fora da tela e suporte a `prefers-reduced-motion`;
- logo local do Sicredi, sem depender de imagem externa durante a execução;
- gráficos e páginas internas reestilizados sem valores mockados;
- pasta `assets/` adicionada ao build e à publicação;
- preservação de Dashboard, Exploração, Topologia, Administração, CRUD e exportações.

## Arquitetura adotada

```text
GitHub Pages
├── Dashboard executivo
├── Exploração e CRUD de hosts
├── Topologia domínio → componentes
│                    └→ hosts
└── Administração de associações pendentes
              │
              ▼
Supabase
├── hosts / dominios / tecnologias / negocios / times (existentes)
├── verticais_negocio
├── componentes
├── componente_tecnologias
├── componente_hosts (estrutura legada preservada, não usada pela topologia)
└── domain_component_imports (staging, auditoria e pendências)
```

A navegação usa rotas com hash (`#/dashboard`, `#/explorar`, `#/topologia` e `#/admin`), evitando erro 404 ao atualizar a página no GitHub Pages.

### Hierarquia da topologia

A planilha `Componentes.xlsx` não possui uma coluna de hostname; ela informa apenas `Quantidade de hosts `. Para não criar relações falsas, a topologia usa esta estrutura:

```text
Domínio
├── Componentes
└── Hosts
```

- cada componente é relacionado somente ao domínio;
- cada host é relacionado somente ao domínio;
- os hosts aparecem uma única vez no ramo do domínio;
- componentes não herdam nem repetem a lista de hosts;
- a quantidade declarada da planilha continua preservada como dado de origem;
- a tabela `componente_hosts`, caso já exista, é mantida por compatibilidade, mas não é usada pela topologia.

A análise completa está em [`docs/PLANILHA_COMPONENTES_ANALISE.md`](docs/PLANILHA_COMPONENTES_ANALISE.md).

---

## Aplicação

### Dashboard executivo

A primeira página contém somente indicadores e gráficos reais:

- hosts, domínios, componentes, tecnologias, pendências e incompletude;
- domínios por vertical;
- componentes e hosts por domínio;
- tecnologias mais utilizadas;
- versões WebLogic, Java e sistema operacional;
- famílias de sistema operacional.

Os gráficos são clicáveis e abrem a exploração com o filtro correspondente.

### Explorar inventário

Preserva o CRUD existente e adiciona filtros por:

- domínio, componente, host, tecnologia e vertical;
- versão WebLogic, Java e sistema operacional;
- família do sistema operacional, ambiente, time e situação;
- estado operacional: ligados, desativados e sem status;
- saúde do SO: suportado, suporte estendido, fora de suporte e não classificado.

A área recalcula, a cada filtro, os KPIs e gráficos de hosts ligados/desativados, saúde do SO, hosts por domínio e versões de SO. Os cards e gráficos são clicáveis e aplicam o filtro correspondente. CSV, PNG e PDF respeitam os filtros atuais e o relatório usa os gráficos da própria visão filtrada.

### Critério de ciclo de vida do SO

A classificação é derivada da versão cadastrada no host:

- `RHEL 5/6` e `CentOS 7/8`: fora de suporte;
- `RHEL 7`: suporte estendido/atenção;
- `RHEL 8/9` e `Rocky Linux 8+`: suportado;
- família ou versão desconhecida: não classificado.

Essa melhoria é somente de frontend e não exige nova migration no Supabase.

### Topologia

Cada domínio apresenta:

- vertical de negócio;
- total de componentes e hosts;
- tecnologias e versões WebLogic;
- status de completude;
- dois ramos independentes: componentes do domínio e hosts do domínio;
- componentes expansíveis sem repetição de servidores;
- hosts listados uma única vez com ambiente, Java, sistema operacional e situação;
- resumo de hosts ligados, desativados e sem status.

A visualização usa acordeões e agrupamentos, evitando renderizar centenas de ícones repetidos.

### Administração

Visível somente para `admin`. Exibe os domínios importados sem correspondência segura e permite associar todos os componentes do mesmo domínio de origem a um domínio existente. A operação chama uma RPC protegida por role no banco.

---

## Banco de dados existente

### Ordem de execução

No **SQL Editor do Supabase**, execute nesta ordem:

1. `database/migrations/002_add_domain_components.sql`
2. `database/imports/002_components_from_planilha.sql`

Não execute novamente `schema.sql` nem `seed.sql` no ambiente já configurado.

### O que a migration faz

- preserva hosts, usuários, roles, lookups e policies existentes;
- adiciona normalização ao cadastro de domínios;
- cria verticais, componentes e relacionamentos;
- cria staging/auditoria de importação;
- adiciona índices e triggers;
- atualiza `hosts_view` de forma compatível, acrescentando `vertical_negocio`;
- cria `componentes_view`, `domain_summary_view` e o resumo público de qualidade `import_quality_summary_view`;
- adiciona RLS para viewer/editor/admin;
- não usa `drop table` na migration de instalação.

### Validação após a migration/importação

```sql
select count(*) as componentes from public.componentes;

select status, count(*)
from public.domain_component_imports
group by status
order by status;

select *
from public.domain_summary_view
order by total_componentes desc
limit 20;
```

Com o inventário anexado, a análise local encontrou 515 linhas, 477 correspondências automáticas e 38 registros pendentes. Após o upsert e a remoção de repetições exatas, são 458 componentes associados distintos; os pendentes estão distribuídos em nove domínios ausentes no inventário atual.

### Rollback somente da migration 002

Use apenas se realmente precisar remover a evolução:

```text
database/migrations/002_add_domain_components_rollback.sql
```

O rollback remove as tabelas e dados novos de componentes/importação, mas preserva hosts, usuários, times, tecnologias e negócios. Faça backup antes de executar.

---

## Importação da planilha

O arquivo já gerado para a planilha anexada é:

```text
database/imports/002_components_from_planilha.sql
```

Ele é idempotente:

- `source_key` evita duplicar linhas da mesma origem;
- componente usa upsert por domínio + nome normalizado + versão WebLogic;
- reprocessamento atualiza dados declarados sem duplicar componentes;
- domínios sem correspondência permanecem em `domain_component_imports`.

### Gerar novamente após atualizar a planilha

O script não conecta ao Supabase, não usa `service_role` e usa apenas a biblioteca padrão do Python:

```bash
python3 scripts/import_components.py "imports/Componentes.xlsx" \
  --hosts-json data/hosts.json \
  --sql-out database/imports/002_components_from_planilha.sql \
  --json-out data/components.json \
  --report-out docs/PLANILHA_COMPONENTES_ANALISE.md
```

Depois, execute novamente o SQL gerado no SQL Editor. O JSON atualiza o modo demo publicado no GitHub Pages.

### Normalização de domínio

A associação automática:

- remove espaços no início/fim;
- ignora caixa e acentos;
- trata espaço, hífen, ponto e underscore como equivalentes;
- não usa fuzzy matching;
- só associa quando existe exatamente um domínio com a forma normalizada.

Exemplos equivalentes:

```text
bureau_domain
BUREAU-DOMAIN
bureau.domain
bureau domain
```

### Consultar pendências

```sql
select id, source_domain, component_name, weblogic_version, error_message
from public.domain_component_imports
where status <> 'matched'
order by source_domain, source_row;
```

Também é possível resolvê-las pela página **Administração**, usando uma conta com role `admin`.

---

## Segurança e permissões

- `viewer`: leitura;
- `editor`: inserir e atualizar hosts, componentes e associações;
- `admin`: tudo do editor, exclusões e associação manual de importações.

A interface esconde ações sem permissão, mas a proteção real está nas policies RLS e na função `associate_component_import`.

A chave `service_role` não é usada no frontend nem é necessária para o processo fornecido. O frontend utiliza somente URL e chave `anon` em `src/config/supabase.js`.

---

## Rodar localmente

```bash
python3 -m http.server 8000
```

Acesse `http://localhost:8000`. Sem Supabase configurado, a aplicação usa:

- `data/hosts.json`
- `data/components.json`

O modo demo é somente leitura.

---

## Build e testes

O projeto continua estático, sem bundler de runtime. Os testes validam dados, normalização, topologia, ciclo de vida do SO e a estrutura da nova interface:

```bash
npm test
npm run build
```

`npm run build`:

- valida a sintaxe de todos os módulos JavaScript;
- verifica imports locais;
- verifica referências essenciais do HTML;
- gera `dist/` pronto para publicação.

---

## GitHub Pages

A opção mais simples continua sendo publicar a raiz da branch `main`. As rotas usam `HashRouter` manual, então atualizar `#/topologia` ou `#/explorar` não gera 404.

Também é possível publicar a pasta `dist/` gerada pelo build em um workflow de Pages.

---

## Testes funcionais recomendados

1. **Domínio exato:** importe `bureau_domain` e confira o componente na topologia.
2. **Maiúsculas/minúsculas:** teste `BUREAU_DOMAIN`.
3. **Separadores:** teste `bureau-domain`, `bureau.domain` e `bureau domain`.
4. **Sem correspondência:** confirme status `pending` e presença em Administração.
5. **Vários componentes:** expanda um domínio com múltiplos componentes.
6. **Vários hosts:** expanda um domínio e confirme que os hosts aparecem uma única vez no ramo “Hosts do domínio”.
7. **Dashboard:** valide KPIs e todos os oito gráficos.
8. **Navegação:** clique em uma barra de domínio e confirme o filtro em Explorar.
9. **Topologia:** teste os ramos independentes de componentes e hosts, a expansão de componente e a abertura de host.
10. **Permissões:** valide viewer, editor e admin.
11. **Responsividade:** Safari no iPhone e Chrome no Android, retrato e paisagem.
12. **GitHub Pages:** abra diretamente uma URL com `#/topologia` e atualize a página.

---

## Arquivos principais das versões 4, 4.1 e 4.2

### Criados

- `database/migrations/002_add_domain_components.sql`
- `database/migrations/002_add_domain_components_rollback.sql`
- `database/imports/002_components_from_planilha.sql`
- `data/components.json`
- `docs/PLANILHA_COMPONENTES_ANALISE.md`
- `scripts/import_components.py`
- `imports/Componentes.xlsx`
- `scripts/build.mjs`
- `src/router.js`
- `src/components/topology.js`
- `src/components/exploreAnalytics.js`
- `src/components/admin.js`
- `src/utils/technologyIcons.js`
- `tests/normalization.test.mjs`
- `tests/data.test.mjs`
- `tests/risk.test.mjs`
- `package.json`

### Alterados

- `index.html`
- `README.md`
- `src/app.js`
- `src/services/api.js`
- `src/services/auth.js`
- `src/components/dashboard.js`
- `src/components/export.js`
- `src/components/filters.js`
- `src/components/table.js`
- `src/styles/main.css`
- `src/utils/helpers.js`
