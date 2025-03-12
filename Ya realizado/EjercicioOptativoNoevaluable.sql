--

SELECT producto.nombre , producto.precio , fabricante.nombre 
FROM producto 
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo;

SELECT producto.nombre , producto.precio , fabricante.nombre 
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
ORDER BY fabricante.nombre

SELECT producto.nombre , producto.precio , fabricante.codigo , fabricante.nombre
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo

SELECT producto.nombre , producto.precio , fabricante.nombre
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
ORDER BY precio ASC

SELECT producto.nombre , producto.precio , fabricante.nombre
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
ORDER BY precio DESC

SELECT producto.codigo , producto.nombre , producto.precio , fabricante.codigo
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE fabricante.nombre = 'Samsung'

SELECT producto.codigo , producto.nombre , producto.precio , fabricante.codigo
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE fabricante.nombre = 'Seagate ' and producto.precio > 200

SELECT producto.codigo , producto.nombre , producto.precio , fabricante.codigo , fabricante.nombre
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE fabricante.nombre =  'Asus' OR fabricante.nombre ='Hewlett-Packard' OR fabricante.nombre = 'Seagate'

SELECT producto.nombre , producto.precio
from producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE fabricante.nombre LIKE '%e'

SELECT producto.nombre , producto.precio
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE fabricante.nombre LIKE '%w%'

SELECT producto.nombre , producto.precio , fabricante.nombre
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE producto.precio >= 180
ORDER BY producto.precio DESC, fabricante.nombre ASC

SELECT fabricante.codigo , fabricante.nombre
FROM fabricante
INNER JOIN producto ON fabricante.codigo = producto.cod_fabricante

SELECT producto.nombre AS producto , fabricante.nombre AS fabricante 
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo

SELECT producto.nombre AS producto , fabricante.nombre AS fabricante 
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE producto.precio > 150

SELECT producto.nombre AS producto , fabricante.nombre AS fabricante 
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE producto.nombre LIKE '%DRIVE%'

SELECT producto.nombre AS producto , fabricante.nombre AS fabricante 
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE fabricante.nombre LIKE 'C%'

SELECT producto.nombre , fabricante.nombre , producto.precio
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE producto.precio >100
ORDER BY producto.precio ASC

SELECT max(producto.precio) AS precio_maximo , min(producto.precio) AS precio_minimo ,avg(producto.precio) AS Precio_Medio , COUNT(producto.nombre) AS cantidad 
FROM producto
INNER JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE fabricante.nombre = 'Seagate'

SELECT fabricante.codigo AS codigo , fabricante.nombre AS nombre , producto.codigo AS codigo , producto.nombre AS nombre , producto.precio AS precio , producto.cod_fabricante
FROM producto
RIGHT JOIN fabricante ON producto.cod_fabricante = fabricante.codigo

SELECT fabricante.codigo AS codigo , fabricante.nombre AS nombre , producto.codigo AS codigo , producto.nombre AS nombre , producto.precio AS precio , producto.cod_fabricante
FROM producto
RIGHT JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
WHERE producto.nombre IS NULL

