CREATE DATABASE DB_TAMARA03;
USE DB_TAMARA03;
CREATE TABLE fornecedor (
id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(150),
cnpj VARCHAR(150)
);

INSERT INTO fornecedor (nome, telefone, cnpj) VALUES
("tilibra", "1432322896","12345678000100"),

("bic", "1432322499","32145678000100"),

("papel e cia", "1432322477","45645678000100");


CREATE TABLE produtos (
    id_PRODUTO INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0
);

INSERT INTO produtos (nome, preco, estoque) VALUES
("caderno", "20.90","15"),

("caneta", "4.50","40"),

("lapis", "1.50","56");

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE NOT NULL,
    id_produto INT,
    quantidade INT NOT NULL,
    valor_total DECIMAL(10,2)
    );
    
INSERT INTO vendas (data_venda, id_produto, quantidade, valor_total) VALUES
("2025-10-06", "1","1", "20.90"),

("2025-10-07", "2","2", "9.00"),

("2025-10-07", "3","5", "7.50");

SELECT *FROM fornecedores;

SELECT *FROM produtos;

SELECT *FROM vendas;

