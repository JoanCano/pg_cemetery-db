CREATE TABLE formality (
id serial NOT NULL,
id_burial integer,
CONSTRAINT pkey_for PRIMARY KEY (id),
CONSTRAINT fkey_forbur FOREIGN KEY (id_burial)
REFERENCES burial (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
);

