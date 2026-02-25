SELECT id, nome, email FROM cliente;

SELECT produto.nome, pedido.data_pedido
FROM pedido
JOIN item_pedido ON pedido.id = item_pedido.pedido_id
JOIN produto ON item_pedido.produto_id = produto.id;
  
SELECT produto.nome, item_pedido.quantidade
FROM item_pedido
JOIN produto ON item_pedido.produto_id = produto.id;

SELECT cliente.nome, SUM(produto.preço * item_pedido.quantidade) AS total_gasto
FROM cliente
JOIN pedido ON cliente.id = pedido.cliente_id
JOIN produto ON item_pedido.produto_id = produto.id
GROUP BY cliente.nome;

SELECT cliente.nome, SUM(produto.preço * item_pedido.quantidade) AS total_gasto
FROM cliente
JOIN pedido ON cliente.id = pedido.cliente_id
JOIN produto ON item_pedido.produto_id = produto.id
GROUP BY cliente.nome
ORDER BY total_gasto DESC LIMIT 1;

SELECT produto.nome, SUM(item_pedido.quantidade) AS total_vendido
FROM item_pedido
JOIN produto ON item_pedido.produto_id = produto.id
GROUP BY produto.nome
ORDER BY total_vendido DESC LIMIT 1
