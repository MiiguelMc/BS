USE tienda_informatica

SELECT producto.nombre , producto.precio , fabricante.nombre
FROM producto
LEFT JOIN fabricante ON producto.cod_fabricante = fabricante.codigo


SELECT producto.nombre , producto.precio , fabricante.nombre
FROM producto
LEFT JOIN fabricante ON producto.cod_fabricante = fabricante.codigo
ORDER BY fabricante.nombre ASC

SELECT producto.nombre , producto.precio , fabricante.codigo , fabricante.nombre
FROM producto 
LEFT JOIN fabricante ON producto.cod_fabricante = fabricante.codigo


--Ejercicios base de datos --

USE ventas

SELECT DISTINCT cliente.id , cliente.nombre , cliente.apellido1 , cliente.apellido2
FROM cliente
LEFT JOIN pedido ON cliente.id = pedido.id_cliente
ORDER BY apellido1 ASC 

SELECT cliente.* , pedido.*
FROM cliente 
INNER JOIN pedido ON cliente.id = pedido.id_cliente

SELECT comercial.* , pedido.*
FROM comercial
INNER JOIN pedido ON comercial.id = pedido.id_comercial
ORDER BY comercial.nombre ASC

SELECT comercial.* , pedido.* , cliente.*
FROM comercial
INNER JOIN pedido ON comercial.id = pedido.id_comercial
INNER JOIN cliente ON pedido.id_cliente = cliente.id

SELECT cliente.* , pedido.*
FROM cliente
INNER JOIN pedido ON cliente.id = pedido.id_cliente
WHERE pedido.total BETWEEN 300 AND 1000

SELECT DISTINCT comercial.nombre , comercial.apellido1 , comercial.apellido2
FROM comercial
INNER JOIN pedido ON comercial.id = pedido.id_comercial
INNER JOIN cliente ON pedido.id_cliente = cliente.id
WHERE cliente.nombre = 'María' AND cliente.apellido1 = 'Santana'

--Ejercicios de Group BY --
SELECT cliente.ciudad , MAX(cliente.categoria) AS categoria 
FROM cliente 
GROUP BY cliente.ciudad 

SELECT cliente.nombre , pedido.fecha , MAX(pedido.total)
FROM cliente
INNER JOIN pedido ON cliente.id = pedido.id_cliente
GROUP BY pedido.fecha , cliente.nombre
order BY pedido.fecha ASC