create database "loschinos";
\c loschinos;

CREATE TABLE conductor (
  id SERIAL PRIMARY KEY,
  nombre varchar not null,
  apellido varchar not null,
  licencia_conducir varchar not null,
  telefono varchar not null,
  direccion varchar not null
);

CREATE TABLE vehiculo (
  id SERIAL PRIMARY KEY,
  placa varchar not null,
  marca varchar not null,
  modelo varchar not null,
  capacidad integer not null,
  estado varchar not null
);

CREATE TABLE ruta (
  id SERIAL PRIMARY KEY,
  origen varchar not null,
  destino varchar not null,
  distancia_km decimal not null,
  duracion_estimada decimal not null,
  peajes_aproximados integer not null
);

CREATE TABLE cliente (
  id SERIAL PRIMARY KEY,
  nombre varchar not null,
  apellido varchar not null,
  dni varchar not null,
  telefono varchar not null,
  correo varchar not null
);

CREATE TABLE viaje (
  id SERIAL PRIMARY KEY;
  fecha_salida varchar not null,
  fecha_llegada varchar not null,
  id_conductor integer not null references conductor(id),
  id_vehiculo integer not null references vehiculo(id),
  id_ruta integer not null references ruta(id)
);

CREATE TABLE factura (
  id SERIAL primary key,
  fecha_emision varchar not null,
  metodo_pago varchar not null,
  id_cliente integer not null references cliente(id),
  id_viaje integer not null references viaje(id)
);

CREATE TABLE conductor (
  id SERIAL PRIMARY KEY,
  nombre varchar not null,
  apellido varchar not null,
  licencia_conducir varchar not null,
  telefono varchar not null,
  direccion varchar not null
);

INSERT INTO conductor (nombre, apellido, licencia_conducir, telefono, direccion) VALUES
('Maria', 'Gomez', 'A2', '912345678', 'Avenida Siempre Viva 456'),
('Carlos', 'Lopez', 'A3', '923456789', 'Boulevard  789'),
('Ana', 'Martinez', 'A4', '934567890', 'Calle Luna 321'),
('Luis', 'Mantilla', 'A5', '941678901', 'Calle Sol 657'),
('Elias', 'Barboza', 'A6', '945563890', 'Amapolas 655'),
('Augusto', 'Ruiz', 'A7', '912778901', 'Practicas 653'),
('Robert', 'Paucar', 'A8', '995678901', 'Caso De Uso 651');

INSERT INTO vehiculo (placa, marca, modelo, capacidad, estado) VALUES
('AND-183','Ferrari','GT',8, 'Nuevo'),
('BND-182','Toyota','12',20, 'Viejo'),
('CND-189','Susuki','AJS',2, 'Masomenos'),
('DND-184','Volkswagen','HOnor',10, 'Nuevo'),
('END-185','Boing','Apple',360, 'Muy Nuevo'),
('FND-186','Kia','ASD',12, 'Old'),
('GND-187','Foton','alsj',6, 'Viejito'),
('HND-188','Volvo','DFHDC',4, 'Viejito');

INSERT INTO ruta (origen, destino, distancia_km, duracion_estimada, peajes_aproximados) VALUES
('Lima', 'Cusco', 1100.5, 20.5, 3),
('Arequipa', 'Puno', 500.0, 10.0, 2),
('Trujillo', 'Chiclayo', 200.0, 4.0, 1),
('Iquitos', 'Tarapoto', 800.0, 16.0, 4),
('Piura', 'Tumbes', 300.0, 6.0, 2),
('Huancayo', 'Ayacucho', 400.0, 8.0, 3),
('Chiclayo', 'Lambayeque', 100.0, 2.0, 1),
('Puno', 'Copacabana', 150.0, 3.0, 1);

INSERT INTO cliente (nombre, apellido, dni, telefono, correo) VALUES
('Pedro', 'Gomez', '12345678', '987654321', 'pedro.gomez@example.com'),
('Pedrito', 'Perez', '12345678', '987654321', 'pedrito.gomez@example.com'),
('Juan', 'Paz', '12345678', '987654321', 'juan.gomez@example.com'),
('Juancito', 'Condor', '12345678', '987654321', 'juancito.gomez@example.com'),
('Gael', 'Romero', '12345678', '987654321', 'gael.gomez@example.com'),
('Gaelcito', 'Ramos', '12345678', '987654321', 'gaelcito.gomez@example.com'),
('Luis', 'Cano', '12345678', '987654321', 'luis.gomez@example.com'),
('Luisito', 'Garcia', '12345678', '987654321', 'luisito.gomez@example.com');

INSERT INTO viaje (fecha_salida, fecha_llegada, id_conductor, id_vehiculo, id_ruta) VALUES
('10 de Mayo', '12 de Mayo',1,1,1),
('11 de Mayo', '13 de Mayo',2,2,2),
('12 de Mayo', '14 de Mayo',3,3,3),
('13 de Mayo', '15 de Mayo',4,4,4),
('14 de Mayo', '16 de Mayo',5,5,5),
('15 de Mayo', '17 de Mayo',6,6,6),
('16 de Mayo', '18 de Mayo',7,7,7),
('17 de Mayo', '19 de Mayo',8,8,8);

INSERT INTO factura (fecha_emision, metodo_pago, id_cliente, id_viaje) VALUES
('10 de Mayo', 'AL CONTADO',1,1),
('11 de Mayo', 'AL CONTADO',2,2),
('12 de Mayo', 'AL CONTADO',3,3),
('13 de Mayo', 'AL CONTADO',4,4),
('14 de Mayo', 'AL CONTADO',5,5),
('15 de Mayo', 'AL CONTADO',6,6),
('16 de Mayo', 'AL CONTADO',7,7),
('17 de Mayo', 'AL CONTADO',8,8);


-- Mostrar la lista de conductores con sus nombres, apellidos, licencias de conducir ordenados por apellidos en forma ascendente

SELECT nombre, apellido, licencia_conducir
FROM conductor
ORDER BY apellido ASC;

-- Mostrar la lista de los 3 primeros vehículos mostrando su placa, marca, modelo y capacidad

SELECT placa, marca, modelo, capacidad
FROM vehiculo
ORDER BY id ASC
LIMIT 3;

-- Join entre conductor y viaje para mostrar el nombre del conductor, fecha de salida y fecha de llegada de cada viaje

SELECT c.nombre, v.fecha_salida, v.fecha_llegada
FROM conductor c
JOIN viaje v ON c.id = v.id_conductor
ORDER BY v.fecha_salida ASC;
