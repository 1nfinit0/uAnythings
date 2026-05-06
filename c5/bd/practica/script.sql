-- CREATE DATABASE tienda;
-- \c tienda;

-- CREATE TABLE clientes (
--     id_cliente SERIAL PRIMARY KEY,
--     nombre VARCHAR(100) NOT NULL,
--     apellido VARCHAR(100) NOT NULL,
--     telefono VARCHAR(20),
--     email VARCHAR(100) NOT NULL UNIQUE
-- );

-- CREATE TABLE empleados (
--     id_empleado SERIAL PRIMARY KEY,
--     nombre VARCHAR(100) NOT NULL,
--     cargo VARCHAR(50) NOT NULL,
--     salario DECIMAL(10, 2) NOT NULL
-- );

-- CREATE TABLE pedidos (
--     id_pedido SERIAL PRIMARY KEY,
--     fecha DATE NOT NULL,
--     id_cliente INT REFERENCES clientes(id_cliente),
--     id_empleado INT REFERENCES empleados(id_empleado)
-- );

-- CREATE TABLE producto (
--     id_producto SERIAL PRIMARY KEY,
--     nombre VARCHAR(100) NOT NULL,
--     precio DECIMAL(10, 2) NOT NULL,
--     stock INT NOT NULL,
--     id_pedido INT REFERENCES pedidos(id_pedido)
-- );

-- INSERT INTO clientes (nombre, apellido, telefono, email)
-- VALUES
--   ('Juan', 'Pérez', '555-1234', 'juan.perez@gmail.com'),
--   ('María', 'Gómez', '555-5678', 'maria.gomez@gmail.com'),
--   ('Carlos', 'López', '555-9012', 'carlos.lopez@gmail.com');

-- INSERT INTO empleados (nombre, cargo, salario)
-- VALUES
--   ('Ana', 'Gerente', 5000.00),
--   ('Luis', 'Vendedor', 3000.00),
--   ('Sofía', 'Cajera', 2500.00);

-- INSERT INTO pedidos (fecha, id_cliente, id_empleado)
-- VALUES
--   ('2024-01-15', 1, 1),
--   ('2024-01-16', 2, 2),
--   ('2024-01-17', 3, 3);

-- INSERT INTO producto (nombre, precio, stock, id_pedido)
-- VALUES
--   ('Laptop', 1200.00, 10, 1),
--   ('Smartphone', 800.00, 20, 2),
--   ('Tablet', 500.00, 15, 3);

SELECT * FROM clientes;
SELECT * FROM empleados;
SELECT * FROM pedidos;
SELECT * FROM producto;