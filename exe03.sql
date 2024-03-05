CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos (
	id BIGINT auto_increment,
    nome VARCHAR(255) NOT NULL,
    matricula VARCHAR(25),
    data_Nascimento DATE,
    nota DECIMAL(3,1),
    primary key (id)
);

INSERT INTO alunos (nome, matricula, data_Nascimento, nota) VALUES
    ('Jonathan', '1', '2024-03-01', 9.5),
    ('Bianca', '2', '2024-07-02', 9.0),
    ('Oliver', '3', '2020-03-09', 7.5),
    ('Myacom', '4', '2009-02-04', 6.0),
    ('Sabrina', '5', '2009-03-20', 5.5),
    ('Luana', '6', '2004-06-08', 7.5);

SELECT * FROM alunos;

SELECT * FROM alunos WHERE Nota > 7.0;
SELECT * FROM alunos WHERE Nota > 7.0;
UPDATE alunos SET Nota = 10.0 WHERE ID = 1;
