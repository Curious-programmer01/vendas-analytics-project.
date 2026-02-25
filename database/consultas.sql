SELECT * FROM cliente;

SELECT produto.nome, pedido.data_pedido
FROM cliente
JOIN pedido ON cliente.id = pedido.cliente_id;

SELECT produto.nome, item_pedido.quantidade
FROM item_pedido
JOIN produto ON item_pedido.produto_id = produto.id

SELECT cliente.nome, SUM(produto.preço * item_pedido.quantidade) AS total_gasto
FROM cliente
JOIN pedido ON cliente.id = pedido.cliente_id
JOIN produto ON item_pedido.produto_id = produto.id
GROUP BY cliente.nome;
