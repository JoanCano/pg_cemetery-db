CREATE DOMAIN type_burial
AS text
DEFAULT 'niche'
CONSTRAINT type_burial1 CHECK (VALUE IS NOT NULL)
CONSTRAINT type_burial2 CHECK (VALUE IN ('urn', 'niche', 'pantheon'));

