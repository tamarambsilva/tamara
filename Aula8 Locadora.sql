USE DB_TAMARA03;


CREATE TABLE Cliente_locadora (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);


CREATE TABLE Automovel (
    id_automovel INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    tipo VARCHAR(50)
);


CREATE TABLE DataLocacao (
    id_datalocacao INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_automovel INT,
    datainiciolocacao DATE,
    datafinallocacao DATE
);


INSERT INTO Automovel (marca, modelo, tipo)
VALUES
('Toyota', 'Corolla', 'Sedan'),
('Honda', 'Civic', 'Sedan'),
('Jeep', 'Compass', 'SUV');


INSERT INTO DataLocacao (id_cliente, id_automovel, datainiciolocacao, datafinallocacao)
VALUES
(1, 2, '2025-10-01', '2025-10-05'),
(2, 3, '2025-10-03', '2025-10-10'),
(3, 1, '2025-10-05', '2025-10-08');

INSERT INTO Cliente_locadora (nome, sobrenome, telefone, email)
VALUES ('Carlos Silva', '123.456.789-00', '(11) 99999-1111', 'carlos.silva@email.com'),
('Maria Oliveira', '987.654.321-00', '(11) 98888-2222', 'maria.oliveira@email.com'),
('João Pereira', '111.222.333-44', '(11) 97777-3333', 'joao.pereira@email.com');

SELECT * FROM Cliente_locadora;

SELECT *
FROM Automovel
WHERE id_automovel NOT IN (
    SELECT id_automovel
    FROM DataLocacao
);


SELECT 
    c.nome AS Nome_Cliente,
    a.marca AS Marca,
    a.modelo AS Modelo,
    d.datainiciolocacao AS Data_Início,
    d.datafinallocacao AS Data_Fim
FROM DataLocacao d
INNER JOIN Cliente_locadora c ON d.id_cliente = c.id_cliente
INNER JOIN Automovel a ON d.id_automovel = a.id_automovel;

SELECT 
    a.marca AS Marca,
    a.modelo AS Modelo,
    d.datainiciolocacao AS Data_Início,
    d.datafinallocacao AS Data_Fim
FROM DataLocacao d
INNER JOIN Automovel a ON d.id_automovel = a.id_automovel
WHERE '2025-10-05' BETWEEN d.datainiciolocacao AND d.datafinallocacao;
