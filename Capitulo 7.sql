-- Primer Ejecicio del Capitulo

-- Un comercio que vende art�culos de computaci�n registra los datos de sus art�culos en una tabla con ese nombre.

-- 1- Elimine "articulos"

Drop table articulos;

-- 2- Cree la tabla, con la siguiente estructura:

Create table articulos(
    codigo number(5),
    nombre varchar2(20),
    descripcion varchar2(30),
    precio number(6,2),
    cantidad number(3)
);
 
-- 3- Vea la estructura de la tabla.

Describe articulos;

-- 4- Ingrese algunos registros:

insert into articulos values (1,'impresora','Epson Stylus C45',400.80,20);

insert into articulos values (2,'impresora','Epson Stylus C85',500,30);

insert into articulos values (3,'monitor','Samsung 14',800,10);

insert into articulos values (4,'teclado','ingles Biswal',100,50);

insert into articulos values (5,'teclado','espa�ol Biswal',90,50);

-- 5- Seleccione los datos de las impresoras (2 registros)

Select *from articulos where nombre = 'impresora';

-- 6- Seleccione los art�culos cuyo precio sea mayor o igual a 400 (3 registros)

select *from articulos where precio >= 400;

-- 7- Seleccione el c�digo y nombre de los art�culos cuya cantidad sea menor a 30 (2 registros)

select codigo, nombre from articulos where cantidad < 30;

-- 8- Selecciones el nombre y descripci�n de los art�culos que NO cuesten $100 (4 registros)

select nombre, descripcion from articulos where precio != 100;


-- Segundo Ejecicio del Capitulo

-- Un video club que alquila pel�culas en video almacena la informaci�n de sus pel�culas en alquiler en una tabla denominada "peliculas".

-- 1- Elimine la tabla.

Drop table peliculas;

-- 2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:

Create table peliculas(
    Titulo varchar2(20),
    Actor varchar2(20),
    Duracion number(3),
    Cantidad number(1)
);

-- 3- Ingrese los siguientes registros:

insert into peliculas values ('Mision imposible','Tom Cruise',120,3);

insert into peliculas values ('Mision imposible 2','Tom Cruise',180,4);

insert into peliculas values ('Mujer bonita','Julia R.',90,1);

insert into peliculas values ('Elsa y Fred','China Zorrilla',80,2);

-- 4- Seleccione las pel�culas cuya duraci�n no supere los 90 minutos (2 registros)

select *from peliculas where Duracion <= 90;

-- 5- Seleccione el t�tulo de todas las pel�culas en las que el actor NO sea "Tom Cruise" (2 registros)

select *from peliculas where Actor != 'Tom Cruise';

-- 6- Muestre todos los campos, excepto "duracion", de todas las pel�culas de las que haya m�s de 2 copias (2 registros)

select Titulo, Actor, Cantidad from peliculas where Cantidad > 2;