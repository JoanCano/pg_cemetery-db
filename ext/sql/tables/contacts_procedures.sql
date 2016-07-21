CREATE TABLE contacts_procedures
(
  id serial NOT NULL,
  id_formality integer,
  id_deceased integer, 
  CONSTRAINT pkey_conpro PRIMARY KEY (id)
)
