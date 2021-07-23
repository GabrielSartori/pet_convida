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

# Visão de Negócio 




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



# Ciclos de Atividades james Delivery
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


# Viés do Estatístico 

<!-- Viés de um Estatístico-->

levar a ferro e fogo, você se vê contra parede, quando os pressuspostos não atendem, deixa de prestar atenção no problema do que  no negócio e só foca em validade estatística. 
existem etapas de modelagem, não é numa primeira tentativa de modelagem que 'resolve'  
Aprenda resolver as perguntas já formuladas! Se tornamos escravos do método
Os exemplos de pesquisa responder um ponto específico e não nos fazem pensar em escalabilidade,
O estatistico se poupa a entregar a análise apenas dizendo diferença entre as variáveis. A parte mais impactante pra o negócio é o depois, como muda a forma de pensar, abre novas fronteiras de estudo, quais cenários posso antever. 
Mas quem faz as perguntas?
Estatísticamente é válido, mas tem sentido pro negócio? 

+ Excesso de pressuposto  <!-- Gráficos plot(m0) -->
+ A entrega, ou resultado final é o Resumo do Modelo <!-- IML -->
+ Realizar a Estatística Descritiva p/direcionar a modelagem e não criar hipóteses. (Gráfico de Densidade)
+ Resolve problemas já formulados!  

"Dado que foi capturado o dado "x, y, z" e que queira realizar um estudo de qual variável afeta tal variável.s "

"Dado um estudo clínico em que os pacientes foram submetidos aos seguintes procedimentos, qual a taxa de reicidencia da doença"


<!-- Casos Análises de Dados -->

Matriz Curricular: 
Durante a graduação de Estatística, a partir das matérias do 5 periodo entra a parte da modelagem, que é a parte que a gente aprender diferentes métodos de estimação, para prever e explicar.
Basicamente aprende quais as motivações se encaixa, geralmente em pesquisa, os métodos de estimação, pressupostos, interpretação e as ramificações. 

Porém uma etapa sempre ressaltada, e sem concessão é os pressuspostos. Qualquer análise possui um slide reforça o atendimento aos pressupostos. 

Como parte do tempo que vivi na graduação, foi ver palestras do LEG e o estatístico desenvolve um desejo para o atendimento de pressuposto, porque tenho validade, para interpretar, prever e prescrever.

Um vício que o estatístico desenvolve é apenas prestar atenção para os pressuspostos.

Aprenda resolver as perguntas já formuladas!

O estatistico se poupa a entregar a análise apenas dizendo diferença entre as variáveis. A parte mais impactante pra o negócio é o depois, como muda a forma de pensar, abre novas fronteiras de estudo, quais cenários posso antever. 

A interpretação do resultado é puramente técnica. A saído do modelo, basta para o estatístico. (Saída de Output)

O que o mercado quer, KPI, precisamos entregar valor para os dados.... 

A estatística descritiva é algo direcionado para escolha de modelo. 
A estatística descritiva permite direcionar e descartar hipótese (alguns exemplos no trampo)

Pra realizar estatística descritiva adequada, precisamos tem um bom leque de gráficos (Recomendação de Leitura)

<!-- Caso Frete -->
Pergunta aberta: "Precisamos rever o preço do frete do estabelecimento comercial"
A equipe comercial queria rever o preço do frete de estabelecimentos comerciais ia ganhar mais dinheiro..... 

primeiro ponto  cada etregador 8% da entrega para o james, Logo aumentar o preço seria esse ganho. outro ponto nosso frete é mais barato do que a concorrência. dai criamos um indicador de saude financeira de pedido. 
(Comissao_Frete + Comissao_Restaurante - Desconto) [-inf, Inf]

Dai agente separou por quantidade de pedidos, quanto mais pedido faço mais eu perco dinheiro. (Crescimento a qualquer custo)

<!-- Caso Opcionais -->

UM problema que surgiu foi, como destacar a falta de opcionais em um bairro. Em outras palavras uma análise descritiva para valores faltantes. Algumas questões, poderia ser um heatMap por Opcional e Nuvem de Palavras por Bairro.

<!-- Caso Presenças do Opcionais-->

Na precificicação de imóveis cade elemento tem uma contribuicao de imovel, no caso casa de boneca estava negativo, então 


<!--Frete da Concorrência  -->
<!-- Criando Cenários -->
Até 3km... (distancia que não era de rota).. 
Criamos um crawler que extrai os dados da concorrência (ifood), para analisar o valor do frete. Criamos um modelo com distancia e produto levado. O site do ifood são 5 componentes que explicam o valor do frete, (Distancia, modal, tempo, horario, número de pedidos). 

Com as variáveis criamos cenários, para o nosso elenco de restaurantes, mas se mostrou inviável, pq temos muitos pedidos com ticket baixo e poucos pedidos com ticket alto. 

Mantendo a mesma base de dados, não valia a pena


<!-- Mantendo a Graduação de Estatística-->

+ Matéria de Empreendedorismo
+ Rotinas Computacionais 
  
+ Matérias de Análise de Dados (São Fodas)



class: Top, left
background-image: url(img/desejo_de_um_estatístico.jpg)
background-size: cover

## O grande Desejo de um Estatístico é que o modelo atenda os pressupostos

<span style="color:white; font-size: 50px;"> O grande Desejo de um Estatístico é que o modelo atenda os pressupostos  </span>

<!-- Termo CLichẽ--> 
---
# Pressuposto de um Modelo 

```{r, echo = FALSE, warning = FALSE, message = FALSE, fig.width=10}

model <- get_modelo_linear()

performance::check_model(model)
```

---
class: center, left
background-image: url(img/tidyverse_cycle.png)
background-size: cover

+ "Análises que Entreguem Valor para o Cliente"

--- 
# Explorar a Visualização de Dados 

+ Como Representar a Falta de uma Variável (valor)
+ Aumentar o leque de vizualização
+ Criar cenários de Modelos (p-valor)
+ Como explorar a falta de informação?

# Sumamry 

```{r}
summary(model)
```

# Explorar o Summary 

```{r, echo = FALSE}
gg_opcionais <- get_opcionais() 
```

# Exemplo de KPI 

```{r}
gg_kpi_negocio <- get_kpi_negocio()
```

---
class: middle, center
background-color:  #E0F2F1

