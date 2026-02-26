CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(500) not null,
precisa_receita boolean not null,
    
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(nome, descricao, precisa_receita) 
VALUES("Medicamentos", "Remédios em geral", true),
	("Cosméticos", "Produtos de beleza e cuidados pessoais", false),
	("Higiene", "Produtos de higiene pessoal", false),
	("Suplementos", "Vitaminas e complementos alimentares", false),
	("Controlados", "Medicamentos com controle especial", true)
;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
fabricante varchar(255) not null,
preco decimal(6,2) not null,
estoque int not null,
categoria_id bigint,
    
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, fabricante, preco, estoque, categoria_id) 
VALUES("Dipirona", "EMS", 12.50, 100, 1),
	("Shampoo Anticaspa", "Clear", 28.90, 50, 2),
	("Sabonete Líquido", "Protex", 8.00, 80, 3),
	("Vitamina C", "Cimed", 35.00, 40, 4),
	("Antidepressivo X", "Medley", 75.00, 20, 5),
	("Creme Dental", "Colgate", 6.50, 120, 3),
	("Colágeno", "Neo Química", 55.00, 30, 4),
	("Antialérgico", "Neo Química", 52.00, 25, 1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.nome, p.fabricante, p.preco, p.estoque, c.nome AS categoria, c.precisa_receita FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.preco, c.nome AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = "Cosméticos";
