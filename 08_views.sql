CREATE VIEW vw_produtos_caros AS
SELECT nome, preco, categoria 
FROM informacoes_produtos
WHERE preco > 1000;

-- Consultar a view
SELECT * FROM vw_produtos_caros;
