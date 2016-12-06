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

