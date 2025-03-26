/* DATABASE BARLOCALIDAD;*/
/*USE BARLOCALIDAD;*/
CREATE TABLE localidad (
codigolocalidad INT NOT NULL,
nombre NVARCHAR (50) NOT NULL,
CONSTRAINT pk_Codigo_Localida PRIMARY KEY (codigolocalidad),
);
CREATE TABLE pub(
codigopub NVARCHAR (50) NOT NULL,
nombre NVARCHAR (50) NOT NULL,
licenciafiscal NVARCHAR (50) NOT NULL,
domicilio NVARCHAR (50) NOT NULL,
fechaapertura DATE NOT NULL,
horario NVARCHAR (50) NOT NULL,
codigolocalidad INT NOT NULL,
CONSTRAINT pk_codigo_pub PRIMARY KEY (codigopub),
CONSTRAINT fk_codigo_localidad FOREIGN KEY (codigolocalidad) REFERENCES localidad(codigolocalidad),
CONSTRAINT chk_horario_pub CHECK (horario IN ('HORARIO1','HORARIO2','HORARIO3')),
);
CREATE TABLE titular (
DNItitular NVARCHAR (50) NOT NULL,
nombre NVARCHAR (50) NOT NULL,
domicilio NVARCHAR (50) ,
codigopub NVARCHAR (50) NOT NULL,
CONSTRAINT pk_DNI_TITULAR PRIMARY KEY (DNItitular),
CONSTRAINT fk_Codigo_pub FOREIGN KEY (codigopub) REFERENCES pub(codigopub),
);
CREATE TABLE empleado(
DNIempleado NVARCHAR (50) NOT NULL,
nombre NVARCHAR (50) NOT NULL,
domicilio NVARCHAR (50) ,
CONSTRAINT pk_DNI_empleado PRIMARY KEY (DNIempleado),
);
CREATE TABLE articulo(
codigoarticulo NVARCHAR (50) NOT NULL,
nombre NVARCHAR (50) NOT NULL,
cantidad INT NOT NULL,
precio MONEY NOT NULL,
codigopub NVARCHAR (50) NOT NULL,
CONSTRAINT pk_codigo_articulo PRIMARY KEY (codigoarticulo),
CONSTRAINT Fk_codigo_pub_articulo FOREIGN KEY (codigopub) REFERENCES pub(codigopub),
CONSTRAINT ch_precio_articulo CHECK (precio>0), 
);
CREATE TABLE Pub_empleado(
codigopub NVARCHAR (50) NOT NULL,
DNIempleado NVARCHAR (50) NOT NULL,
funcion NVARCHAR (50) NOT NULL,
CONSTRAINT pk_codigo_pub PRIMARY KEY (codigopub,DNIempleado,funcion),
CONSTRAINT fk_codigopub_pubempleado FOREIGN KEY (codigopub) REFERENCES pub(codigopub),
CONSTRAINT fk_DNIempleado_pubempleado FOREIGN KEY (DNIempleado) REFERENCES empleado(DNIempleado),
CONSTRAINT ch_Funcion_pubempleado CHECK (funcion in ('CAMARERO','SEGURIDAD','LIMPIEZA'))
);