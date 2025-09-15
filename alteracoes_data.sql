-- Inserção
INSERT INTO Cliente (nome, email, telefone) VALUES
('João Silva', 'joao@email.com', '119999999'),
('Maria Souza', 'maria@email.com', '119888888');

INSERT INTO Produto (nome, preco, estoque) VALUES
('Notebook', 3500.00, 10),
('Mouse', 50.00, 100),
('Teclado', 120.00, 50);

-- Pedido de João
INSERT INTO Pedido (cliente_id) VALUES (1);

INSERT INTO ItemPedido (pedido_id, produto_id, quantidade, valor_total) VALUES
(1, 1, 1, 3500.00),
(1, 2, 2, 100.00);

-- Atualização
UPDATE Produto SET estoque = estoque - 1 WHERE id = 1;

-- Remoção
DELETE FROM Cliente WHERE id = 2;

-- Consulta
SELECT c.nome, p.id AS pedido_id, pr.nome AS produto, ip.quantidade, ip.valor_total
FROM Cliente c
JOIN Pedido p ON p.cliente_id = c.id
JOIN ItemPedido ip ON ip.pedido_id = p.id
JOIN Produto pr ON pr.id = ip.produto_id;
