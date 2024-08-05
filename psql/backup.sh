#!/bin/bash

# Nombre de la base de datos
DB_NAME=${PSQL_DATABASE}
# Usuario de la base de datos
DB_USER=${PSQL_USER}
# Contraseña de la base de datos
DB_PASSWORD=${PSQL_PASSWORD}
# Host de la base de datos
DB_HOST=${PSQL_HOST}

# Fecha actual
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Nombre del archivo de backup
BACKUP_DIR="/backups"
BACKUP_FILE="${BACKUP_DIR}/all_databases_backup_${DATE}.sql"

# Crear el directorio de backup si no existe
mkdir -p ${BACKUP_DIR}

# Ejecutar el backup de todas las bases de datos
PSQLdump -u${DB_USER} -p${DB_PASSWORD} -h${DB_HOST} --all-databases > ${BACKUP_FILE}

# Opcional: borrar backups viejos (mayores a 7 días)
find ${BACKUP_DIR} -type f -name "*.sql" -mtime +7 -exec rm {} \;
