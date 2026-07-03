create table sede1(
   id_sede Number primary key,
   nombre varchar(50),
   ciudad varchar(50)
);

create table docente1(
   id_docente number primary key,
   nombres varchar(50),
   especialidad varchar(50),
   id_sede number,
   constraint fk_docente_sede1
   foreign key (id_sede) references sede1(id_sede)
);

create table curso1(
   id_curso number primary key,
   nombre varchar(100),
   creditos number,
   id_docente number,
   constraint fk_curso_docente1
   foreign key (id_docente) references docente1(id_docente)    
);

create table estudiante1(
   id_estudiante number primary key,
   nombres varchar(50),
   correo varchar(50),
   ciclo number
);

create table matricula1(
   id_matricula number primary key,
   fecha_matricula date,
   id_estudiante number,
   id_curso number,
   constraint fk_matricula_estudiante1
   foreign key (id_estudiante)
   references estudiante1(id_estudiante),

   constraint fk_matricula_curso1
   foreign key (id_curso)
   references curso1(id_curso)
);

create table pago1(
   id_pago number primary key,
   monto number(10,2),
   fecha_pago date,
   id_matricula number,
   constraint fk_pago_matricula1
   foreign key (id_matricula)
   references matricula1(id_matricula)
);

insert into sede1 values (1,'Sede Lima','Lima'),
                        (2,'Sede Norte','Lima'),
                        (3,'Sede sur','Lima'),
                        (4,'Sede Chiclayo','Lambayeque'),
                        (5,'Sede Arequipa','Arequipa');


insert into docente1 values (1,'Carlos Perez','Java',1),
                          (2,'Ana Torres','Base de Datos',2),
                          (3,'Juan Ortiz','Javascript',3),
                          (4,'María Zevallos','Oracle Sql',4),
                          (5,'Ruben Ancajima','Programación web',5);

insert into curso1 values (1,'Java',4,1),
                        (2,'Base de Datos',3,2),
                        (3,'Javascript',4,3),
                        (4,'Oracle Sql',4,4),
                        (5,'Programación web',4,5);


insert into estudiante1 values (1,'Luis Mendoza','luis@gmail.com',3),
                               (2,'María Lopez','maria@gmail.com',5),
                               (3,'Julio Alcantara','julio@gmail.com',4),
                               (4,'Rosa Breña','rosa@gmail.com',2),
                               (5,'Michael Rodas','michael@gmail.com',1);
                  
insert into matricula1 values (1,SYSDATE,1,1),
                            (2,SYSDATE,2,2),
                            (3,SYSDATE,3,3),
                            (4,SYSDATE,4,4),
                            (5,SYSDATE,5,5);


insert into pago1 values (1,450,sysdate,1),
                       (2,500,sysdate,2),
                       (3,774,sysdate,3),
                       (4,360,sysdate,4),
                       (5,840,sysdate,5);



SELECT
e.nombres estudiante, 

SUM(p.monto) monto
FROM estudiante e
INNER JOIN matricula m
ON e.id_estudiante = m.id_estudiante
INNER JOIN pago p
ON m.id_matricula = p.id_matricula
GROUP BY e.nombres
