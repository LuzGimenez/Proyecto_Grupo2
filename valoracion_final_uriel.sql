CREATE DATABASE ispc;
USE ispc;

CREATE TABLE dueno 
(
DNI int primary key not null,
Nombre varchar(50),
Apellido varchar(50),
Telefono int,
Direccion varchar(50)
);

CREATE TABLE perro
(
ID_Perro int primary key not null,
Nombre varchar(50),
Fecha_nacimiento date,
Sexo varchar(20),
DNI_dueno int,
FOREIGN KEY (DNI_dueno) REFERENCES dueno(ID_Perro)
);

CREATE TABLE historial
(
ID_Historial int primary key not null,
Fecha date,
Perro int,
Descripcion varchar(50),
Monto int,
FOREIGN KEY (Perro) REFERENCES perro(ID_Perro)
);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values 
(40720150, 'Marcelo', 'Martinez', 25073955, 'Belgrano 986'),
(37897354, 'Marcos', 'Gimenez', 35678894, 'Si 125'),
(27895564, 'Sofia', 'Casal', 45456125, 'Peron 123'),
(31825484, 'Yamila', 'Villalba', 54516138, 'Salguero 17');

SELECT *
FROM dueno;

INSERT INTO perro values
(1,'Linda',"2022-02-24",'Hembra',37897354),
(2,'Cristian',"2020-07-07",'Macho',27895564),
(3,'Marcelina',"2021-05-10",'Hembra',31825484),
(4,'Pepe',"2022-07-15",'Macho',40720150);

SELECT *
FROM perro;

INSERT INTO historial values
(1,"2022-01-23",1,'Consulta',1500),
(2,"2021-04-02",2,'Peluqueria',3000),
(3,"2022-08-13",3,'Vacuna',2200),
(4,"2021-04-02",4,'Peluqueria',3000);

UPDATE perro SET Fecha_nacimiento = '2015-05-05'
WHERE ID_Perro = 4;