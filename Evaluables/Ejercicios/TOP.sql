CREATE VIEW DATOS_CIENTIFICOS AS
SELECT * 
FROM cientifico

SELECT *
FROM DATOS_CIENTIFICOS

USE cientificos

*---------------------------*
CREATE VIEW PROYECTO_100HORAS AS
SELECT codigo , nombre , horas
FROM proyecto
WHERE horas > 100

SELECT * 
FROM PROYECTO_100HORAS

*--------------------------*
CREATE VIEW MENOS_HORAS AS
SELECT TOP (3) horas, codigo , nombre 
FROM proyecto
ORDER BY horas ASC

SELECT * 
FROM MENOS_HORAS

*-------------------------------*
CREATE VIEW CONTIENEN_E AS
SELECT dni , nombre 
FROM cientifico
WHERE nombre LIKE '%e%'

SELECT *
FROM CONTIENEN_E
*------------------------------------*
CREATE VIEW CIENTIFICO_PROYECTO AS
SELECT cientifico.nombre , proyecto.nombre AS proyectonombre
FROM cientifico
INNER JOIN asignadoa ON cientifico.dni = asignadoa.cientifico
INNER JOIN proyecto ON asignadoa.proyecto = proyecto.codigo

SELECT *
FROM CIENTIFICO_PROYECTO
*------------------------------------*
CREATE VIEW PROYECTOS_5TOP AS 
SELECT TOP(5) proyecto.nombre , COUNT(cientifico.dni) AS Total
FROM cientifico
INNER JOIN asignadoa ON cientifico.dni = asignadoa.cientifico
INNER JOIN proyecto ON asignadoa.proyecto = proyecto.codigo
GROUP BY proyecto.nombre 
ORDER BY Total DESC

SELECT *	
FROM PROYECTOS_5TOP
*------------------------------------*
CREATE VIEW CIENTIFIC_AERO AS
SELECT proyecto.nombre , COUNT(cientifico.dni) AS Total
FROM cientifico
INNER JOIN asignadoa ON cientifico.dni = asignadoa.cientifico
INNER JOIN proyecto ON asignadoa.proyecto = proyecto.codigo