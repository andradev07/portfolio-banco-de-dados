CREATE TABLE fornecedores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  cidade VARCHAR(50)
);

INSERT INTO fornecedores (nome, cidade)
VALUES ('Tech Distribuidora', 'São Paulo'),
       ('Gamer Import', 'Curitiba');

-- Adiciona uma coluna de fornecedor na tabela de produtos
ALTER TABLE informacoes_produtos ADD COLUMN fornecedor_id INT;

-- Exemplo de JOIN 
SELECT p.nome AS produto, p.preco, f.nome AS fornecedor 
FROM informacoes_produtos p
JOIN fornecedores f ON p.fornecedor_id = f.id;
