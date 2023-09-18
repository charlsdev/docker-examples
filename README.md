# **Execute files docker 🤖**

Para ejecutar las imagenes del docker compose ejecutamos el comando:

```bash
docker-compose up
```

# **Execute files docker 💻**

## **_SQL Server_** 📂

Para ejecutar y generar la imagen de SQL Server deben de ingresar a la siguiente carpeta:

```bash
cd mssql
```

Luego cambiar las credenciales de acceso como el user y password de los archivos **Dockerfile** y **initialization.sh**.

```bash
SA_PASSWORD: mypass
```

Finalmente ejecutan:

```bash
docker-compose up
```

Las credenciales de acceso a la base de datos es:

```bash
host: 127.0.0.1
Username: SA
Password: mypassdev85!
```

## **_MySQL_** 📂

Para ejecutar y generar la imagen de MySQL deben de ingresar a la siguiente carpeta:

```bash
cd mysql
```

Luego cambiar las credenciales de acceso como el user y password de los archivos **docker-compose.yml**.

```bash
MYSQL_DATABASE: mydb
MYSQL_USER: myuser
MYSQL_PASSWORD: mypassuser
MYSQL_ROOT_PASSWORD: mypassroot
```

Finalmente ejecutan:

```bash
docker-compose up
```

## **_MongoDB_** 📂

Para ejecutar y generar la imagen de MongoDB deben de ingresar a la siguiente carpeta:

```bash
cd mongo
```

Luego cambiar las credenciales de acceso como el user y password de los archivos **docker-compose.yml**.

```bash
MONGO_INITDB_ROOT_USERNAME: myuser
MONGO_INITDB_ROOT_PASSWORD: mypass
```

Finalmente ejecutan:

```bash
docker-compose up
```

## **_RedisDB_** 📂

Para ejecutar y generar la imagen de MongoDB deben de ingresar a la siguiente carpeta:

```bash
cd redis
```

Luego cambiar las credenciales de acceso como el password del archivo **redis.conf**.

```bash
requirepass dev123
```

Finalmente ejecutan:

```bash
docker-compose up
```
