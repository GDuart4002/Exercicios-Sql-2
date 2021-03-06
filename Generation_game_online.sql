CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id_classe bigint auto_increment primary key,
    nome_classe varchar(50),
    versatilidade double
);

CREATE TABLE tb_personagens(
	id_personagem bigint auto_increment primary key,
    nome_personagem varchar(100),
    vida bigint,
    poder_ataque bigint,
    poder_defesa bigint,
    classe_id bigint,
    foreign key(id_personagem) references tb_classes(id_classe)
);

INSERT tb_classes (nome_classe, versatilidade) VALUES ("Elfo", 5.2);
INSERT tb_classes (nome_classe, versatilidade) VALUES ("Orc", 5.1);
INSERT tb_classes (nome_classe, versatilidade) VALUES ("Mago", 7.1);
INSERT tb_classes (nome_classe, versatilidade) VALUES ("Ladrão", 7.5);
INSERT tb_classes (nome_classe, versatilidade) VALUES ("Cavaleiro", 8.6);
INSERT tb_classes (nome_classe, versatilidade) VALUES ("Pyromantico" , 3.7);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Mac Lovvin", 8795, 9615, 4727, 6);
INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Lula", 1557, 1465, 1742, 4);
INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Figurante Nº47", 1, 1, 1, 5);
INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Patolino", 9999, 9999, 9999, 3);
INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Faustão", 5761, 7467, 7475, 6);
INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Dumbo", 1547, 7674, 1752, 1);
INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Goblin Slayer", 8576, 7964, 7985, 2);
INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id) VALUES ("Traumatized", 4870, 7897, 1264, 5);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa >= 1000 AND poder_defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON  tb_personagens.classe_id = tb_classes.id_classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id_classe WHERE id_classe = 6;
