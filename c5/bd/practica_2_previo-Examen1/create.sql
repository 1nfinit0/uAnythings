-- create database bdventas;

-- \c bdventas;

-- CREATE TABLE cliente (
--     id_cliente SERIAL PRIMARY KEY,
--     nombre VARCHAR(100) NOT NULL,
--     apellido VARCHAR(100) NOT NULL,
--     telefono VARCHAR(20),
--     email VARCHAR(100) NOT NULL UNIQUE
-- );

-- CREATE TABLE empleado (
--     id_empleado SERIAL PRIMARY KEY,
--     nombre VARCHAR(100) NOT NULL,
--     cargo VARCHAR(50) NOT NULL,
--     salario DECIMAL(10, 2) NOT NULL
-- );

-- CREATE TABLE pedido (
--     id_pedido SERIAL PRIMARY KEY,
--     fecha DATE NOT NULL,
--     id_cliente INT REFERENCES cliente(id_cliente),
--     id_empleado INT REFERENCES empleado(id_empleado)
-- );

-- CREATE TABLE producto (
--     id_producto SERIAL PRIMARY KEY,
--     nombre VARCHAR(100) NOT NULL,
--     precio DECIMAL(10, 2) NOT NULL,
--     stock INT NOT NULL,
--     id_pedido INT REFERENCES pedido(id_pedido)
-- );

-- INSERT INTO cliente (nombre, apellido, telefono, email) VALUES
-- ('Julia', 'Robert Patrick', '1234567890', 'julia@email.com'),
-- ('Ana', 'Hamilton Rodriguez', '1234567891', 'ana@email.com'),
-- ('Teresa', 'Gastelo Lumbar', '1234567892', 'teresa@email.com'),
-- ('Karina', 'Saavedra Cornejo', '1234567893', 'karina@email.com'),
-- ('Tracy', 'Perez Roman', '1234567894', 'tracy@email.com'),
-- ('German','Gonzalez', '1234567895', 'german@email.com'),
-- ('Lucas', 'Lopez', '1234567896', 'lucas@email.com'),
-- ('Federico', 'Martinez', '1234567897', 'federico@email.com');

-- INSERT INTO empleado (nombre, cargo, salario) VALUES
-- ('Carlos', 'Gerente', 5000.00),
-- ('Sofia', 'Vendedor', 3000.00),
-- ('Miguel', 'Cajero', 2500.00),
-- ('Laura', 'Asistente de Ventas', 2800.00),
-- ('Diego', 'Almacenero', 2200.00),
-- ('Patricia', 'Supervisor', 3500.00),
-- ('Roberto', 'Encargado', 3200.00),
-- ('Marcela', 'Recepcionista', 2400.00);

-- INSERT INTO pedido (fecha, id_cliente, id_empleado) VALUES
-- ('2024-01-15', 1, 1),
-- ('2024-01-16', 2, 2),
-- ('2024-01-17', 3, 3),
-- ('2024-01-18', 4, 4),
-- ('2024-01-19', 5, 5),
-- ('2024-01-20', 6, 6),
-- ('2024-01-21', 7, 7),
-- ('2024-01-22', 8, 8);

-- INSERT INTO producto (nombre, precio, stock, id_pedido) VALUES
-- ('Producto A', 10.00, 100, 1),
-- ('Producto B', 20.00, 50, 2),
-- ('Producto C', 15.00, 75, 3),
-- ('Producto D', 25.00, 30, 4),
-- ('Producto E', 5.00, 200, 5),
-- ('Producto F', 12.00, 120, 6),
-- ('Producto G', 18.00, 60, 7),
-- ('Producto H', 22.00, 45, 8);

select c.nombre, c.apellido, pr.nombre, pr.precio
  from cliente as c
  inner join pedido as p on c.id_cliente=p.id_cliente
  inner join producto as pr on pr.id_pedido=p.id_pedido
  order by c.nombre asc;

select e.nombre, e.cargo, pr.nombre, pr.stock, pr.precio
  from empleado as e
  inner join pedido as pe on pe.id_empleado=e.id_empleado
  inner join producto as pr on pr.id_pedido=pe.id_pedido
  where pr.precio > 15.00
  order by e.nombre asc;