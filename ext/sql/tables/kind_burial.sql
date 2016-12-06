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

