SELECT nome, preco FROM informacoes_produtos
ORDER BY preco DESC
LIMIT 10;

-- Media de preço por categoria 

SELECT categoria, ROUND(AVG(preco),2) AS media 
FROM informacoes_produtos
GROUP BY categoria 
ORDER BY media DESC; 

-- Contagem de produtos por categoria 

SELECT categoria, COUNT (*) AS total 
FROM informacoes_produtos
GROUP BY categoria;

