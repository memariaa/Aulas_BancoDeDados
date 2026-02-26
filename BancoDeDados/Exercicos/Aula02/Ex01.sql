CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
setor varchar(255) not null,
salario decimal(10,2) not null,

PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUES('Ana Souza', 'Analista de RH', 'Recursos Humanos', 3500.00),
	('Carlos Lima', 'Assistente Administrativo', 'Financeiro', 1800.00),
	('Juliana Rocha', 'Desenvolvedora Front-end', 'Tecnologia', 4200.00),
	('Marcos Silva', 'Auxiliar de Serviços Gerais', 'Operações', 1500.00),
	('Fernanda Alves', 'Coordenadora de Projetos', 'Tecnologia', 5200.00)
;
SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2200.00 WHERE id = 2;


