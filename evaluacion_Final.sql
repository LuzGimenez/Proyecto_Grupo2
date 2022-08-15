CREATE DATABASE duenosyperros;
USE duenosyperros;

CREATE TABLE dueno
(
DNI int primary key not null,
Nombre varchar (50),
Apellido varchar(50),
Telefono int,
Direccion varchar(50)
);


CREATE TABLE perro
(
ID_Perro int primary key not null,
Nombre varchar(50),
Fecha_nac date,
Sexo varchar(20),
DNI_Dueno int,
FOREIGN KEY (DNI_dueno) REFERENCES dueno(DNI)
);

CREATE TABLE historial
(
ID_Historial int primary key not null,
Fecha date,
Perro int,
Descripcion varchar(250),
Monto int,
FOREIGN KEY (Perro) REFERENCES perro(DNI)
);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (31626201, "Raul", "Vazques", 45678912, 'Falsa 123');

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES 
(27516541, "Sergio", "Ramirez", 45742137, 'Quintana 367'),
(32658761, "Ana", "Romero", 47852123, 'Callao 3'),
(33548576, "Ramiro", "Ramos", 45678912, 'Monroe 25');

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES 
(95641653, "Pedro", "Juarez", 49954177, 'Esquina 29');

SELECT *
FROM dueno;

INSERT INTO perro VALUES
(1, "Firulais", "2020-03-21", "Macho", 32658761);

SELECT *
FROM perro;

INSERT INTO perro VALUES
(2, "Piru", "2021-04-27", "Macho", 27516541),
(3, "Batata", "2019-07-01", "Hembra", 33548576),
(4, "Loquito", "2020-11-10", "Macho", 31626201);



INSERT INTO historial VALUES
(1, "2020-07-03",1,"vacunas",700),
(2, "2022-01-07",2,"tratamiento",1200),
(3, "2022-01-13",3,"refuerzo",800),
(4, "2021-12-16",4,"peluqueria",1200);

SELECT ID_Perro, perro.Nombre, dueno.Nombre AS Nombre_dueno, Apellido
FROM dueno, perro
WHERE DNI = DNI_Dueno
AND dueno.Nombre = 'Pedro';

SELECT ID_Perro, Nombre, Perro, Fecha
FROM historial, perro
WHERE Perro = ID_Perro

DELETE FROM perro
WHERE ID_Perro = 1;

UPDATE perro SET fecha_nac = '2019-07-03'
WHERE ID_Perro = 3;

SELECT ID_Perro, Nombre, Perro, Fecha, Descripcion
FROM historial, perro
WHERE Perro = ID_Perro
AND Descripcion = "peluqueria" AND fecha BETWEEN '2022-01-01' AND '2022-01-31';

UPDATE dueno SET Direccion = "Libertad 123"
WHERE DNI = 47852123