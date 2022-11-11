# **Execute files docker 🤖**

Para ejecutar las imagenes del docker compose ejecutamos el comando:

```properties
docker-compose up
```

# **Execute files docker 💻**

## **_SQL Server_** 📂
---

Para ejecutar y generar la imagen de SQL Server deben de ingresar a la siguiente carpeta:

```bat
cd mssql
```

Luego cambiar las credenciales de acceso como el user y password de los archivos **Dockerfile** y **initialization.sh**.

```properties
SA_PASSWORD: mypass
```

Finalmente ejecutan:

```properties
docker-compose up
```

Las credenciales de acceso a la base de datos es:

```properties
host: 127.0.0.1
Username: SA
Password: mypassdev85!
```

---
## **_MySQL_** 📂
---

Para ejecutar y generar la imagen de MySQL deben de ingresar a la siguiente carpeta:

```bat
cd mysql
```

Luego cambiar las credenciales de acceso como el user y password de los archivos **docker-compose.yml**.

```properties
MYSQL_DATABASE: mydb
MYSQL_USER: myuser
MYSQL_PASSWORD: mypassuser
MYSQL_ROOT_PASSWORD: mypassroot
```

Finalmente ejecutan:

```properties
docker-compose up
```

---
## **_MongoDB_** 📂
---

Para ejecutar y generar la imagen de MongoDB deben de ingresar a la siguiente carpeta:

```bat
cd mongo
```

Luego cambiar las credenciales de acceso como el user y password de los archivos **docker-compose.yml**.

```properties
MONGO_INITDB_ROOT_USERNAME: myuser
MONGO_INITDB_ROOT_PASSWORD: mypass
```

Finalmente ejecutan:

```properties
docker-compose up
```
