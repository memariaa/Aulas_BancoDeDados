CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma varchar(255) not null,
nota_final decimal(3,2) not null,

PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome, idade, turma, nota_final) 
VALUES('Ana Clara', 15, '1º Ano A', 8.5),
	('Bruno Henrique', 16, '2º Ano B', 6.8),
	('Camila Souza', 15, '1º Ano A', 9.0),
	('Daniel Martins', 17, '3º Ano A', 5.5),
	('Eduarda Lima', 16, '2º Ano B', 7.2),
	('Felipe Rocha', 15, '1º Ano C', 4.9),
	('Gabriela Alves', 17, '3º Ano A', 8.0),
	('Henrique Santos', 16, '2º Ano C', 6.5)
;
 
SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota_final > 7.0;
SELECT * FROM tb_alunos WHERE nota_final < 7.0;
UPDATE tb_alunos SET nota_final = 9.5 WHERE id = 3;