CREATE TABLE relative (
id serial NOT NULL,
name text,
last_name text,
mobile_phone numeric(9,0),
email character varying(50),
dni character varying(9),
registration date,
postal_code integer,
direction character varying(40),
CONSTRAINT pkey_rel PRIMARY KEY (id)
);

