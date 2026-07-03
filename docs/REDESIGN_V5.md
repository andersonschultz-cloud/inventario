# Redesign premium v5

## Escopo

Reconstrução completa da camada visual sem alteração no Supabase.

## Estrutura visual

```text
Aplicação
├── Menu lateral
│   ├── Logo Sicredi
│   ├── Dashboard
│   ├── Explorar inventário
│   ├── Topologia
│   └── Administração, conforme permissão
├── Cabeçalho operacional
│   ├── Contexto da página
│   ├── Acesso rápido à busca
│   ├── Exportações
│   └── Autenticação
└── Conteúdo
    ├── Dashboard executivo com órbita 3D
    ├── Exploração com gráficos filtrados
    ├── Topologia domínio → componentes e domínio → hosts
    └── Administração de pendências
```

## Órbita 3D

A órbita utiliza somente HTML, CSS e JavaScript nativo:

- esfera com profundidade, grades e núcleo luminoso;
- três anéis com rotações independentes;
- partículas e pontos de telemetria;
- inclinação por ponteiro em dispositivos compatíveis;
- pausa quando sai da área visível;
- redução de movimento conforme preferência do sistema;
- nenhuma biblioteca 3D ou WebGL adicional.

## Banco

Nenhuma tabela, view, função, policy ou dado é alterado nesta versão.

## Publicação

Execute:

```bash
npm test
npm run build
```

Publique o conteúdo da pasta `dist/` ou a raiz, conforme o fluxo atual do repositório.
