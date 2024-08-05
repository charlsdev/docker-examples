FROM ubuntu:latest

# Instalar MySQL client y cron
RUN apt-get update && apt-get install -y \
      mysql-client \
      cron

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

# Ejecutar cron en primer plano
CMD ["cron", "-f"]
