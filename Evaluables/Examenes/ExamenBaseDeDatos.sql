--Examen Base de Datos--
--Miguel Macias del Pino--
--Ejercicio01--
SELECT pokemon.nombre , pokemon.ps , pokemon.ataque , pokemon.defensa , pokemon.at_especial,pokemon.df_especial , pokemon.velocidad
FROM pokemon
WHERE pokemon.at_especial>=pokemon.df_especial

--Ejercicio02--
SELECT pokemon.categoria , COUNT(pokemon.nombre) AS cantidad
FROM pokemon
GROUP BY pokemon.categoria
--Ejercicio03--
SELECT pokemon.nombre , pokemon.ataque
FROM pokemon
WHERE pokemon.ataque > (
SELECT AVG(pokemon.ataque)
FROM pokemon
)
ORDER BY pokemon.ataque DESC
--Ejercicio04-- POR Arreglar
SELECT pokemon.nombre , COUNT(pokemon_habilidad.id_pokemon) AS cantidad_de_habilidades
FROM pokemon
INNER JOIN pokemon_habilidad ON pokemon.numeropokedex = pokemon_habilidad.id_habilidad
INNER JOIN habilidad ON pokemon_habilidad.id_habilidad = habilidad.id
GROUP BY pokemon.nombre 
ORDER BY cantidad_de_habilidades DESC

--Ejercicio05--
SELECT pokemon.nombre , evolucion.metodo
FROM pokemon
INNER JOIN evolucion ON pokemon.numeropokedex = evolucion.id_pokemon_base
WHERE evolucion.metodo LIKE '%piedra%'

--Ejercicio06--
SELECT pokemon.nombre , evolucion.id_pokemon_evoluciona , evolucion.metodo
FROM pokemon
LEFT JOIN evolucion ON pokemon.numeropokedex = evolucion.id_pokemon_base

--Ejercicio07--
SELECT pokemon.nombre , tipo1.nombre , tipo2.nombre , pokemon.descripcion , pokemon.categoria
FROM pokemon
INNER JOIN tipo tipo1 ON pokemon.tipo1= tipo1.id
INNER JOIN tipo tipo2 ON pokemon.tipo2 = tipo2.id

--Ejercicio 08--Por Arreglar
SELECT pokemon.nombre ,  tipo1.nombre AS tipo
FROM pokemon
INNER JOIN tipo tipo1 ON pokemon.tipo1= tipo1.id
INNER JOIN fortaleza ON tipo1.id = fortaleza.iddebil
where tipo1.id = ALL(
SELECT tipo.id
FROM tipo
INNER JOIN fortaleza ON tipo.id = fortaleza.iddebil
WHERE  fortaleza.idfuerte = 15) 

--Ejercicio09--Por Arreglar 
SELECT tipo.nombre
FROM tipo
INNER JOIN pokemon ON tipo.id = pokemon.tipo1
WHERE pokemon.numeropokedex = IN(
SELECT pokemon.numeropokedex
FROM pokemon
INNER JOIN fortaleza ON tipo.id = fortaleza.iddebil
INNER JOIN fortaleza fuerte ON tipo.id = fortaleza.idfuerte
WHERE 1 =(
SELECT COUNT(fortaleza.iddebil
FROM fortaleza 
WHERE ))) 

--Ejercicio10--
SELECT pokemon.numeropokedex ,pokemon.nombre,pokemon.ataque, pokemon.velocidad, tipo1.nombre, habilidad.nombre , habilidad.descripcion
FROM pokemon
INNER JOIN tipo tipo1 ON pokemon.tipo1= tipo1.id 
INNER JOIN pokemon_habilidad ON pokemon.numeropokedex = pokemon_habilidad.id_pokemon
INNER JOIN habilidad ON pokemon_habilidad.id_habilidad = habilidad.id
WHERE tipo1.nombre = 'Veneno' and pokemon.velocidad > pokemon.ataque

--Ejercicio11--
SELECT pokemon.nombre , pokemon.velocidad , pokemon.categoria
FROM pokemon
WHERE pokemon.velocidad > ALL(
SELECT TOP 1 pokemon.velocidad
FROM pokemon
WHERE pokemon.categoria = 'Pokémon Dragón'
ORDER BY pokemon.velocidad DESC)
ORDER BY pokemon.peso DESC

--Ejercicio12--
SELECT pokemon.nombre , COUNT(pokemon_region.id_pokemon) AS CANTIDAD_VERSIONES
FROM pokemon
INNER JOIN pokemon_region ON pokemon.numeropokedex = pokemon_region.id_pokemon
GROUP BY pokemon.nombre
ORDER BY CANTIDAD_VERSIONES DESC

--Ejercicio13--
SELECT pokemon.nombre , tipo1.nombre as nombre_habilidad  , pokemon.velocidad , habilidad.descripcion 
FROM pokemon
INNER JOIN tipo tipo1 ON pokemon.tipo1= tipo1.id 
INNER JOIN pokemon_habilidad ON pokemon.numeropokedex = pokemon_habilidad.id_pokemon
INNER JOIN habilidad ON pokemon_habilidad.id_habilidad = habilidad.id
WHERE pokemon.velocidad > ALL(SELECT MAX(pokemon.velocidad)
FROM pokemon
INNER JOIN pokemon_habilidad ON pokemon.numeropokedex = pokemon_habilidad.id_pokemon
WHERE pokemon.tipo1 =  tipo1.id)