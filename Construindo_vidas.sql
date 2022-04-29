CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    cuidados varchar(255)
);

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome_produto varchar(50),
    valor double,
    qtd int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome_categoria, cuidados) VALUES ("Caixas D'água", "Contatar técnico para instalação");
INSERT tb_categorias (nome_categoria, cuidados) VALUES ("Argamassa", "Deixar longe das crianças");
INSERT tb_categorias (nome_categoria, cuidados) VALUES ("Calhas e rufos", "Contatar pedreiro para construção");
INSERT tb_categorias (nome_categoria, cuidados) VALUES ("Protetores de Construção", "Determine qual o melhor para o trabalho");
INSERT tb_categorias (nome_categoria, cuidados) VALUES ("Tinta", "Não deixe respingar");

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Caixa D'Água +Green 310 Litros Acqualimp", 209.90, 55, 1);
INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Argamassa Piso Sobre Piso Porcelanato 20kg Quartzolit", 39.90, 100, 2);
INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Vedacit Argamassa Polimérica Impermeabilizante Mono Componente Semiflexível Vedatop 12kg", 60.90, 77, 2);
INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Calha Moldura Corte 28 Galvanizado de 3 metros.", 58.90, 32, 3);
INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Rufo Externo Aço Galvanizado Corte 20 2 Metros Calhaforte", 31.90, 16, 3);
INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Protetor de Piso 25 metros Salva Piso", 189,90, 8, 4);
INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Protetor Facial Catraca Para Construção", 45.90, 4, 4);
INSERT tb_produtos (nome_produto, valor, qtd, categoria_id) VALUES ("Tinta Coral Coralar Econômica Acrílica Fosca Branco 18 Litros", 204,90, 2, 5);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor >= 70.00 AND valor <= 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = tb_categorias.id_categoria WHERE id_categoria = 5;