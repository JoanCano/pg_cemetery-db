CREATE TABLE procedures
(
  id serial NOT NULL, 
  name text, 
  start date, 
  end date, -- Replace end, as it is a reserved word
  rate numeric, 
  document bytea, 
  CONSTRAINT pkey_procedures PRIMARY KEY (id)
)
