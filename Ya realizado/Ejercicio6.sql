CREATE TABLE trabajador (
idTrabajador NVARCHAR (9)NOT NULL,
nombreTrabajador NVARCHAR (200)NOT NULL,
apellido1Trabajador NVARCHAR (200)NOT NULL,
apellido2Trabajador NVARCHAR (200)NOT NULL,
fechaNacTrabajador DATE NOT NULL,
CONSTRAINT PK_idtrabajador PRIMARY KEY (idtrabajador)
);