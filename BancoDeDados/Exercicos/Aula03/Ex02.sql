CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
tamanho_padrao varchar(255) not null,

PRIMARY KEY (id)
);

INSERT INTO tb_categorias(nome, descricao, tamanho_padrao)
VALUES("Salgada", "Pizzas tradicionais salgadas", "G"),
	("Doce", "Pizzas com recheios doces", "M"),
	("Vegetariana", "Pizzas sem carne", "G"),
	("Premium", "Pizzas especiais da casa", "G"),
	("Broto", "Pizzas individuais", "P")
; 
    
CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
ingredientes varchar(255) not null,
preco decimal(6,2) not null,
borda_recheada boolean,
categoria_id bigint,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda_recheada, categoria_id)
VALUES("Mussarela", "Queijo mussarela e molho de tomate", 49.90, true, 1),
	("Calabresa", "Calabresa, cebola e molho", 52.00, true, 1),
	("Marguerita", "Mussarela, tomate e manjericão", 55.00, false, 3),
	("Chocolate", "Chocolate ao leite e morango", 60.00, false, 2),	
	("Frango com Catupiry", "Frango desfiado e catupiry", 58.00, true, 4),
	("Moda da Casa", "Ingredientes especiais da casa", 75.00, true, 4),
	("Banana com Canela", "Banana, açúcar e canela", 45.00, false, 2),
	("Brócolis Especial", "Brócolis, alho e queijo", 53.00, false, 3)
;

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- pizzas com o preco ENTRE 50 E 100 
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- pizzas que começam apenas com a letra m; a % é como se fosse "qualquer coisa antes ou depois" 
-- se eu usasse M% ia selecionar dados que possuem a letra m no inicio do nome
-- %M se eu quisesse o que termina com m no final
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- inner para trazer os dados em comum entre pizzas e categorias
SELECT p.nome, p.preco, p.borda_recheada, c.nome AS categoria, c.descricao FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- inner trazendo apenas as pizzas com categoria doce
SELECT p.nome, p.preco, c.nome AS categoria FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = "Doce";