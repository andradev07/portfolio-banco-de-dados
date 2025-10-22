-- Produtos acima da média geral de preço 
SELECT * FROM informacoes_produtos
WHERE preco > (SELECT AVG(preco) FROM informacoes_produtos);

-- Produtos mais caro
SELECT * FROM informacoes_produtos
WHERE preco = (SELECT MAX(preco) FROM informacoes_produtos);

-- Produtos da mesma categoria do produto mais caro
SELECT * FROM informacoes_produtos
WHERE categoria = (
SELECT categoria
FROM informacoes_produtos
ORDER BY preco DESC
LIMIT 1
);
