create table evento (
    id_evento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(80) NOT NULL,
    endereco VARCHAR(80) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    cep VARCHAR(8) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    data_inicio DATE NOT NULL,
    data_termino DATE NOT NULL
);

create table empresa (
    id_empresa INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(80) NOT NULL,
    estande VARCHAR(10) NOT NULL,
    corredor VARCHAR(10) NOT NULL,
    responsavel VARCHAR(40) NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES evento(id_evento)
);

create table visitante (
    id_visitante INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(80) NOT NULL,
    cpf int NOT NULL,
    identidade VARCHAR(15) NOT NULL,
    endereco VARCHAR(80) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    cep VARCHAR(8) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    empresa_trabalho VARCHAR(40) NOT NULL,
    data_cadastro DATE NOT NULL,
    codigo_acesso VARCHAR(10) NOT NULL,
    e_mail VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES evento(id_evento)
);

create table acessoevento (
    id_acessoevento INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (id_visitante) REFERENCES visitante(id_visitante),
    FOREIGN KEY (id_evento) REFERENCES evento(id_evento),
    data_acesso DATE NOT NULL
);

create table visitaempresa (
    id_visitaempresa INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (id_visitante) REFERENCES visitante(id_visitante),
    FOREIGN KEY (id_evento) REFERENCES evento(id_evento),
    FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa),
    data_visita DATE NOT NULL
);
