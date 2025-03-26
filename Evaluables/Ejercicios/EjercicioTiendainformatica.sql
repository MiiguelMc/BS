--Ejercicio 01--
INSERT INTO fabricante (codigo,nombre) VALUES (13,'Tplink');
 --Ejercicio 02--
 INSERT INTO producto (codigo ,nombre,precio,cod_fabricante) VALUES (44,'DVD',12.12,'1')
 --Ejercicio 03--
ALTER TABLE producto
DROP CONSTRAINT fk_producto_fabricante;

ALTER TABLE producto
ADD CONSTRAINT fk_producto_fabricantee
FOREIGN KEY (cod_fabricante)
REFERENCES fabricante(codigo)
ON UPDATE CASCADE
ON DELETE CASCADE;


DELETE FROM fabricante WHERE nombre = 'Asus';

 --Ejercicio 04 --
 DELETE FROM fabricante WHERE nombre = 'Xiaomi';

 --Ejercicio 05--
  UPDATE fabricante SET codigo = 81 WHERE nombre = 'Lenovo';

  --Ejercicio 06--
  UPDATE fabricante SET codigo = 130 WHERE nombre = 'Huaewi';
   
   Select * FROM producto;
  --Ejercicio 07--
  UPDATE producto SET precio = precio + 5 

  --Ejercicio 08--
  DELETE FROM producto WHERE nombre LIKE '%impresora%' AND precio < 200;

  --Ejercicio 09 --
  DELETE FROM producto WHERE precio = 5 ;

  --Ejercicio 10 --
  DELETE FROM fabricante WHERE codigo = 6;

  --Ejercicio 11 --
  DELETE FROM producto WHERE precio > 200 ;

  --Ejercicio 12 --
  DELETE FROM producto WHERE precio <= 90;

  --Ejercicio 13--
  DELETE FROM fabricante WHERE nombre = 'Sony';

  --Ejercicio 14--
  DELETE FROM producto WHERE precio <> 240;

  --Ejercicio 15--
  DELETE FROM producto WHERE nombre LIKE '%drive%'

  --Ejercicio 16--
  DELETE FROM producto WHERE precio > 100 AND precio < 250;

  --Ejercicio 17--
