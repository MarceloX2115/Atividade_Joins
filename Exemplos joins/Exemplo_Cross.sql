-- Tabela de cores
CREATE TABLE cores (
    id INT PRIMARY KEY,
    nome VARCHAR(20)
);

-- Tabela de tamanhos
CREATE TABLE tamanhos (
    id INT PRIMARY KEY,
    descricao VARCHAR(10)
);

-- Inserindo dados
INSERT INTO cores VALUES 
(1, 'Vermelho'), 
(2, 'Azul'), 
(3, 'Verde');

INSERT INTO tamanhos VALUES 
(1, 'P'), 
(2, 'M'), 
(3, 'G'), 
(4, 'GG');

-- Aplicando o cross join
SELECT 
    c.nome AS cor,
    t.descricao AS tamanho
FROM 
    cores c
CROSS JOIN 
    tamanhos t;