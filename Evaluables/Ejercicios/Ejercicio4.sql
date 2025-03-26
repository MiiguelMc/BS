ALTER TABLE pais 
ADD CONSTRAINT ch_Solo_Pais check (nombrePais IN ('Italia','India','China'));