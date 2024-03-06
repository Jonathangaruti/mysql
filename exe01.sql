CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes (
    id_classe INT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    tipo_classe VARCHAR(20) NOT NULL
);

INSERT INTO tb_classes (nome_classe, tipo_classe) VALUES
('Guerreiro', 'Melee'),
('Mago', 'Magia'),
('Arqueiro', 'Ranged'),
('Ladrão', 'Melee'),
('Sacerdote', 'Magia');

CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome_personagem, nivel, poder_ataque, poder_defesa, id_classe) VALUES
('User1', 30, 2500, 1500, 1),
('User2', 35, 1800, 1800, 2),
('User3', 28, 2200, 1200, 3),
('User4', 25, 1800, 1000, 4),
('User5', 32, 1500, 2200, 5),
('User6', 27, 2000, 1200, 1),
('User7', 31, 1600, 1900, 2),
('Userc9', 29, 2700, 1000, 4);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = 'Guerreiro';


atividade 2

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Salgada', 'Pizzas com ingredientes salgados'),
('Doce', 'Pizzas com ingredientes doces'),
('Vegetariana', 'Pizzas sem carne'),
('Especial', 'Pizzas especiais da casa'),
('Tradicional', 'Pizzas clássicas e populares');

CREATE TABLE tb_pizzas (
    id_pizza INT PRIMARY KEY AUTO_INCREMENT,
    nome_pizza VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, valor, id_categoria) VALUES
    ('Mussarela', 'Mussarela',  35.00, 1),
    ('Calabreza','Calabreza e cebola', 40.00, 1),
    ('Quatro Queijos', 'Mussarela, provolone, gorgonzola, parmesão', 45.00, 1),
    ('Frango com Catupiry','Frango desfiado, Catupiry', 42.00, 1),
    ('Brigadeiro', 'Brigadeiro, chocolate granulado', 38.00, 2),
    ('Prestigio', 'Coco, chocolate, leite condensado',  43.00, 2),
    ('Morango com Chocolate', 'Morango, chocolate', 48.00, 2),
    ('Abacaxi com Queijo', 'Abacaxi, queijo', 40.00, 2);
    
    SELECT * FROM tb_pizzas WHERE valor > 45.00;
    
    SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
    SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';
    
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';
