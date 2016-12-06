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

