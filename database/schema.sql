CREATE TABLE cliente (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  cidade VARCHAR(100)
  );
CREATE TABLE produto (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2)
  );
CREATE TABLE pedido (
  id INT PRIMARY KEY,
  cliente_id INT,
  data_pedido DATE,
  FOREIGN KEY (cliente_id) REFERENCES cliente(id)
  );
CREATE TABLE item_pedido (
  id INT PRIMARY KEY,
  pedido_id INT,
  produto_id INT,
  quantidade INT,
   FOREIGN KEY (pedido_id) REFERENCES pedido(id),
   FOREIGN KEY (produto_id) REFERENCES produto(id)
  );
