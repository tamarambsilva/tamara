USE DB_TAMARA03;

CREATE TABLE Aluno (
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(50),
Sobrenome VARCHAR(50),
Curso VARCHAR(100)
);


CREATE TABLE Professor (
id_professor INT AUTO_INCREMENT PRIMARY KEY,
Nome_professor VARCHAR(100),
Curso VARCHAR(100)
);

CREATE TABLE Comentario (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_professor INT,
    Comentario TEXT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
    );
    
  
  INSERT INTO Aluno (Nome, Sobrenome, Curso)
  VALUES ("Amanda","Tieppo", "B Dados"),
  ("Aline","Tieppo", "B Dados"),
  ("Paula","Farias", "B Dados");
  
INSERT INTO Professor (Nome_professor, Curso)
VALUES ("Paulo", "B Dados"),
("Marcos", "B Dados");
  
  
INSERT INTO Comentario (id_aluno, id_professor, Comentario, Notadoprofessor)
VALUES (1, 1, "Sem Comentarios", 10.0),
(2, 1, "Sem Comentarios", 10.0),
(3, 2, "Sem Comentarios", 9.8);
  
SELECT Nome, Sobrenome, Curso
FROM Aluno;

SELECT Nome_professor, Curso FROM Professor;

SELECT 
    a.Nome AS Nome_Aluno,
    p.Nome_professor AS Professor,
    c.Comentario,
    c.Notadoprofessor
FROM Comentario c
JOIN Aluno a ON c.id_aluno = a.id_aluno
JOIN Professor p ON c.id_professor = p.id_professor;

SELECT 
    a.Nome AS Nome_Aluno,
    p.Nome_professor AS Professor,
    c.Comentario,
    c.Notadoprofessor
FROM Comentario c
JOIN Aluno a ON c.id_aluno = a.id_aluno
JOIN Professor p ON c.id_professor = p.id_professor
WHERE c.Notadoprofessor < 6.0;

SELECT 
    a.Nome AS Nome_Aluno,
    p.Nome_professor AS Professor,
    c.Comentario,
    c.Notadoprofessor
FROM Comentario c
JOIN Aluno a ON c.id_aluno = a.id_aluno
JOIN Professor p ON c.id_professor = p.id_professor
WHERE c.Notadoprofessor >= 6.0;