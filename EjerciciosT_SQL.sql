--Ejercicios Bloque T-SQL--
USE ventas
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
PRINT 'El número de comerciales con clientes en Granada es :' + @Granada 

--Ejercicio 2--

DECLARE @Pedidoalmeria NVARCHAR(3)=
(SELECT COUNT(*)
FROM pedido
WHERE id_cliente IN(
SELECT id
FROM cliente
WHERE ciudad = 'Almería'))

PRINT 'El nùmero de pedidos realizados por comerciales con clientes en Almería es :'+ @Pedidoalmeria

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
print 'El código del empleado con la comisión más alta es '+@TOP1Comision

--Ejercicio04--
DECLARE @id NVARCHAR(3)= 1;
DECLARE @Realiza NVARCHAR(3)=
(SELECT COUNT(*)
FROM pedido
WHERE id_cliente = @id  )
IF @Realiza > 0 
BEGIN
PRINT 'El cliente con ID '+@id +' ha realizado '+ @Realiza +' Pedidos'
END
ELSE PRINT 'El cliente con ID '+@id +' ha realizado no ha realizado Pedidos'

--Ejercicio05--
DECLARE @id2 NVARCHAR(3)= 1;
DECLARE @Realiza2 NVARCHAR(3)=
(SELECT COUNT(*)
FROM pedido
WHERE id_cliente = @id2  ) 
SELECT
CASE 
WHEN @Realiza2=0 THEN 'El cliente con ID '+@id2+'es un cliente nuevo'
WHEN @Realiza2>1 and @Realiza2<5 THEN 'El cliente con ID '+@id2+' es un cliente ocasional.'
WHEN @Realiza2>5 THEN 'El cliente con ID '+@id2+' es un cliente frecuente'
ELSE 'Error'
END
--Ejercicio06--
DECLARE @Grado NVARCHAR(255)=  'Grado en Ingeniería Informática (Plan 2015)';
DECLARE @GradoEspecifico NVARCHAR (4)=(
SELECT COUNT(DISTINCT id_alumno)
FROM alumno_se_matricula_asignatura
INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id
INNER JOIN grado ON asignatura.id_grado = grado.id
WHERE grado.nombre = @Grado
)
print 'Grado: '+@Grado+'Total de estudiantes inscritos '+ @GradoEspecifico

--Ejercicio07--
DECLARE @asignatura NVARCHAR(255)=  'Introducción a la programación';
DECLARE @asignaturaEspecifico NVARCHAR (4)=(
SELECT COUNT(DISTINCT id_alumno)
FROM alumno_se_matricula_asignatura
INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id
WHERE asignatura.nombre = @asignatura
)
print 'Asignatura: '+@asignatura+'Total de estudiantes inscritos '+ @asignaturaEspecifico
--Ejercicio08--
DECLARE @asignaturaespecifica NVARCHAR(255)=  'Introducción a la programación';
DECLARE @Total NVARCHAR(4)=(
SELECT COUNT(DISTINCT id_alumno)
FROM alumno_se_matricula_asignatura
INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id
WHERE asignatura.nombre = @asignaturaespecifica
)
DECLARE @TotalHombres NVARCHAR(4)=(
SELECT COUNT(DISTINCT id_alumno)
FROM alumno_se_matricula_asignatura
INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id
INNER JOIN persona ON alumno_se_matricula_asignatura.id_alumno = persona.id
WHERE asignatura.nombre = @asignaturaespecifica AND persona.sexo = 'H'
)
DECLARE @TotalMujeres NVARCHAR(4)=(
SELECT COUNT(DISTINCT id_alumno)
FROM alumno_se_matricula_asignatura
INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id
INNER JOIN persona ON alumno_se_matricula_asignatura.id_alumno = persona.id
WHERE asignatura.nombre = @asignaturaespecifica AND persona.sexo = 'M'
)
 PRINT 'Total de alumnos matriculados:'+@Total
 PRINT 'Total de Hombres matriculados:'+@TotalHombres
 PRINT 'Total de Mujeres matriculados:'+@TotalMujeres
 --ERROR EN EL ENUNCIADO"H hombre y M mujer "--

 --Ejercicio09--
 DECLARE @AsignaturaDada NVARCHAR (100)='Introducción a la programación';
 DECLARE @Profesor NVARCHAR(100)=(
 SELECT CONCAT( persona.nombre, ' ' , persona.apellido1, ' ', persona.apellido2)
 FROM persona
 INNER JOIN profesor ON persona.id = profesor.id_profesor
 INNER JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor
 WHERE asignatura.nombre = @AsignaturaDada)
 IF (@Profesor IS null)
   PRINT 'Profesor que imparte la signatura '+@AsignaturaDada+': Profesor no encontrado'
  ELSE
     PRINT 'Profesor que imparte la signatura '+@AsignaturaDada+': '+@Profesor
--Ejercicio10--
DECLARE @Alumnomat NVARCHAR (100)= 'Salvador Sánchez';
DECLARE @asignaturamat NVARCHAR(100)='Álgegra lineal y matemática discreta'

DECLARE @Estaono NVARCHAR (100)=(
SELECT COUNT(*)
FROM persona 
INNER JOIN alumno_se_matricula_asignatura ON persona.id=alumno_se_matricula_asignatura.id_alumno
INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura=asignatura.id
WHERE asignatura.nombre = @asignaturamat and persona.nombre = @Alumnomat)
IF(@Estaono = 0)
PRINT 'El Estudiante'+ @Alumnomat + 'No esta matriculado en '+@asignaturamat
ELSE
PRINT 'El Estudiante'+ @Alumnomat + 'Si esta matriculado en '+@asignaturamat
