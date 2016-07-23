EXTENSION = pg_cemetery-db  # the extensions name
EXTVERSION = $(shell grep default_version $(EXTENSION).control | sed -e "s/default_version[[:space:]]*=[[:space:]]*'\([^']*\)'/\1/")

# postgres build stuff
PG_CONFIG = pg_config
PG95 = $(shell $(PG_CONFIG) --version | egrep " 8\.| 9\.0| 9\.1| 9\.2| 9\.3| 9\.4" > /dev/null && echo no || echo yes)

ifeq ($(PG95),yes)
DOCS = $(wildcard doc/*.md)


all: $(EXTENSION)--$(EXTVERSION).sql

$(EXTENSION)--$(EXTVERSION).sql: sql/schemas.sql \ 
sql/tables/*.sql

	cat $^ > $@

DATA = $(wildcard updates/*--*.sql) $(EXTENSION)--$(EXTVERSION).sql # script files to install
EXTRA_CLEAN = $(EXTENSION)--$(EXTVERSION).sql
else
$(error Minimum version of PostgreSQL required is 9.5.0)
endif


PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
