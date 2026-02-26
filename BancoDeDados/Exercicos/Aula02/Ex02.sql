CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
categoria varchar(255) not null,
preco decimal(10,2) not null,
estoque int not null,

PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, categoria, preco, estoque) 
VALUES('Notebook Dell Inspiron', 'Informática', 3500.00, 10),
	('Smartphone Samsung Galaxy S23', 'Celulares', 4200.00, 15),
	('Mouse Gamer Logitech', 'Periféricos', 250.00, 50),
	('Teclado Mecânico Redragon', 'Periféricos', 450.00, 30),
	('Smart TV 50 Polegadas LG', 'Eletrônicos', 2800.00, 8),
	('Fone de Ouvido JBL', 'Áudio', 320.00, 40),
	('Cadeira Gamer', 'Móveis', 950.00, 12),
	('Monitor 27 Polegadas Samsung', 'Informática', 1200.00, 20);
 
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET estoque = 0 WHERE id = 3;