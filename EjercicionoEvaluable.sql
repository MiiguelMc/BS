--Ejercicio01--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,tel�fono) VALUES ('Laura', 'G�mez', 'Garc�a', '15-07-2000','no', 654987321 );
--Ejercicio02--
DELETE FROM alumno WHERE tel�fono = 692735409;
--Ejercicio03--
UPDATE alumno SET es_repetidor = 'no' WHERE nombre = 'Irene'AND apellido1 = 'Guti�rrez' AND apellido2 = 'S�nchez';
--Ejercicio04--
INSERT INTO alumno (nombre , apellido1 , apellido2, fecha_nacimiento,es_repetidor,tel�fono) VALUES ('Carlos','L�pez','Mart�nez','10-05-1997','s�', null );
--Ejercicio05--
DELETE FROM alumno WHERE id = 3 ;
--Ejercicio06--
UPDATE alumno SET tel�fono = 699123456 WHERE nombre = 'Cristina'AND apellido1 = 'Fern�ndez' AND apellido2 = 'Ram�rez';
--Ejercicio07--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,tel�fono)VALUES ('Ra�l','S�nchez','Ruiz','25-12-1995','no',622345678);
--Ejercicio08--
DELETE FROM alumno WHERE tel�fono IS null;
--Ejercicio09--
UPDATE alumno SET apellido1  = 'Sancho' WHERE apellido1 = 'S�nchez';
--Ejericio10--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,tel�fono)VALUES ('Ana','Torres','Garc�a','30-11-1999','s�',687654321);
--Ejercicio11--
DELETE FROM alumno WHERE es_repetidor = 's�';
--Ejercicio12--
UPDATE alumno SET nombre ='David' WHERE id = 10;
--Ejercicio13--
INSERT INTO alumno (nombre, apellido1, apellido2,fecha_nacimiento,es_repetidor,tel�fono) VALUES ('Marta','P�rez','L�pez','20-08-1993','no',634567890)
--Ejercicio14--
DELETE FROM alumno WHERE fecha_nacimiento < '1-1-1990';
--Ejercicio15--
UPDATE alumno SET tel�fono = 600000000 WHERE tel�fono is NULL;
--Ejercicio16--
INSERT INTO alumno (nombre , apellido1,apellido2,fecha_nacimiento,es_repetidor,tel�fono) VALUES ('Javier','Rodriguez','Garc�a','05-01-1992','no',null);
--Ejercicio17--
DELETE FROM alumno WHERE nombre = 'Antonio';
--Ejercicio18--
UPDATE alumno set es_repetidor = 's�' WHERE fecha_nacimiento = '01-01-1995';
--Ejercicio19--
INSERT INTO alumno (nombre,apellido1,apellido2,fecha_nacimiento,es_repetidor,tel�fono) VALUES ('Sof�a','Mart�nez','Ruiz','10-10-1998','s�',609876543) 
--Ejercicio20--
DELETE FROM alumno WHERE apellido2 = 'Ortega';