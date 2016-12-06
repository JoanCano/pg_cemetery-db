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
