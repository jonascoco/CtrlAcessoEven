create table usuario (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT NOT NULL
);

------ tabela cartao
create table cartao(
    id_cartao INTEGER PRIMARY KEY AUTOINCREMENT,
    fase TEXT(1),
    id_usuario INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

create table registro(
    id_registro INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cartao INTEGER,
    FOREIGN KEY (id_cartao) REFERENCES cartao(id_cartao)
);

INSERT INTO USUARIO(NOME,TELEFONE)
VALUES
('JONAS COCO','11996188680');

SELECT * FROM USUARIO;

INSERT INTO CARTAO(FASE,ID_USUARIO)
VALUES
('L',1);

SELECT * FROM CARTAO;

