--Miguel Macias del Pino --
CREATE DATABASE biblioteca;
USE biblioteca;
CREATE TABLE libro(
libro1 NVARCHAR (5));
CREATE TABLE prestamo(
prestamo1 NVARCHAR (5));
CREATE TABLE usuario(
usuario1 NVARCHAR (5));
CREATE TABLE autor (
autor1 NVARCHAR (5));

--Ejercicio 1--

CREATE LOGIN bibliotecario1
WITH PASSWORD = 'contraseña123'; 

CREATE USER bibliotecario1
FOR LOGIN bibliotecario1;

--Ejercicio 2 --

CREATE USER lector1
WITHOUT LOGIN;

--Ejercicio 3--

ALTER USER bibliotecario1
WITH LOGIN = gestorBiblioteca;

--Ejercicio 4 --

GRANT SELECT, UPDATE 
ON libro
TO gestorBiblioteca;

--Ejercicio 5 --

DENY DELETE 
ON libro
TO gestorBiblioteca;

--Ejercicio 6--

GRANT SELECT
ON prestamo
TO lector1;

--Ejercicio 7--

CREATE LOGIN bibliotecario2
WITH PASSWORD = 'contraseña123'; 

CREATE USER bibliotecario2
FOR LOGIN bibliotecario2;

DENY UPDATE 
ON libro
TO bibliotecario2;

--Ejericicio 8--

GRANT INSERT , UPDATE , DELETE 
ON prestamo
TO gestorBibliotecario
WITH GRANT OPTION;

--Ejericio 9--

GRANT ALL
ON usuario
TO gestorBiblioteca;

--Ejercicio 10--

DENY SELECT
ON prestamo
TO lector1;

--Ejercicio 11-

ALTER USER bibliotecario2
WITH NAME = asistenteBiblioteca;

ALTER LOGIN bibliotecario2
WITH NAME = asistenteBiblioteca;
--Ejercicio 12--
CREATE USER revisorLibros
WITHOUT LOGIN ;

GRANT UPDATE , SELECT
ON libro
TO revidorLibros;

--Ejercicio 13--

 DROP USER lector1;

 --Ejercicio 14--

 DENY ALL
 ON libro
 TO asistenteBiblioteca;