CREATE TABLE burialtypes
(
  id serial NOT NULL, 
  description text, 
  name text, 
  CONSTRAINT pkey_types_burials PRIMARY KEY (id)
)
