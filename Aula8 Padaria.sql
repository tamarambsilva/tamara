USE DB_TAMARA03;

CREATE TABLE Aula008_PRODUTO (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  preco_un DECIMAL(10, 2)
);

CREATE TABLE Aula008_FORNECEDOR (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL
);

CREATE TABLE Aula008_VENDAS (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_produto INT NOT NULL,
  CONSTRAINT fk_Venda_Produto FOREIGN KEY (id_produto) REFERENCES Aula008_PRODUTO(id),
  quantidade INT NOT NULL,
  data_venda DATE
);

INSERT INTO Aula008_PRODUTO (nome, preco_un)
VALUES 
  ('Bolo Chocolate', 0.50), 
  ('Bolo Fuba', 1.00), 
  ('Bolo Laranja', 2.00);


INSERT INTO Aula008_FORNECEDOR (nome)
VALUES ("Fornecedor A"), ("Fornecedor B"), ("Fornecedor C");

INSERT INTO Aula008_VENDAS (id_produto, quantidade, data_venda)
VALUES 
  (1, 1, '2025-10-08'), 
  (1, 2, '2025-10-08'), 
  (2, 1, '2025-10-08'), 
  (2, 3, '2025-10-08'), 
  (3, 1, '2025-10-08'), 
  (3, 5, '2025-10-08');
  
  SELECT * FROM Aula008_PRODUTO;
  
  SELECT id_produto, SUM(quantidade)
  FROM Aula008_VENDAS
  GROUP BY id_produto;
  
 SELECT SUM(v.quantidade) AS total_vendas_fuba
FROM Aula008_VENDAS v
JOIN Aula008_PRODUTO p ON v.id_produto = p.id
WHERE p.nome = 'Bolo Fuba';

SELECT SUM(v.quantidade) AS total_vendas_chocolate
FROM Aula008_VENDAS v
JOIN Aula008_PRODUTO p ON v.id_produto = p.id
WHERE p.nome = 'Bolo Chocolate';

SELECT p.nome, v.quantidade, v.data_venda
FROM Aula008_VENDAS v
JOIN Aula008_PRODUTO p ON v.id_produto = p.id
WHERE v.data_venda = '2025-10-08';


  
