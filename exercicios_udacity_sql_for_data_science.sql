-- Udacity – SQL para analise de dados.
-- Seleciona todas as colunas da tabela vendas (orders).
SELECT * FROM orders; 


-- Seleciona as colunas id, account_id e occurred_id da tabela vendas (orders).
SELECT id, account_id, occurred_at 
FROM orders;


-- Limitando as linhas da consulta com (limit), (limit 10) retorna apenas as 10 primeiras linhas.
SELECT * FROM orders
LIMIT 10;


--Tente usar LIMIT abaixo escrevendo uma consulta que exiba todos os dados nas colunas occurred_at,  account_id e channel da tabela web_events e limite a saída apenas às primeiras 15 linhas.
SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15;


--Escreva uma consulta para retornar os 10 pedidos mais antigos na tabela de pedidos. Inclua o id, occurred_at e total_amt_usd.
SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at ASC
LIMIT 10;


--Escreva uma consulta para retornar os 5 principais pedidos em termos de maior . Inclua total_amt_usd, id,  account_id e  total_amt_usd
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;



-- Escreva uma consulta que exiba a ID do pedido, a ID da conta e o valor total em dólares de todos os pedidos, classificados primeiro
-- pela ID da conta (em ordem crescente) e, em seguida, pelo valor total em dólares (em ordem decrescente).

SELECT id,
	account_id,
	total_amt_usd
FROM orders
ORDER BY account_id ASC, total_amt_usd DESC



-- Agora, escreva uma consulta que exiba novamente a ID do pedido, a ID da conta e o valor total em dólares para cada pedido, mas desta vez classificados primeiro pelo valor total em dólares (em ordem decrescente) e, em seguida,  pela ID da conta (em ordem crescente).
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id ASC


-- Extrai as primeiras 5 linhas   e todas as colunas da tabela de pedidos  que têm um valor em dólares maior ou igual a 1000.
SELECT * FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;


-- Extrai as primeiras 10 linhas e todas as colunas da tabela de pedidos que têm menos de 500.total_amt_usd
SELECT * FROM orders
WHERE total_amt_usd < 500
LIMIT 10;


--Filtre a tabela de contas para incluir a empresa, nome, website e Ponto de contato principal (primary_poc) apenas para a empresa Exxon Mobil na tabela de contas.
SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil'


-- Crie uma coluna que divida o standard_amt_usd pelo standard_qty para encontrar o preço unitário do papel padrão para cada pedido. Limite os resultados aos primeiros 10 pedidos e inclua os campos id e account_id.
SELECT id, account_id, standard_amt_usd/standard_qty as std_unit_price
FROM Orders
LIMIT 10;


--All the companies whose names start with 'C'. (Todas as companhias cujo nome se inicia com a letra ‘C’)
SELECT name 
FROM accounts
WHERE name LIKE 'C%'


--All companies whose names contain the string 'one' somewhere in the name. (Todas as conpanhias cujos nomes contenham a string ‘one’ em qualquer lugar do nome)
SELECT name
FROM accounts
WHERE name LIKE '%one%';


--All companies whose names end with 's'. (Todos as companhias cujo nome termina com ‘s’)
SELECT name
FROM accounts
WHERE name LIKE '%s';


--Use the accounts table to find the account ( name, primary_poc, and sales_rep_id)  for Walmart, Target, and Nordstrom. (Use a tabela contas para encontrar nome, primary_poc, sales_rep_id que estejam em (‘Walmart, Target, Norstrom)
SELECT name , primary_poc , sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');


--Use the web_events table to find all information regarding individuals who were contacted via the channel of organic or adwords. (Use a tabela eventos para encontrar informações sobre indivíduos que fizeram contato pelos canais ‘organic’ e ‘adwords’)
SELECT * 
FROM web_events
WHERE channel IN ('organic', 'adwords');


--Use the accounts table to find the account name, primary poc, and sales rep id for all stores except Walmart, Target, and Nordstrom. (Use a tabela accounts para encontrar nome, primary_poc, sales_rep_id) de todas as lojas em não estejam em ‘walmart’, ‘Target’ e ‘Nordstrom’,
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Taget', 'Nordstrom')


--Use the web_events table to find all information regarding individuals who were contacted via any method except using organic or adwords methods. (Use a tabela web_events para encontrar informações sobre indivíduos que fizeram contato de qualquer forma exceto por ‘organic’ ou ‘adwords methods’.
SELECT * FROM web_events
WHERE channel NOT IN ('organic', 'adwords methods');


--Use the accounts table to find: (Use a tabela accounts para encontrar)
--All the companies whose names do not start with 'C'. (Todos as empresas cujos nomes não contenham ‘C’ no meio)
SELECT name
FROM accounts
WHERE name NOT LIKE ('C');


-- All companies whose names do not contain the string 'one' somewhere in the name. (Todas as empresas cujo nome não contenham ‘one’ em qualquer lugar da string)
SELECT name
FROM accounts
WHERE name NOT LIKE ('%one%');


--Use the accounts table to find: (Use a tabela accounts para encontrar)
--All companies whose names do not end with 's'. (Todas as empresas que não contenham ‘s’ no final do nome) 
SELECT name
FROM accounts
WHERE name NOT LIKE ('%s');

----------------------------------------------------------------------------------------------------
-- OPERADOR BETWEEN e AND
OPERADOR AND
SELECT *
FROM orders
WHERE occurred_at >= '2016-04-01' and occurred_at <= '2016-10-01'
ORDER BY occurred_at DESC
LIMIT 10;

-- OPERADOR BETWEEN
SELECT * 
FROM orders
WHERE occurred_at BETWEEN '2016-04-01' and '2016-10-01'
ORDER BY occurred_at DESC
LIMIT 10;
0


-- Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
SELECT * FROM orders
WHERE standard_qty < 1000 AND poster_qty = 0 AND gloss_qty = 0
LIMIT 10;


-- Using the accounts table, find all the companies whose names do not start with 'C' and end with 's'.
SELECT * FROM accounts
WHERE name NOT LIKE 'C%' and name LIKE '%s'


-- Quando você usa o operador BETWEEN no SQL, os resultados incluem os valores de seus pontos de extremidade ou não? Descubra a resposta para essa pergunta 
-- importante escrevendo uma consulta que exiba a data e os dados do pedido para todos os pedidos em que gloss_qty esteja entre 24 e 29. Em seguida, examine 
-- sua saída para ver se o operador BETWEEN incluiu os valores inicial e final ou não.gloss_qty
SELECT * FROM orders
WHERE gloss_qty BETWEEN 24 and 29
LIMIT 10;


-- Use the web_events table to find all information regarding individuals who were contacted via the organic or adwords channels, and started 
-- their account at any point in 2016, sorted from newest to oldest.
SELECT * FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC, channel;

--Find list of orders ids where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table.
-- Encontre a lista de IDs de pedidos em que gloss_qty ou poster_qty é maior que 4000. Inclua apenas o campo id na tabela resultante.
SELECT id FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000


--Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.
-- Escreva uma consulta que retorne uma lista de pedidos em que o standard_qty é zero e o gloss_qty ou poster_qty é maior que 1000.
SELECT  * FROM orders
WHERE standard_qty = 0 OR gloss_qty > 1000 OR poster_qty > 1000;

--Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or 'Ana', but it doesn't contain 'eana'.
SELECT * FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%')
	AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
	AND primary_poc NOT LIKE '%eana%');



