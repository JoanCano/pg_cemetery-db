CREATE DOMAIN fee
AS text
CONSTRAINT assignment CHECK (VALUE IN ('ground', 'niche', 'pantheon', 'columbarium', 'mausoleum', 'pit'))
CONSTRAINT exhume CHECK (VALUE IN ('exhumation', 'urn'))
CONSTRAINT inhale CHECK (VALUE IN ('inhumation', 'urn'))
CONSTRAINT transmission CHECK (VALUE IN ('niche', 'pantheon', 'columbarium', 'mausoleum', 'pit'))
CONSTRAINT works CHECK (VALUE IN ('put niche', 'license'));








CREATE DOMAIN type_burial
AS text
DEFAULT 'niche'
CONSTRAINT type_burial1 CHECK (VALUE IS NOT NULL)
CONSTRAINT type_burial2 CHECK (VALUE IN ('urn', 'niche', 'pantheon'));




-- Table: deceased






CREATE TABLE deceased (
id serial NOT NULL,
name text,
last_name text,
birth date,
death date,death_certificate bytea,
CONSTRAINT pkey_deceased PRIMARY KEY (id)
);




-- Table: burial




CREATE TABLE burial (
id serial NOT NULL,
geom geometry(MultiPolygon,4326),
level integer,
id_deceased integer,
CONSTRAINT pkey_burial PRIMARY KEY (id),
CONSTRAINT fkey_burdec FOREIGN KEY (id_deceased)
REFERENCES deceased (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
);




-- Table: kind_burial




CREATE TABLE kind_burial (
id integer NOT NULL,
description text,
type type_burial,
level integer,
remains boolean, -- restos de cadaver
id_burial integer,
CONSTRAINT pkey_tybur PRIMARY KEY (id),
CONSTRAINT fkey_tybur FOREIGN KEY (id_burial)
REFERENCES burial (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table: formality




CREATE TABLE formality (
id serial NOT NULL,
id_burial integer,
CONSTRAINT pkey_for PRIMARY KEY (id),
CONSTRAINT fkey_forbur FOREIGN KEY (id_burial)
REFERENCES burial (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table: procedure




CREATE TABLE procedure (
id integer NOT NULL,
start date,
"end" date,
inhumation fee,
exhumation fee,
works fee,
assignment fee,
transmission fee,
rate numeric,
document bytea,
id_formality integer,
CONSTRAINT pkey_proc PRIMARY KEY (id),
CONSTRAINT fkey_profor FOREIGN KEY (id_formality)
REFERENCES formality (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
);




-- Table: relative




CREATE TABLE relative (
id serial NOT NULL,
name text,
last_name text,
mobile_phone numeric(9,0),
email character varying(50),
dni character varying(9),
registration date,
postal_code integer,
direction character varying(40),
CONSTRAINT pkey_rel PRIMARY KEY (id)
);




-- Table: relative_formality




CREATE TABLE relative_formality (
id serial NOT NULL,
id_formality integer,
id_relative integer,
CONSTRAINT pkey_relfor PRIMARY KEY (id),
CONSTRAINT fkey_forfor FOREIGN KEY (id_formality)
REFERENCES formality (id) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fkey_relarel FOREIGN KEY (id_relative)
REFERENCES relative (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
);




-- Table: relative_deceased




CREATE TABLE relative_deceased (
id serial NOT NULL,
id_relative integer,
id_deceased integer,
CONSTRAINT pkey_relde PRIMARY KEY (id),
CONSTRAINT fkey_decdec FOREIGN KEY (id_deceased)
REFERENCES deceased (id) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fkey_relrel FOREIGN KEY (id_relative)
REFERENCES relative (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
);
