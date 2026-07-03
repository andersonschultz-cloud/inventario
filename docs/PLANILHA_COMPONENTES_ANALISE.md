# Análise da planilha de componentes

## Estrutura encontrada

- Abas analisadas: Planilha1
- Colunas exatas: `Vertical de negócio`, `domínio`, `Componentes`, `Quantidade de hosts `, `Versão do Weblogic`
- Linhas de componentes: **515**
- Blocos de domínio: **106**
- Domínios distintos na planilha: **100**
- Verticais distintas: **11**
- Registros associados automaticamente ao inventário atual: **477**
- Registros pendentes/ambíguos: **38**
- Repetições exatas de componente no mesmo domínio/versão: **19** (tratadas por upsert)

## Decisão de modelagem

A planilha **não contém uma coluna de hostname**. Ela informa apenas a quantidade de hosts no bloco do domínio. Por segurança, a importação:

1. relaciona cada componente ao domínio;
2. preserva `Quantidade de hosts` como valor declarado;
3. usa os hosts já associados ao domínio para a visualização da topologia;
4. não cria vínculos componente-host fictícios;
5. deixa a tabela `componente_hosts` disponível para associações explícitas futuras.

## Normalização

A correspondência automática remove espaços, acentos e diferenças entre maiúsculas/minúsculas, hífen, ponto e underscore. Não utiliza similaridade aproximada. Uma associação só é automática quando existe exatamente um domínio com a mesma forma normalizada.

## Domínios repetidos em blocos

- `alcada_domain`: 2 blocos
- `analise_domain`: 2 blocos
- `app_doccomp_domain`: 2 blocos
- `appreccred_domain`: 2 blocos
- `bureau_domain`: 2 blocos
- `enginecontabil_domain`: 2 blocos

## Domínios pendentes no inventário atual

- `bip_domain`
- `contaspg_domain`
- `ecmportal_domain`
- `eventos_domain`
- `osb3crel_domain`
- `osbcorp_domain`
- `webcenter_domain`
- `ws_cobranca_domain`
- `wsbndes12c2_domain`

## Versões WebLogic encontradas

- `10.3.6.0`: 343 componentes
- `12.1.3.0.0`: 101 componentes
- `12.2.1.3.0`: 34 componentes
- `12.1.3.0`: 27 componentes
- `10.3.4.0`: 8 componentes
- `12.2.1.0.0`: 2 componentes

## Observações do parser

- Nenhuma inconsistência estrutural adicional.
