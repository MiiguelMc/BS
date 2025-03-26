--Miguel Macías del Pino --
--Ejercicio 01 --
use jardineria;
INSERT INTO oficina (codigo_oficina,ciudad,pais,region,codigo_postal,telefono,linea_direccion1,linea_direccion2) VALUES (12345 , 'Malaga','España','Almería',29006,612345677,'pepe','pepa');
--Ejercicio 02--
INSERT INTO empleado (codigo_empleado,nombre,apellido1,apellido2,extension,email,codigo_oficina,codigo_jefe,puesto) VALUES (12345,'Pepe','Lopez','Torrecilla','TAL_ES','pepe@gmail.com',12345,'22','representante de ventas');
--Ejercicio 03--
INSERT INTO cliente (codigo_cliente,nombre_cliente,nombre_contacto,apellido_contacto,telefono,fax,linea_direccion1,linea_direccion2,ciudad,region,pais,codigo_postal,codigo_empleado_rep_ventas,limite_credito) VALUES (12345,'Pepe','Juan','Perez',600432231,123134,'Oro','Ocalo','Almeria','Almeria','España',29060,12345,12);
--Ejercicio 04 --
INSERT INTO pedido(codigo_pedido,fecha_pedido,fecha_esperada,fecha_entrega,estado,comentarios,codigo_cliente)VALUES (1234,'12-12-2000','12-01-2001','13-01-2001','Pendiente','Que este en buen estado',12345)
INSERT INTO linea_pedido(codigo_pedido,codigo_producto,cantidad,precio_unidad,numero_linea)VALUES (1234,'21636',2,12,1);
INSERT INTO linea_pedido(codigo_pedido,codigo_producto,cantidad,precio_unidad,numero_linea)VALUES (1234,'21636',2,13,2);
--Ejercicio05--
--No es posible actualizar --
--Hay que "actualizar" los constraint--
UPDATE cliente 
SET codigo_cliente = 40
WHERE codigo_cliente = 12345

 ALTER TABLE cliente
 DROP CONSTRAINT fk_cliente_empleado;

ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_empleado
FOREIGN KEY (codigo_empleado_rep_ventas)
REFERENCES empleado(codigo_empleado)
ON UPDATE CASCADE;INSERT INTO pedido(codigo_pedido,fecha_pedido,fecha_esperada,fecha_entrega,estado,comentarios,codigo_cliente)VALUES (47700,'12-12-2000','12-01-2001','13-01-2001','Pendiente','Que este en buen estado',40)
--Ejercicio06--DELETE FROM cliente  WHERE codigo_cliente = 40;--Si es posible eliminarlo----Ejercicio07--ALTER TABLE linea_pedido ADD total_linea DECIMAL (12,2);UPDATE linea_pedido SET total_linea = precio_unidad * cantidad * (1+0.21);  --Ejercicio08--INSERT INTO oficina (codigo_oficina,ciudad,pais,region,codigo_postal,telefono,linea_direccion1,linea_direccion2) VALUES (098 , 'Granada','España','Granada',29006,612345677,'pepe','pepa');

INSERT INTO empleado (codigo_empleado,nombre,apellido1,apellido2,extension,email,codigo_oficina,codigo_jefe,puesto) VALUES (01111,'Primero','Lopez','Torrecilla','TAL_ES','pepe@gmail.com',098,'22','representante de ventas');

INSERT INTO empleado (codigo_empleado,nombre,apellido1,apellido2,extension,email,codigo_oficina,codigo_jefe,puesto) VALUES (011111,'Segundo','Lopez','Torrecilla','TAL_ES','pepe@gmail.com',098,'22','representante de ventas');

INSERT INTO empleado (codigo_empleado,nombre,apellido1,apellido2,extension,email,codigo_oficina,codigo_jefe,puesto) VALUES (0111111,'Tercero','Lopez','Torrecilla','TAL_ES','pepe@gmail.com',098,'22','representante de ventas');

--Ejercicio09--
INSERT INTO cliente (codigo_cliente,nombre_cliente,nombre_contacto,apellido_contacto,telefono,fax,linea_direccion1,linea_direccion2,ciudad,region,pais,codigo_postal,codigo_empleado_rep_ventas,limite_credito) VALUES (68765,'Primero','Juan','Perez',600432231,123134,'Oro','Ocalo','Almeria','Almeria','España',29060,011111,12);

INSERT INTO cliente (codigo_cliente,nombre_cliente,nombre_contacto,apellido_contacto,telefono,fax,linea_direccion1,linea_direccion2,ciudad,region,pais,codigo_postal,codigo_empleado_rep_ventas,limite_credito) VALUES (6876,'Primero','Juan','Perez',600432231,123134,'Oro','Ocalo','Almeria','Almeria','España',29060,011111,12);

INSERT INTO cliente (codigo_cliente,nombre_cliente,nombre_contacto,apellido_contacto,telefono,fax,linea_direccion1,linea_direccion2,ciudad,region,pais,codigo_postal,codigo_empleado_rep_ventas,limite_credito) VALUES (687,'Primero','Juan','Perez',600432231,123134,'Oro','Ocalo','Almeria','Almeria','España',29060,01111,12);

--Ejercicio10--

DELETE FROM cliente WHERE codigo_cliente = 687
 
 --Es posible --