#!/bin/sh

# Sustituir variables de entorno en el archivo SQL
envsubst < /docker-entrypoint-initdb.d/init-db.sql > /docker-entrypoint-initdb.d/init-db-final.sql

# Ejecutar el archivo SQL resultante
psql -v ON_ERROR_STOP=1 --dbname "$PSQL_DATABASE" -f /docker-entrypoint-initdb.d/init-db-final.sql
