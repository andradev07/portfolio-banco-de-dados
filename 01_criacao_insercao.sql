CREATE DATABASE produtos_db;
USE produtos_db ;     -- o comando USE seleciona o banco de dados a ser utilizado 

-- Criação da tabela principal 

CREATE TABLE informacoes_produto (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
descricao VARCHAR(100),
preco DECIMAL(10.2),
categoria VARCHAR(50)
  );

-- Inserindo registros

INSERT INTO informacoes_produtos (nome,descricao,preco,categoria)
VALUES('MOUSE','MOUSER RAZER SEM FIO', 250.00, 'ELETRONICOS');
