-- Criar tabela clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50)
);

-- Criar tabela pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    produto VARCHAR(100),
    valor DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Inserir dados em clientes
INSERT INTO clientes VALUES 
(1, 'João Silva', 'São Paulo'),
(2, 'Maria Santos', 'Rio de Janeiro'),
(3, 'Carlos Oliveira', 'Belo Horizonte');

-- Inserir dados em pedidos
INSERT INTO pedidos VALUES
(101, 1, 'Notebook', 3500.00),
(102, 1, 'Mouse', 120.50),
(103, 2, 'Teclado', 250.75),
(104, 3, 'Monitor', 899.90),
(105, 3, 'Webcam', 320.00);

-- Exemplo de Right JOIN
SELECT 
    c.nome AS cliente,
    p.produto,
    p.valor
FROM 
    clientes c
RIGHT JOIN 
    pedidos p ON c.id = p.cliente_id;