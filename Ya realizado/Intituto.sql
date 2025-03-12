--Ejercicio01--
SELECT *
FROM alumno	
WHERE id = 1;
--Ejercicio02--
SELECT *
FROM alumno
WHERE teléfono = 692735409;
--Ejercicio03--
SELECT *
FROM alumno
WHERE es_repetidor = 'sí';
--Ejercicio04--
SELECT *
FROM alumno
WHERE es_repetidor = 'no';
--Ejercicio05--
SELECT * 
FROM alumno
WHERE fecha_nacimiento < '01/01/1993'
--Ejercicio06--
SELECT * 
FROM alumno
WHERE fecha_nacimiento > '01/01/1994'
--Ejercicio07--
SELECT * 
FROM alumno
WHERE fecha_nacimiento > '01/01/1994' AND es_repetidor = 'no'
--Ejercicio08--
SELECT *
FROM alumno
WHERE YEAR(fecha_nacimiento) = 1998
--Ejercicio09--
SELECT *
FROM alumno
WHERE YEAR(fecha_nacimiento) NOT LIKE '1998' 
--Ejercicio10--
SELECT *
FROM alumno
WHERE fecha_nacimiento BETWEEN'01/01/1998' and '31/05/1998'
--Ejercicio11--
SELECT nombre ,REVERSE(nombre) AS NOMBRE_invertido
FROM alumno
--Ejercicio12--
SELECT CONCAT(nombre,' ',apellido1,' ',apellido2)AS nombre_entero , REVERSE(CONCAT(nombre,' ',apellido1,' ',apellido2)) AS NOMBREEntero_invertido
FROM alumno
--Ejercicio13--
SELECT UPPER (CONCAT(nombre,' ',apellido1,' ',apellido2))AS nombre_entero , REVERSE(CONCAT(nombre,' ',apellido1,' ',apellido2)) AS NOMBREEntero_invertido
FROM alumno
--Ejercicio14--
SELECT CONCAT(nombre,' ',apellido1,' ',apellido2)AS nombre_entero , LEN(CONCAT(nombre,' ',apellido1,' ',apellido2)) AS Cantidad_caracter
FROM alumno
--Ejercicio15--
SELECT CONCAT(nombre,' ',apellido1,' ',apellido2)AS nombre_entero , CONCAT(nombre,' ',apellido1,' ',apellido2,'@ies.com') AS Correo_Electronico
FROM alumno
--Ejercicio16--
SELECT CONCAT(nombre,' ',apellido1,' ',apellido2)AS nombre_entero , CONCAT(nombre,' ',apellido1,' ',apellido2,'@ies.com') AS Correo_Electronico , CONCAT(REVERSE(apellido1),YEAR (fecha_nacimiento)) AS Contraseña
FROM alumno
--Ejercicio17--
SELECT fecha_nacimiento AS Fecha_Completa , DAY(fecha_nacimiento) AS dia , MONTH (fecha_nacimiento) AS Mes , YEAR(fecha_nacimiento) AS Años
fROM alumno
--Ejercicio18--
SELECT fecha_nacimiento, DATENAME(WEEKDAY , fecha_nacimiento) AS NOMBRE_DIA , DATENAME(MONTH, fecha_nacimiento) AS NOMBRE_MES  
FROM alumno
--Ejercicio19--
SELECT fecha_nacimiento, DATEDIFF(DAY , fecha_nacimiento,SYSDATETIME()) AS DIA_DESDE_NACIMIENTO 
FROM alumno
