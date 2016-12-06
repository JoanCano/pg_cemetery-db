CREATE TABLE deceased (
id serial NOT NULL,
name text,
last_name text,
birth date,
death date,death_certificate bytea,
CONSTRAINT pkey_deceased PRIMARY KEY (id)
);

