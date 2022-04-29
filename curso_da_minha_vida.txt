CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    taxa_retencao int
);

CREATE TABLE tb_cursos(
	cod_curso bigint auto_increment primary key,
    nome_curso varchar(50),
    preco double,
    vagas int,
    categoria_id bigint,
    foreign key(cod_curso) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome_categoria, taxa_retencao) VALUES ("Administração", 77);
INSERT tb_categorias (nome_categoria, taxa_retencao) VALUES ("Informática", 88);
INSERT tb_categorias (nome_categoria, taxa_retencao) VALUES ("Mecânica", 99);
INSERT tb_categorias (nome_categoria, taxa_retencao) VALUES ("Alimentos", 75);
INSERT tb_categorias (nome_categoria, taxa_retencao) VALUES ("Medicina", 100);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("Desenvolvimento de Sistemas", 500.00, 100, 2);
INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("ADM", 1024.00, 500, 1);
INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("Conserto de Carros", 500.55, 25, 3);
INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("Análise de alimentos", 750.00, 45, 4);
INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("Tecnologia e processamento de alimentos", 459.99, 30, 4);
INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("Análise de Sistemas", 758.66, 100, 2);
INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("Medicina Veterinária", 990.50, 230, 5);
INSERT tb_cursos (nome_curso, preco, vagas, categoria_id) VALUES ("Cardiologia.", 9999.99, 10, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco >= 600.00 AND preco <= 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id_categoria;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id_categoria WHERE id_categoria = 2;