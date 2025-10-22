-- Produtos com preço maior que 1000

SELECT * FROM informacoes_produtos
WHERE preco > 1000;

-- Produtos da categoria ELETRONICOS
SELECT * FROM informacoes_produtos
WHERE nome LIKE '%MOUSE';

-- Ordenar por preço decrescente 
SELECT * FROM informacoes_produtos
ORDER BY preco DESC;

