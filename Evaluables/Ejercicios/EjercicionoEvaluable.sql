--Ejercicio01--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,teléfono) VALUES ('Laura', 'Gómez', 'García', '15-07-2000','no', 654987321 );
--Ejercicio02--
DELETE FROM alumno WHERE teléfono = 692735409;
--Ejercicio03--
UPDATE alumno SET es_repetidor = 'no' WHERE nombre = 'Irene'AND apellido1 = 'Gutiérrez' AND apellido2 = 'Sánchez';
--Ejercicio04--
INSERT INTO alumno (nombre , apellido1 , apellido2, fecha_nacimiento,es_repetidor,teléfono) VALUES ('Carlos','López','Martínez','10-05-1997','sí', null );
--Ejercicio05--
DELETE FROM alumno WHERE id = 3 ;
--Ejercicio06--
UPDATE alumno SET teléfono = 699123456 WHERE nombre = 'Cristina'AND apellido1 = 'Fernández' AND apellido2 = 'Ramírez';
--Ejercicio07--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,teléfono)VALUES ('Raúl','Sánchez','Ruiz','25-12-1995','no',622345678);
--Ejercicio08--
DELETE FROM alumno WHERE teléfono IS null;
--Ejercicio09--
UPDATE alumno SET apellido1  = 'Sancho' WHERE apellido1 = 'Sánchez';
--Ejericio10--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,teléfono)VALUES ('Ana','Torres','García','30-11-1999','sí',687654321);
--Ejercicio11--
DELETE FROM alumno WHERE es_repetidor = 'sí';
--Ejercicio12--
UPDATE alumno SET nombre ='David' WHERE id = 10;
--Ejercicio13--
INSERT INTO alumno (nombre, apellido1, apellido2,fecha_nacimiento,es_repetidor,teléfono) VALUES ('Marta','Pérez','López','20-08-1993','no',634567890)
--Ejercicio14--
DELETE FROM alumno WHERE fecha_nacimiento < '1-1-1990';
--Ejercicio15--
UPDATE alumno SET teléfono = 600000000 WHERE teléfono is NULL;
--Ejercicio16--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,teléfono) VALUES ('Javier','Rodriguez','García','05-01-1992','no',null);
--Ejercicio17--
DELETE FROM alumno WHERE nombre = 'Antonio';
--Ejercicio18--
UPDATE alumno set es_repetidor = 'sí' WHERE fecha_nacimiento = '01-01-1995';
--Ejercicio19--
INSERT INTO alumno (nombre,apellido1,apellido2,fecha_nacimiento,es_repetidor,teléfono) VALUES ('Sofía','Martínez','Ruiz','10-10-1998','sí',609876543) 
--Ejercicio20--
DELETE FROM alumno WHERE apellido2 = 'Ortega';