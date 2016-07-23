# Installation of pg_cemetery-db
It’s easy to extend Postgres functionality through an extension. Let's make our own. You have code examples [here](https://github.com/adjust/postgresql_extension_demo/tree/part_i).
## Introduction
To define an extension, you need at least **two files**:

* A **control file** called _extension_name.control_. (_Postgres tells some basics about your extension_)
* An extension's SQL **script file** called _extension--version.sql_. (_ Add them into our project directory_)
#### Our files:

* [Control file](https://github.com/JoanCano/pg_cemetery-db/blob/master/ext/pg_cemetery.control)
* [Script file](https://github.com/JoanCano/pg_cemetery-db/blob/master/ext/makefile)

For more information, you are encouraged to check the [Postgresql Official Documentation](https://www.postgresql.org/docs/9.5/static/extend-extensions.html)

## Install Extension

## Create Extension

## Import sample data
