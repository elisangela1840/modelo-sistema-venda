# Sistema de Vendas - Banco de Dados SQL

## 📖 Descrição
Este projeto é um sistema simples de vendas desenvolvido para demonstrar:
- Modelagem de banco de dados.
- Criação do esquema SQL.
- Manipulação de dados (inserção, atualização, remoção e consultas).
- Uso de controle de versão com Git e GitHub.

## 🗂️ Estrutura
- **schema.sql** → Criação do banco e tabelas.
- **alteracoes_data.sql** → Inserção, atualização, remoção e consultas.

## 🛠️ Modelagem
Entidades principais:
- **Cliente** → Armazena informações dos clientes.
- **Produto** → Armazena os produtos disponíveis.
- **Pedido** → Registra pedidos feitos por clientes.
- **ItemPedido** → Associa os produtos aos pedidos.

Relacionamentos:
- Um cliente pode fazer vários pedidos.
- Um pedido pode conter vários itens.
- Cada item de pedido está vinculado a um produto.

## 📋 Exemplo de Consulta
Consulta que retorna os pedidos realizados por cada cliente com seus produtos:

```sql
SELECT c.nome, p.id AS pedido_id, pr.nome AS produto, ip.quantidade, ip.valor_total
FROM Cliente c
JOIN Pedido p ON p.cliente_id = c.id
JOIN ItemPedido ip ON ip.pedido_id = p.id
JOIN Produto pr ON pr.id = ip.produto_id;

