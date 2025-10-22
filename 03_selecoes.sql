-- Selecionar (SELECT) tudo (*)

SELECT * FROM informacoes_produtos;

-- Selecionar apenas nome e preço 

SELECT nome, preco FROM informacoes_produtos;

-- Renomear colunas (alias)

SELECT nome AS "Produto", preco AS "Preço (R$)" FROM informacoes_produtos;

-- O select é a base de todo SQL - é como você "Lê" o banco.
