-- Média de preço por categoria 
SELECT categoria, AVG(preco) AS media_preco
FROM informacoes_produtos
GROUP BY categoria;

-- Números de produtos por categoria 
SELECT categoria, COUNT (*) AS total_produtos
FROM informacoes_produtos
GROUP BY categoria;

-- Filtrar grupos com média acima de 1000
SELECT categoria, AVG(preco) AS media_preco
FROM informacoes_produtos
GROUP BY categoria
HAVING media_preco > 1000; -- O comando HAVING filtra grupos de resultados após o grupamento.

SELECT 
AVG(preco) AS media_geral,
MIN(preco) AS menor_preco,
MAX(preco) AS maior_preco,
FROM informacoes_produtos;
