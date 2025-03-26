CREATE TABLE region (
idRegion INT IDENTITY (1,1),
nombreRegion NVARCHAR (300),
hemisferioRegion NVARCHAR (10),
CONSTRAINT pk_idRegion PRIMARY KEY (idRegion),
CONSTRAINT ch_hemisferio_region CHECK(hemisferioRegion IN('NORTE','SUR')),
);