-- Primer ejercicio del capitulo.
-- Trabaje con la tabla "agenda" que almacena los datos de sus amigos.

-- 1- Elimine la tabla y créela con la siguiente estructura:

Drop table agenda;
 
create table agenda(
    apellido varchar2(30),
    nombre varchar2(20),
    domicilio varchar2(30),
    telefono varchar2(11)
);
  
-- 3- Ingrese los siguientes registros:

insert into agenda values ('Acosta','Alberto','Colon 123','4234567');

insert into agenda values ('Juarez','Juan','Avellaneda 135','4458787');

insert into agenda values ('Lopez','Maria','Urquiza 333','4545454');

insert into agenda values ('Lopez','Jose','Urquiza 333','4545454');

insert into agenda values ('Suarez','Susana','Gral. Paz 1234','4123456');

-- 4- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" (1 registro actualizado)

update agenda set nombre = 'Juan Jose' where nombre = 'Juan';

-- 5- Actualice los registros cuyo número telefónico sea igual a "4545454" por "4445566" (2 registros)

update agenda set telefono = '4445566' where telefono = '4545454';

-- 6- Actualice los registros que tengan en el campo "nombre" el valor "Juan" por "Juan Jose" (ningún registro afectado porque ninguno cumple con la condición del "where")

update agenda set nombre = 'Juan Jose' where nombre = 'Juan';


-- Segundo ejercicio del capitulo.
-- Trabaje con la tabla "libros" de una librería.

-- 1- Elimine la tabla y créela con los siguientes campos: titulo (cadena de 30 caracteres de longitud), autor (cadena de 20), editorial (cadena de 15) y precio (entero no mayor a 999.99):

drop table libros;

--

create table libros (
    titulo varchar2(30),
    autor varchar2(20),
    editorial varchar2(15),
    precio number(5,2)
);

-- 3- Ingrese los siguientes registros:

insert into libros values ('El aleph','Borges','Emece',25.00);
insert into libros values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros values ('Cervantes y el quijote','Borges','Emece',25);
insert into libros values ('Matematica estas ahi','Paenza','Siglo XXI',15);

-- 4- Muestre todos los registros (5 registros).

select *from libros;

-- 5- Modifique los registros cuyo autor sea igual a "Paenza", por "Adrian Paenza" (1 registro).

update libros set autor = 'Adrian Paenza' where autor = 'Paenza';

-- 6- Nuevamente, modifique los registros cuyo autor sea igual a "Paenza", por "Adrian Paenza" (ningún registro afectado porque ninguno cumple la condición).

update libros set autor = 'Adrian Paenza' where autor = 'Paenza';

-- 7- Actualice el precio del libro de "Mario Molina" a 27 pesos (1 registro)

update libros set precio = 27 where autor = 'Mario Molina';

-- 8- Actualice el valor del campo "editorial" por "Emece S.A.", para todos los registros cuya editorial sea igual a "Emece" (3 registros).

update libros set editorial = 'Emece S.A.' where editorial = 'Emece';
