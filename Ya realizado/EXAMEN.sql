CREATE DATABASE pokedex;
USE pokedex;

/*Miguel Macias del Pino*/

CREATE TABLE tipo (
idtipo NVARCHAR (300) NOT NULL,
nombre NVARCHAR (150) NOT NULL UNIQUE,
CONSTRAINT pk_tipo_id PRIMARY KEY (idtipo),
);

CREATE TABLE categoria (
idcategoria NVARCHAR (300) NOT NULL,
nombre NVARCHAR (150) NOT NULL UNIQUE,
CONSTRAINT pk_categoria_id PRIMARY KEY (idcategoria),
);
CREATE TABLE debilidad (
iddebilidad NVARCHAR (300) NOT NULL,
nombre NVARCHAR (150) NOT NULL UNIQUE,
CONSTRAINT pk_debilidad_id PRIMARY KEY (iddebilidad),
);

CREATE TABLE habilidad(
idhabilidad NVARCHAR (300) NOT NULL,
nombre NVARCHAR (150) NOT NULL UNIQUE,
CONSTRAINT pk_habiliadad_id PRIMARY KEY (idhabilidad),

);

CREATE TABLE pokemon (
numeropokedex NVARCHAR (300) NOT NULL,
nombre NVARCHAR (150) NOT NULL UNIQUE,
descripcion NVARCHAR (150) NOT NULL DEFAULT 'Es un Pokemon pacifico',
foto NVARCHAR (150) NOT NULL,
idcategoria NVARCHAR (300) NOT NULL,

CONSTRAINT pk_pokemon_numeropokedex PRIMARY KEY (numeropokedex),
CONSTRAINT fk_pokemon_idcategoria FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria),

);

CREATE TABLE estadistica (
numeropokedex NVARCHAR (300) NOT NULL,
peso DECIMAL(10,2) NOT NULL,
vida DECIMAL(10,0) NOT NULL,
altura DECIMAL(10,2) NOT NULL,
velocidad DECIMAL(10,0) NOT NULL,
def_es DECIMAL(10,0) NOT NULL,
ata_es DECIMAL(10,0) NOT NULL,
defensa DECIMAL(10,0) NOT NULL,
ataque DECIMAL(10,0) NOT NULL,

CONSTRAINT ck_estadistica CHECK (peso>0) ,

CONSTRAINT pk_estadistica_numeropokedex PRIMARY KEY (numeropokedex),
CONSTRAINT fk_estadistica_numeropokedex FOREIGN KEY (numeropokedex) REFERENCES pokemon(numeropokedex),
);

CREATE TABLE tipopokemon(
idtipo NVARCHAR (300) NOT NULL,
numeropokedex NVARCHAR (300) NOT NULL,
CONSTRAINT pk_tipopokemon PRIMARY KEY (idtipo,numeropokedex),
CONSTRAINT fk_tipopokemon_numeropokedex FOREIGN KEY (numeropokedex) REFERENCES pokemon(numeropokedex),
CONSTRAINT fk_tipopokemon_idtipo FOREIGN KEY (idtipo) REFERENCES tipo(idtipo),
);

CREATE TABLE pokemonhabilidad (
numeropokedex NVARCHAR (300) NOT NULL,
idhabilidad NVARCHAR (300) NOT NULL,

CONSTRAINT pk_habilidad_id PRIMARY KEY (numeropokedex,idhabilidad),
CONSTRAINT fk_pokemonhabilidad_numeropokedex FOREIGN KEY (numeropokedex) REFERENCES pokemon(numeropokedex),
CONSTRAINT fk_pokemonhabilidad_idhabilidad FOREIGN KEY (idhabilidad) REFERENCES habilidad(idhabilidad),
);

CREATE TABLE pokemondebilidad (
numeropokedex NVARCHAR (300) NOT NULL,
iddebilidad NVARCHAR (300) NOT NULL,
CONSTRAINT pk_pokemondebilidad_id PRIMARY KEY (iddebilidad,numeropokedex),
CONSTRAINT fk_pokemindebilidad_numeropokedex FOREIGN KEY (numeropokedex) REFERENCES pokemon(numeropokedex),
CONSTRAINT fk_pokemondebilidad_iddebilidad FOREIGN KEY (iddebilidad) REFERENCES debilidad(iddebilidad),
);
s