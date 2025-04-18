📊 SQL para Análise de Dados - Capítulo: SQL Básico
Este repositório contém exercícios e anotações referentes ao capítulo de SQL Básico do curso SQL para Análise de Dados da Udacity.

📚 Descrição
Neste capítulo, foram abordados os fundamentos essenciais de SQL para iniciantes que desejam utilizar a linguagem na análise de dados. O foco foi em aprender a acessar e manipular dados em bancos relacionais por meio de consultas básicas.

✅ Conteúdo Aprendido
Durante os exercícios deste capítulo, foram praticados os seguintes conceitos:

SELECT: extração de colunas específicas de uma tabela.
FROM: definição da tabela de origem dos dados.
WHERE: filtragem de dados com base em condições específicas.
Operadores de comparação (=, >, <, >=, <=, !=) e lógicos (AND, OR, NOT).
Filtros com LIKE, IN e BETWEEN.
Ordenação de resultados com ORDER BY.
Limitação de linhas com LIMIT.
Uso de alias com AS para renomear colunas e tabelas.

💡 Observações
Os exemplos e exercícios foram desenvolvidos com base no banco de dados disponibilizado no curso da Udacity.

As consultas foram testadas utilizando PostgreSQL, mas a maioria é compatível com outras variações de SQL (como MySQL ou SQLite).

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Banco de dados Utilizado:
🏢 Banco de Dados da Posey
A Posey é uma empresa fictícia que vende produtos (como materiais de escritório) e gerencia um processo de vendas com foco em análise de desempenho, faturamento e produtividade de vendedores. O banco de dados foi projetado para refletir cenários de Business Intelligence (BI).

🔹 Principais Tabelas
1. accounts
Informações sobre os clientes da Posey.

Colunas:

id — ID da conta

name — Nome da empresa cliente

website — Site da empresa

state — Estado onde está localizada

region — Região (por ex: Northeast, Midwest etc.)

sales_rep_id — ID do representante de vendas responsável



2. sales_reps
Representantes de vendas da empresa.

Colunas:

id — ID do representante

name — Nome do vendedor

region_id — ID da região onde atua




3. region
Informações sobre as regiões de atuação.

Colunas:

id — ID da região

name — Nome da região (por exemplo: Northeast, South etc.)




4. orders
Pedidos realizados pelos clientes.

Colunas:

id — ID do pedido

occurred_at — Data da compra

account_id — ID do cliente que fez o pedido

product_id — ID do produto vendido

sales_rep_id — ID do vendedor responsável

unit_price — Preço unitário

units — Quantidade vendida

total_amt_usd — Valor total do pedido (em dólares)




5. products
Produtos oferecidos pela Posey.

Colunas:

id — ID do produto

name — Nome do produto

price — Preço do produto

description — Descrição do item




🎯 Finalidade do banco
Esse banco de dados é usado ao longo do curso para praticar:

Joins entre tabelas (INNER, LEFT, etc.)

Agregações (SUM, AVG, COUNT, etc.)

Análise regional de vendas

Cálculo de desempenho por representante

Filtragem e ordenação com WHERE, GROUP BY, ORDER BY

Subqueries e CTEs

Cálculo de métricas de negócios (ex: ticket médio, receita total por cliente, etc.)


