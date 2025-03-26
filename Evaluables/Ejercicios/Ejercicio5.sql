CREATE TABLE trabajo(
idTrabajo NVARCHAR (10) NOT NULL,
nombreTrabajo NVARCHAR (35) NOT NULL,
salarioMin DECIMAL (10,2) NOT NULL,
salarioMax DECIMAL	(10,2) NOT NULL,
CONSTRAINT PK_idtrabajo PRIMARY KEY (idtrabajo),
CONSTRAINT CHK_salarioMax CHECK (salarioMax<=25000),
);