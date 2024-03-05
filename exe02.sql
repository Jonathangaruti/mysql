
CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome varchar(255) NOT NULL,
descrição varchar(255),
valor decimal(10,2),
 estoque int,
primary key (id)
);

-- Inserindo dados na tabela
INSERT INTO tb_produtos(nome, descrição, valor, estoque)
VALUES ("Perfume", "Perfume Cheiroso", 150.00, 8);
INSERT INTO tb_produtos(nome, descrição, valor, estoque)
VALUES ("Perfume Premium", "Perfume Premium", 550.00, 8);
INSERT INTO tb_produtos(nome, descrição, valor, estoque)
VALUES ("Desodorante", "Desodorante Cheiroso", 50.00, 4);
INSERT INTO tb_produtos(nome, descrição, valor, estoque)
VALUES ("Creme", "Creme para Rosto", 90.00, 6);
INSERT INTO tb_produtos(nome, descrição, valor, estoque)
VALUES ("Shampoo", "Cabelos mais lisos", 40.00, 8);
INSERT INTO tb_produtos(nome, descrição, valor, estoque)
VALUES ("Condicionador", "Hidratação Perfeita", 40.00, 8);

SELECT * FROM tb_produtos;

-- consultando produtos
SELECT * FROM tb_produtos WHERE Valor > 500.00;
SELECT * FROM tb_produtos WHERE Valor < 500.00;
UPDATE tb_produtos SET Valor = 100.00 WHERE ID = 3;