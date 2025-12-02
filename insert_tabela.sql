INSERT INTO evento
(
    nome,
    endereco,
    numero,
    cep,
    bairro,
    cidade,
    estado,
    data_inicio,
    data_termino
)
VALUES
(
    'I FEIRA DE TECNOLOGIA DA INFORMAÇÃO',
    'RUA ALVARENGA',
    '1000',
    '02131050',
    'VILA MARIA ALTA',
    'SÃO PAULO',
    'SP',
    '2025-11-29',
    '2025-11-30'
);


INSERT INTO empresa
(
    nome,
    estande,
    corredor,
    responsavelL,
    id_evento
)
VALUES
(
    'ALBATROZ TECNOLOGIA',
    '001B',
    'A_A',
    'JONAS APARECIDO',
    1
);
INSERT INTO empresa
(
    nome,
    estande,
    corredor,
    responsavelL,
    id_evento
)
VALUES
(
    'LOGICATEC TECNOLOGIA',
    '002E',
    'A_R',
    'APARECIDO SILVA',
    1
);


INSERT INTO visitante
(
    nome,
    cpf,
    identidade,
    endereco,
    numero,
    cep,
    bairro,
    cidade,
    estado,
    empresa_trabalha,
    data_cadastro,
    codigo_acesso,
    e_mail,
    id_evento
)
VALUES
(
    'JONAS APARECIDO COCO',
    11234534500,
    '454565678',
    'RUA DA VILA',
    '500',
    '03231050',
    'VILA CLEMENTINA',
    'SÃO PAULO',
    'SP',
    'EMPRESA DO TRABALHO XY',
    '2025-12-01',
    'IFTI00450',
    'EMAIL@EMAILXY.COM.BR',
    1
);
