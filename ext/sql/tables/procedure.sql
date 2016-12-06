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

