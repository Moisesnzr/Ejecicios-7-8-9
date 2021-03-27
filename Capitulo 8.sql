
-- Primer ejercicio del capitulo.
-- Trabaje con la tabla "agenda" que registra la información referente a sus amigos.

-- 1- Elimine la tabla.

Drop table agenda;

-- 2- Cree la tabla con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), domicilio (cadena de 30) y telefono (cadena de 11):

create table agenda(
    apellido varchar2(30),
    nombre varchar2(20),
    domicilio varchar2(30),
    telefono varchar2(11)
);

-- 3- Ingrese los siguientes registros (insert into):

insert into agenda values ('Alvarez','Alberto','Colon 123','4234567'); 

insert into agenda values ('Juarez','Juan','Avellaneda 135','4458787');

insert into agenda values ('Lopez','Maria','Urquiza 333','4545454');

insert into agenda values ('Lopez','Jose','Urquiza 333','4545454');

insert into agenda values ('Salas','Susana','Gral. Paz 1234','4123456');

-- 4- Elimine el registro cuyo nombre sea "Juan" (1 registro)

delete from agenda where nombre = 'Juan';

-- 5- Elimine los registros cuyo número telefónico sea igual a "4545454" (2 registros)

delete from agenda where telefono = '4545454';

-- 6- Elimine todos los registros (2 registros)

delete from agenda;

-- Segundo ejercicio del capitulo.
-- Un comercio que vende artículos de computación registra los datos de sus artículos en una tabla con ese nombre.

-- 1- Elimine "articulos"

Drop table articulos;

-- 2- Cree la tabla, con la siguiente estructura:

create table articulos(
    codigo number(4,0),
    nombre varchar2(20),
    descripcion varchar2(30),
    precio number(7,2),
    cantidad number(3)
);
 
-- 3- Vea la estructura de la tabla.

Describe articulos;

-- 4- Ingrese algunos registros:

insert into articulos values (1,'impresora','Epson Stylus C45',400.80,20);

insert into articulos values (2,'impresora','Epson Stylus C85',500,30);
 
insert into articulos values (3,'monitor','Samsung 14',800,10);
 
insert into articulos values (4,'teclado','ingles Biswal',100,50);

insert into articulos values (5,'teclado','español Biswal',90,50);

-- 5- Elimine los artículos cuyo precio sea mayor o igual a 500 (2 registros)

delete from articulos where precio >= 500;

-- 6- Elimine todas las impresoras (1 registro)

delete from articulos where nombre = 'impresora';

-- 7- Elimine todos los artículos cuyo código sea diferente a 4 (1 registro)

delete from articulos where codigo <> 4;

