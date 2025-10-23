CREATE TABLE log_precos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produto_id INT,
  preco_antigo DECIMAL (10.2),
  preco_novo DECIMAL(10.2),
  data_alteracap DATETIME 
  );

DELIMITER $$ 

CREATE TRIGGER trg_registrar_preco
AFTER UPDATE ON informacoes_produtos
FOR EACH ROW
BEGIN
  IF OLD.preco <> NEW.preco THEN
    INSERT INTO log_precos (produto_id, preco_antigo, preco_novo, data_alteracao)
    VALUES (OLD.id, OLD.preco, NEW.preco, NOW());
  END IF;
END $$

DELIMITER ;
