CREATE DOMAIN fee
AS text
CONSTRAINT assignment CHECK (VALUE IN ('ground', 'niche', 'pantheon', 'columbarium', 'mausoleum', 'pit'))
CONSTRAINT exhume CHECK (VALUE IN ('exhumation', 'urn'))
CONSTRAINT inhale CHECK (VALUE IN ('inhumation', 'urn'))
CONSTRAINT transmission CHECK (VALUE IN ('niche', 'pantheon', 'columbarium', 'mausoleum', 'pit'))
CONSTRAINT works CHECK (VALUE IN ('put niche', 'license'));

