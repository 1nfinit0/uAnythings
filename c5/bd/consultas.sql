
-- select l.titulo, a.nombreautor, l.datepublicacion
--   from libro as l
--   inner join autor as a on a.idautor = l.idautor
--   order by l.titulo asc

-- select * from ejemplar;

-- select u.nombreusuario, u.telefono, l.titulo, l.datepublicacion
--   from usuario as u
--   inner join ejemplar as e on e.idusuario=u.idusuario
--   inner join libro as l on l.idlibro=e.idlibro
--   order by u.nombreusuario asc

--   nombreusuario   | telefono  |           titulo           | datepublicacion 
-- ------------------+-----------+----------------------------+-----------------
--  Ana Martínez     | 111111111 | Ficciones                  | 1944-01-01
--  Carlos Rodríguez | 555555555 | La ciudad y los perros     | 1963-11-01
--  Juan Pérez       | 123456789 | Cien años de soledad       | 1967-06-05
--  Luis Fernández   | 222222222 | El laberinto de la soledad | 1950-10-22
--  María Gómez      | 987654321 | La casa de los espíritus   | 1982-01-01
-- (5 rows)

select u.nombreusuario as "Usuario", u.telefono, a.nombreautor, a.nacionalidadautor, l.titulo, l.datepublicacion
  from ejemplar as e
  inner join usuario as u on e.idusuario=u.idusuario
  inner join libro as l on l.idlibro=e.idlibro
  inner join autor as a on a.idautor=l.idautor
  order by u.nombreusuario asc

-- ❯ psql -U tobi -d dbbiblioteca -f ./consultas.sql
--      Usuario      | telefono  |    nombreautor     | nacionalidadautor |           titulo           | datepublicacion 
-- ------------------+-----------+--------------------+-------------------+----------------------------+-----------------
--  Ana Martínez     | 111111111 | Jorge Luis Borges  | Argentino         | Ficciones                  | 1944-01-01
--  Carlos Rodríguez | 555555555 | Mario V. Llosa     | Peruano           | La ciudad y los perros     | 1963-11-01
--  Juan Pérez       | 123456789 | Gabriel G. Márquez | Colombiano        | Cien años de soledad       | 1967-06-05
--  Luis Fernández   | 222222222 | Octavio Paz        | Mexicano          | El laberinto de la soledad | 1950-10-22
--  María Gómez      | 987654321 | Isabel Allende     | Chilena           | La casa de los espíritus   | 1982-01-01
-- (5 rows)