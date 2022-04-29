CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    avaliacao double
);

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome_produto varchar(100),
    valor double,
    qtd int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Hortaliça", 2.5);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Frutas", 3.0);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Grãos", 3.5);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Legumes", 4.0);
INSERT tb_categorias (nome_categoria, avaliacao) VALUES ("Conserva", 4.5);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Cebola", 44.35, 44, 1);
INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Abacaxi", 77.88, 57, 2);
INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Arroz-selvagem", 99.99, 85, 4);
INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Azeitona", 25.88, 24, 5);
INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Ervilha", 32.22, 3, 3);
INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Chuchu", 999.99, 2, 1);
INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Ovo de codorna", 79.99, 57, 5);
INSERT tb_produtos(nome_produto, valor, qtd, categoria_id) VALUES("Jambo", 999.99, 1, 2);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor >= 50.00 AND valor <= 150.00;

 SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
 
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria WHERE id_categoria = 2;