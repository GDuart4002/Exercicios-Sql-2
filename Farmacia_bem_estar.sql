CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    avaliacao double
);

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome_produto varchar(50),
    tipo varchar(255),
    valor double,
    doses_diarias int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Comprimido", 3.5);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Cápsula", 4.0);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Antibiótico", 4.2);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Pastilha", 3.0);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Injetável", 2.5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("Cimegripe", "Remédio", 55.00, 10, 2);
INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("Omega 3", "Nutrição", 999.00, 99, 2);
INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("dTpa-VIP", "Tríplice bacteriana acelular do tipo adulto combinada à vacina inativada poliomielite", 0.00, 8, 5);
INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("Amoxicilina", " Tratamento de diversas infecções bacterianas", 13.00, 9, 3);
INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("STREPSILS", "Inflamação da garganta", 22.99, 7, 4);
INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("Imahguene", "Manipulado", 44.55, 5, 5);
INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("Tylenol", "Analgésico", 100.00, 55, 1);
INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id) VALUES ("Dramin", "Genérico", 35.00, 66, 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor >= 5.00 AND valor <= 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria WHERE id_categoria = 5;