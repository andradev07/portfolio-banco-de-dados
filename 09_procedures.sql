CREATE PROCEDURE buscar_produtos_por_categoria(IN cat VARCHAR(50))
BEGIN
 SELECT nome, preco
 FROM informacoes_produtos
 WHERE categoria = cat
END $$

DELIMITER;

-- Chamando a procedure
CALL buscar_produtos_por_categoria('MOVEIS');
