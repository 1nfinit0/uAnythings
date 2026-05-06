-- CREATE TABLE autor (
--   idautor serial primary key not null,
--   nombreautor varchar(20) not null,
--   edadautor int not null,
--   nacionalidadautor varchar (20) not null
-- );

-- CREATE TABLE usuario (
--   idusuario serial primary key not null,
--   nombreusuario varchar(20) not null,
--   correo varchar(50) not null,
--   telefono varchar(25) not null
-- );

-- CREATE TABLE libro (
--   idlibro serial primary key not null,
--   titulo varchar(50) not null,
--   genero varchar(20) not null,
--   idautor int not null,
--   idusuario int not null,
--   datepublicacion DATE not null,
--   FOREIGN KEY (idautor) REFERENCES autor(idautor)
-- );

-- DROP TABLE IF EXISTS ejemplar;

-- CREATE TABLE ejemplar (
--   idejemplar serial primary key not null,
--   idusuario int not null,
--   idlibro int not null,
--   FOREIGN KEY (idlibro) REFERENCES libro(idlibro),
--   FOREIGN KEY (idusuario) REFERENCES usuario(idusuario)
-- );