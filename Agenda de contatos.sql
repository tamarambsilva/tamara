USE DB_TAMARA03;

CREATE TABLE Contatos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE GruposContato (
    id INT PRIMARY KEY,
    nome_grupo VARCHAR(100)
);

CREATE TABLE Telefones (
    id INT PRIMARY KEY,
    contato_id INT,
    numero VARCHAR(20),
    FOREIGN KEY (contato_id) REFERENCES Contatos(id)
);
    
    
INSERT INTO Contatos (id, nome, telefone, email)
VALUES (1, 'Pedro', '97778-1111', 'pedro@email.com'),
       (2, 'Maria', '97778-1111', 'maria@email.com');
       
INSERT INTO GruposContato (id, nome_grupo)
VALUES (1, 'Família'),
       (2, 'Trabalho');
       
INSERT INTO Telefones (id, contato_id, numero)
VALUES (1, 1, '97778-1111'),
       (2, 1, '97778-1111'),
       (3, 2, '99865-3333');


SELECT * FROM Contatos;
SELECT * FROM GruposContato;
SELECT * FROM Telefones;       
       
SELECT nome FROM Contatos;

SELECT * FROM Contatos
WHERE nome = 'Pedro';

    