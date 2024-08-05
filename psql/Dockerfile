FROM ubuntu:latest

# Instalar MySQL client y cron
RUN apt-get update && apt-get install -y \
      postgresql-client \
      cron \
      gettext

# Copiar el script de backup al contenedor
COPY backup.sh /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/backup.sh

# Copiar la configuración de cron al contenedor
COPY cronjob /etc/cron.d/backup-cron
RUN chmod 0644 /etc/cron.d/backup-cron

# Registrar el cron job
RUN crontab /etc/cron.d/backup-cron

# Crear el directorio para los backups
RUN mkdir -p /backups

# Copiar el archivo de inicialización de la base de datos
COPY db/example.sql /docker-entrypoint-initdb.d/init-db.sql
COPY init.sh /docker-entrypoint-initdb.d/init.sh

# Dar permisos de ejecución al archivo de inicialización
RUN chmod +x /docker-entrypoint-initdb.d/init.sh

# Ejecutar cron en primer plano
CMD ["cron", "-f"]
