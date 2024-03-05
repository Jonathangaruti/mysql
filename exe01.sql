INSERT INTO tb_colaborades(nome, cargo, salario, data_admissao)
VALUES("Hellen Cristina", "Analista", 4500.00, "2022-11-11");
INSERT INTO tb_colaborades(nome, cargo, salario, data_admissao)
VALUES("Maria", "Desenvolvedor", 3500.00, "2022-05-07");
INSERT INTO tb_colaborades(nome, cargo, salario, data_admissao)
VALUES("Michael", "Analista", 4500.00, "2021-11-05");
INSERT INTO tb_colaborades(nome, cargo, salario, data_admissao)
VALUES("Erica", "Estagiário", 1200.00, "2023-11-07");
INSERT INTO tb_colaborades(nome, cargo, salario, data_admissao)
VALUES("Luana", "Assistente", 1900.00, "2023-9-11");

SELECT * FROM tb_colaborades;

SELECT * FROM tb_colaborades WHERE Salario > 2000.00;

SELECT * FROM tb_colaborades WHERE Salario < 2000.00;

UPDATE tb_colaborades SET Salario = 5000.00 WHERE ID = 1;