--Ejercicios Bloque T-SQL--
--Miguel Macias del Pino--
--Ejercicio 1 --
DECLARE @Granada NVARCHAR(2) =
(SELECT COUNT(*) 
FROM comercial 
WHERE id IN (SELECT id_comercial 
FROM pedido 
WHERE id_cliente IN(
SELECT id
FROM cliente
WHERE ciudad = 'Granada')));
PRINT 'El n�mero de comerciales con clientes en Granada es :' + @Granada 

--Ejercicio 2--

DECLARE @Pedidoalmeria NVARCHAR(3)=
(SELECT COUNT(*)
FROM pedido
WHERE id_cliente IN(
SELECT id
FROM cliente
WHERE ciudad = 'Almer�a'))

PRINT 'El n�mero de pedidos realizados por comercuales con clientes en Almer�a es :'+ @Pedidoalmeria

DECLARE @TotalPedidos NVARCHAR(3)=
(SELECT COUNT(*)
FROM pedido
WHERE id_comercial IN(
SELECT id
FROM comercial
WHERE nombre = 'Antonio' AND apellido1 = 'Carretero' AND apellido2 ='Ortega' )
)
print 'El total de los pedidos hechos por el comercial Antonio Carretero Ortega'+ @TotalPedidos

--Ejercicio03--
DECLARE @TOP1Comision NVARCHAR(3)=
(SELECT TOP (1) id
FROM comercial
ORDER BY comision DESC
)
print 'El c�digo del empleado con la comisi�n m�s alta es '+@TOP1Comision

--Ejercicio04--
DECLARE @Realiza NVARCHAR(3)=
(SELECT COUNT(*)
FROM pedido
WHERE id_cliente = 1  )
IF @Realiza > 0 
BEGIN
PRINT 'El cliente con ID 1 ha realizado '+ @realiza +'Pedidos'
END
ELSE PRINT 'El cliente con ID 1 ha realizado no ha realizado Pedidos'

