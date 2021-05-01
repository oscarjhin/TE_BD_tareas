DROP DATABASE IF EXISTS bd_proyectos;
CREATE DATABASE bd_proyectos CHARACTER SET utf8 COLLATE utf8_general_ci;
use bd_proyectos;
create table tareas (
id int(11) unsigned auto_increment primary key,
tarea varchar(100) null,
prioridad int(11) null,
completado int(11) null
);
insert into tareas (tareas, prioridad, completado) values ('Reunion con estudiantes de la carrera',1,1);
insert into tareas (tareas, prioridad, completado) values ('Estudiar para el examen de Probabilidades',1,2);
insert into tareas (tareas, prioridad, completado) values ('Pardido de futsal',3,2);



