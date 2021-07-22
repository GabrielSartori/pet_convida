# Transição de Estatística p/ Ciência de Dados
# QUEM sou eu
    + UFPR
    + MAPI
    + JAMES DELIVERY

# MAPI 

+ Entrei na empresa, sem ter cnpj, nome,  eram 5 sócios, 2 desenvolvedores e 1 cientista de dados
+ A empresa só estava construindo a base de dados em curitiba e São Paulo (Capital)
+ A empresa era apenas 1 sala. 
+ A empresa estava definindo qual produto vender? Dados para fundo de imobiliarios, estudo para incorporadores, indicador MAPI de raio-x imobiliário?
+ A empresa iniciando e já existindo uma área de Dados

# James Delivery 

+ Empresa criando uma área de Dados 
+ Mais 3 cientista de dados
+ A empresa passou por experimentos de entrega de análise
+ Tinha áreas que usava dados para 'maquiar os indicadores'
+ Baixa integração com tecnologia 
+ Mais de 10 pessoas no time de dados (2 engenheiros, 4 cientistas e 8 analistas, 1 gerente e 1 diretor)



<!-- Ciclos de Atividades --> 
<!-- Papel do João -->
<!-- 1¹ Parte -->
O ciclo de organização de atividades, baseava no líder técnico reunindo com as áreas de negócios para definir as metas do semestre. 
O lider repassava para o time de ciencia que iria desenvolvendo durante o semestre e apresentava os resultados para a equipe de negocio 
Projeto tinha uma porcentagem de meta 

Problema:
   Poucas reuniões com as áreas de negócio durante o ciclo de desemvolvimento de análise 
   Apenas o líder tinha real nocão do que a equipe da área realmente Queria
   Não havia cientista fixo por área de negócio
  <!-- Sem iniciativa própria dos cientistas -->
   
Apresentação dos Resultados: 
  estudos
  API
  Novo Banco de dados

<!-- 2¹ Parte -->
  Optamos por ciclo de 6 semanas por projeto (import, eda, model, comunicar)
  Participar das reuniões de negócios (FUP) Semanal 
  Oportunidade de apresentar os resultados parciais 
  Fixar cientista de dados por área

<!-- 3² Parte -->
Começando a implementar na área de produto, deixar de fazer apenas estudo. 
Começar a documentar os modelos pelo mlflow, rotinas no airflows

Todas essas etapas em apresentação em ppt.....

<!-- Time de Analista -->

<!-- 1° Parte -->

Ciclo trimestral
O time de analista sofreu várias modificações: 
NUm primeiro momento, a demanda chegava ao lider dos analistas e eram repassadas. Diferentemente de ciencia de dados de análise de dados, 
o time de analista pegava atividades de criar paineis. Os paineis poderiam ter infinitas combinações e novos desdobramentos e oque não era colocado no escopo da atividade. 
Dai como eram demandas não planejadas acabava encavalando as outras atividades. 
Os analistas de dados do James, poderiam fazer múltiplas funções (engenharia, e ciencia de dados)

<!-- 2° Parte -->
Ciclo trimestral
Criaram um backlog de demandas (urgencia, pontual.)
Mais problema..... Mais Backlog do que planejamento
Pouco cobrança dos dashboards feito, e muito refatoramento
Os dashboards eram só para análises pontuais
, queriam os dados completos para fazer estudo por conta própria

<!-- 3° Parte -->

Cortaram o backlog Geral. (Tipo chamada de TI)
Ciclo a cada duas semanas (Inicio, meio e fim)
Aulas de Democratização de Dados, explicação de sql, etapas de análise de dados e estatpística 

o horizonte era:

Descritiva -> Diagnóstica -> Preditiva -> Prescritiva
(Área de Negócio) -> (Analista de Dados)  -> (Cientista de Dados) -> (Cientista de Dados)

<!-- Fim do Ciclo de Atividade --> 

<!-- Rituais de Dados --> 
<!-- Rituais -->

<!-- Aprendizado das Demandas de Dados -->
<!-- O que as outras áreas querem na demanda --> 



# Tecnologia 
<!-- -->

A primeira grande diferença foi o armazenamento de dados, realizar consultas de dados em banco de dados. Lidar com Base de Dados como Mongo e Elastic Search. Vale a pena pegar todos os dados? Quanto tempo demorar pra fazer a query. Na estatística estamos acostumuados com poucos dados, em formato csv, txt e rds. O arquivo é único, imutável e geralmente recebe um nome genérico. O tamanho do arquivo não é muito grande geralmente menos de 10.000 linhas e no formato tabular (linha e coluna completo).

O bom uso do Banco de Dados implica em sumarizar a informação, fazer transformações e criação de novas variáveis no momento da requisição do dado. e não depois usando `tidyverse`

Outro fator limitante na maneira que a gente manipula o dado é trabalhar somente no formato data.frame. O estatístico gosta do dado tabular, cada linha e colunas são completas. Bases de dados NOSQL e arquivos json te forçam a repensar a estrutura do dado tabular. Basicamente são documentos de chave e valor com n possíveis variáveis por documento e o valor pode ser mais de um array.

O pipeline que conhecemos é o do tidyverse, e um fator comum é colocar todos os passos (import, tidy, transform, model) no mesmo arquivo. Como na graduação aprendemos R, o R não te força guia de estilo, formatação e identação. E como consequência teus scripts passam fácil de 1000 linhas.... 

Uma ótima página para aprender e melhor os códigos em [R][STYLE_GUIDE_R]. Pessoas de computação geralmente vem do python e tem códigos organizados. 

Outro tendâo de Aquiles na base de tecnologia é disponibilizar os resultados, rotinas de análises, como transferir o meu resultado para a área de negócio. 

Por exemplo, git te força a organizar teu código, usar ferramentas de gerenciamento de atividade num fluxo de pipeline como airflow. Como enviar os resultados? como disponibilizar as novas predições?

Uma forma de Praticar essa parte de rotina é praticar scraping. Scraping geralmente o dado será atualizado, se for de uma api, pratica no formato lista, aonde salvar os resultados? Como apresentar os resultados?

Docker - Congelar todo sua aplicacao em uma imagem (Seta sistema operacional, versao do R, e executa o teu script)
Mlflow - Gerenciar modelos, criar experimentos, salvar o modelo
Airflow - Agendador Acíclico de tarefa
Plumber/FastApi = Disponibilizar os resultados em API

# Análise de Dados

Passar pelas matérias da graduação  


