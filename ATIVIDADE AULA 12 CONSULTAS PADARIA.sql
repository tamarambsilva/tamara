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


INSERT INTO Aula008_PRODUTO (nome, preco_un)
VALUES 
  ('Bolo Chocolate', 0.50), 
  ('Bolo Fuba', 1.00), 
  ('Bolo Laranja', 2.00);


INSERT INTO Aula008_FORNECEDOR (nome)
VALUES ("Fornecedor A"), ("Fornecedor B"), ("Fornecedor C");

  
  
  INSERT INTO Aula008_PRODUTO (nome, preco_un)
VALUES 
  ('pudim', 1.50), 
  ('Pao', 1.00), 
  ('Bolo Recheado', 6.00),
  ('Pao de Queijo', 1.50);
  

UPDATE Aula008_PRODUTO
SET preco_un = 1.20
WHERE id = 2;

SELECT * FROM Aula008_PRODUTO;

DELETE FROM Aula008_PRODUTO
WHERE id = 1;

SELECT * FROM Aula008_PRODUTO;



  
