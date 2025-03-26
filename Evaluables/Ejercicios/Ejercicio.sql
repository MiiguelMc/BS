--EjercicioSubconsulta--
USE NBA
--MiguelMaciasdelPino--
--Ejercicio01--
SELECT nombre 
FROM jugador 
WHERE altura >(
SELECT AVG(altura)
FROM jugador)
--Ejercicio02--
Select * 
FROM jugador
where codigo in(
SELECT jugador
FROM estadistica
WHERE temporada = '98/99'
)AND(nombre_equipo IN(
SELECT equipo_local
FROM partido
WHERE equipo_visitante = 'Raptors')
OR nombre_equipo IN(SELECT equipo_visitante 
FROM partido
WHERE equipo_local = 'Raptors'))
--Ejercicio03--
SELECT nombre 
FROM jugador
WHERE codigo IN(
SELECT jugador
FROM estadistica
WHERE puntos_por_partido < 15 AND temporada = '06/07')
--Ejercicio04--
SELECT nombre 
FROM jugador
WHERE codigo IN(
SELECT jugador
FROM estadistica
WHERE puntos_por_partido > 20 AND temporada = '07/08' AND jugador IN(
SELECT codigo
FROM jugador 
WHERE nombre_equipo IN(
select nombre
FROM equipo
WHERE conferencia = 'East'
)))
--Ejercicio05--
SELECT nombre 
FROM jugador
WHERE codigo IN(
SELECT jugador
FROM estadistica
WHERE tapones_por_partido >0.8 AND temporada = '05/06')
--Ejercicio06--
SELECT nombre 
FROM jugador
WHERE altura > (
select AVG(altura)
FROM jugador 
WHERE nombre_equipo = 'Timberwolves')
--Ejercicio07--
SELECT nombre 
FROM equipo
WHERE nombre LIKE 'C%' and nombre IN(
SELECT nombre_equipo
FROM jugador
WHERE peso > 250 )
--Ejercicio08--
SELECT nombre 
FROM jugador 
WHERE codigo in(
SELECT jugador
FROM estadistica
Where puntos_por_partido > (SELECT AVG (puntos_por_partido)
FROM estadistica
WHERE temporada = '06/07') AND temporada = '06/07' )
--Ejercicio09--
SELECT nombre 
FROM jugador
WHERE codigo in(
select jugador 
FROM estadistica
WHERE temporada='07/08' AND rebotes_por_partido >= 1 )
--Ejercicio10--
SELECT nombre 
FROM jugador
WHERE codigo in(
SELECT jugador 
FROM estadistica
WHERE puntos_por_partido > 10 and temporada = '04/05')
--Ejercicio11--
SELECT nombre 
FROM jugador 
WHERE codigo in(
SELECT jugador
FROM estadistica
where asistencias_por_partido < 3 and temporada= '03/04')
--Ejercicio12--
SELECT nombre 
FROM jugador
WHERE codigo IN(
select jugador 
FROM estadistica
WHERE puntos_por_partido > (
SELECT AVG (puntos_por_partido)
FROM estadistica
where temporada='07/08') AND temporada='07/08')
--Ejercicio13--
SELECT * 
FROM jugador 
WHERE nombre_equipo IN(
SELECT nombre
FROM equipo
WHERE conferencia = 'East' and nombre IN(
SELECT equipo_visitante 
FROM partido
)) and codigo IN(
SELECT jugador
FROm estadistica
WHERE  10 <=(
SELECT AVG(puntos_por_partido)
FROM estadistica
where jugador = jugador.codigo))
--Ejercicio14--
SELECT nombre
from jugador
WHERE codigo 
in(
SELECT jugador
FROM estadistica
WHERE (SELECT sum(puntos_por_partido) 
FROM estadistica
WHERE temporada = '07/08' and jugador =jugador.codigo ) > 
(
SELECT AVG(puntos_por_partido)
FROM estadistica
WHERE temporada = '07/08' 
 ))
 --Ejercicio15--ANTES DE LA ACTUALIZACION DE LA BASE DE DATOS POR ESO ESTA EL OR EN TEMPORADA 
 SELECT nombre
 FROM jugador 
 WHERE codigo IN(
 SELECT jugador
 FROM estadistica
 WHERE asistencias_por_partido < 5 and temporada = '05/06' OR temporada= '5.6'
 )
 --Ejercicio16--
 SELECT nombre 
 FROM jugador 
 WHERE codigo IN(
 SELECT jugador 
 FROM estadistica
 WHERE puntos_por_partido >(
 SELECT AVG(puntos_por_partido)
 FROM estadistica
 WHERE jugador IN(
	SELECT codigo
	FROM jugador
	WHERE nombre_equipo = 'Raptors'
 )))