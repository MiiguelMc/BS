--Miguel Macias del Pino--
--Ejercicio01--
USE jardineria
SELECT ciudad , telefono 
FROM oficina
WHERE pais = 'España'
--Ejercicio02--
SELECT nombre , apellido1 ,apellido2, puesto
FROM empleado
WHERE puesto != 'representante ventas'
--Ejercicio03--
SELECT pedido.codigo_pedido,pedido.codigo_cliente , pedido.fecha_esperada , pedido.fecha_entrega
FROM pedido
WHERE DATEDIFF (DAY ,fecha_entrega ,fecha_esperada ) >= 2
--Ejercicio04--
SELECT codigo_pedido , codigo_cliente , fecha_pedido , estado
FROM pedido
WHERE estado = 'Rechazado' AND YEAR(fecha_pedido) = 2009 ;
--Ejercicio05--
SELECT *
FROM producto
WHERE gama = 'Ornamentales' AND cantidad_en_stock > 100
ORDER BY precio_venta DESC
--Ejercicio06--
SELECT codigo_cliente , nombre_cliente , ciudad , codigo_empleado_rep_ventas
FROM cliente
WHERE codigo_empleado_rep_ventas = 11 or codigo_empleado_rep_ventas=30
--Ejercicio07--
SELECT cliente.nombre_cliente, CONCAT(empleado.nombre, empleado.apellido1 , empleado.apellido2) AS nombre_completo_empleado ,oficina.ciudad as ciudad_oficina
FROM cliente
INNER JOIN empleado ON  empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
INNER JOIN oficina ON oficina.codigo_oficina = empleado.codigo_oficina
--Ejercicio08--
SELECT cliente.nombre_cliente ,  pedido.fecha_entrega ,pedido.fecha_esperada
FROM cliente 
INNER JOIN pedido ON pedido.codigo_cliente = pedido.codigo_cliente
WHERE DATEDIFF (DAY,fecha_entrega,fecha_esperada)<0
--Ejercicio09--
SELECT oficina.linea_direccion1 ,oficina.linea_direccion2 , oficina.ciudad
FROM oficina
INNER JOIN empleado ON oficina.codigo_oficina = empleado.codigo_oficina
INNER JOIN cliente ON empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
WHERE cliente.ciudad = 'fuenlabrada'
--Ejercicio10--
SELECT  cliente.nombre_cliente , producto.gama
FROM cliente 
INNER JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
INNER JOIN linea_pedido ON pedido.codigo_pedido = linea_pedido.codigo_pedido
INNER JOIN producto ON linea_pedido.codigo_producto = producto.codigo_producto
GROUP BY  cliente.nombre_cliente , producto.gama
ORDER BY gama ASC 
--Ejercicio11
SELECT oficina.codigo_oficina , oficina.ciudad,oficina.pais
FROM oficina
INNER JOIN empleado ON oficina.codigo_oficina = empleado.codigo_oficina
INNER JOIN cliente ON empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
INNER JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
INNER JOIN linea_pedido ON pedido.codigo_pedido = linea_pedido.codigo_pedido
INNER JOIN producto ON linea_pedido.codigo_producto = producto.codigo_producto
WHERE producto.gama = 'Frutales' 
--Ejercicio12--
SELECT * 
FROM empleado
LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
WHERE cliente.codigo_empleado_rep_ventas IS null
--Ejercicio13--
SELECT CONCAT(empleado.nombre ,',', empleado.apellido1 ,',', empleado.apellido2) AS nombre_empleado , CONCAT(jefe.nombre ,',', jefe.apellido1 ,',', jefe.apellido2)
AS nombre_Jefe , CONCAT(jefe_jefe.nombre ,',', jefe_jefe.apellido1 ,',', jefe_jefe.apellido2)
AS nombre_Jefe_jefe
FROM empleado 
LEFT JOIN empleado jefe ON jefe.codigo_empleado = empleado.codigo_jefe
LEFT JOIN empleado jefe_jefe ON jefe.codigo_jefe = jefe_jefe.codigo_empleado
