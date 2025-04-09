CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    id_gerente INT,  -- Auto-relacionamento: indica quem é o gerente
    FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);

-- Inserindo dados
INSERT INTO funcionarios VALUES 
(1, 'Carlos Silva', 'Diretor', NULL),  -- Não tem gerente
(2, 'Ana Souza', 'Gerente', 1),        -- Gerente é Carlos (ID 1)
(3, 'João Santos', 'Analista', 2),     -- Gerente é Ana (ID 2)
(4, 'Maria Lima', 'Analista', 2),      -- Gerente é Ana (ID 2)
(5, 'Pedro Rocha', 'Estagiário', 3);   -- Gerente é João (ID 3)
-- Consultando com Self Join
-- Listando gerentes e funcionarios
SELECT 
    f.nome AS funcionario,
    f.cargo,
    g.nome AS gerente
FROM 
    funcionarios f
LEFT JOIN 
    funcionarios g ON f.id_gerente = g.id;
-- Encontrando funcionarios com o mesmo cargo 
SELECT 
    a.nome AS funcionario1,
    b.nome AS funcionario2,
    a.cargo
FROM 
    funcionarios a
JOIN 
    funcionarios b ON a.cargo = b.cargo AND a.id < b.id;  -- Evita duplicatas