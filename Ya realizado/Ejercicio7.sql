CREATE TABLE historial_trabajos (
idTrabajador NVARCHAR(9),
idTrabajo NVARCHAR (10),
fecha_comienzo DATE NOT NULL,
fecha_finalizacion DATE NOT NULL,

CONSTRAINT PK_HISTORIAL_TRABAJO PRIMARY KEY (idtrabajador,idtrabajo),
CONSTRAINT fk_IdTrabajador FOREIGN KEY  (idTrabajador) REFERENCES trabajador(idTrabajador) ON DELETE CASCADE,
CONSTRAINT fk_IdTrabajo FOREIGN KEY  (idTrabajo) REFERENCES trabajo(idTrabajo)  ON DELETE CASCADE
);