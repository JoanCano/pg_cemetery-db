CREATE TABLE deceased
(
id serial NOT NULL, 
name text,
last_name text, 
birth date, 
death date, 
death_certificate bytea,
id_grave integer, 
CONSTRAINT pkey_deceased PRIMARY KEY (id), 
CONSTRAINT kfor_debu FOREIGN KEY (id_grave)
REFERENCES burials (id) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION
)
