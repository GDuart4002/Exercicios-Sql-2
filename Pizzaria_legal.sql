CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal; 

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome varchar(50),
    avaliacao double
);

CREATE TABLE tb_pizzas(
	id_pizza bigint auto_increment primary key,
    sabor varchar(50),
    borda varchar(50),
    preco double,
    qtd_pedacos bigint,
    categoria_id bigint,
    foreign key(id_pizza) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome, avaliacao) VALUES ("Vegetariana", 4.0);
INSERT tb_categorias (nome, avaliacao) VALUES ("Doce", 2.5);
INSERT tb_categorias (nome, avaliacao) VALUES ("Exótica", 3.0);
INSERT tb_categorias (nome, avaliacao) VALUES ("Especial", 4.5);
INSERT tb_categorias (nome, avaliacao) VALUES ("Simples", 3.5);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Brócolis", "Cheddar", 25.00, 8, 1);
INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Nuttela", "Nuttela", 70.00, 7, 2);
INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Sushi", "Shoyu", 45.00, 6, 3);
INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Nostra", "Catupiry", 55.00, 5, 4);
INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Massa", "Ar", 3.00, 8, 5);
INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Prestigio", "Chocolate", 77.00, 4, 2);
INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Acelga", "Alface", 49.00, 3, 1);
INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id) VALUES ("Carne Louca", "Bacon", 56.00, 2, 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria WHERE id_categoria = 1; 