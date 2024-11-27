### **1\. Instalación de herramientas básicas de desarrollo**


```
sudo apt-get install build-essential

sudo apt install git
```
-   **`build-essential`**: Instala herramientas como `gcc`, `make` y otras necesarias para compilar software.
-   **`git`**: Instala el sistema de control de versiones Git.

* * * * *

### **2\. Actualización del sistema**


```
sudo apt update

sudo apt upgrade
```

-   **`apt update`**: Actualiza la lista de paquetes disponibles.
-   **`apt upgrade`**: Instala las versiones más recientes de los paquetes ya instalados.

* * * * *

### **3\. Instalación de dependencias para compilación y desarrollo**


```
sudo apt install libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext cmake gcc

sudo apt-get install libpcre3 libpcre3-dev

sudo apt -y install bsdextrautils

sudo apt-get install -y git make libmysqlclient-dev zlib1g-dev libpcre3-dev
```

Estas dependencias son necesarias para compilar rAthena y trabajar con bases de datos y servidores web:

-   **`libmysqlclient-dev`**, **`zlib1g-dev`**, **`libpcre3-dev`**: Bibliotecas para trabajar con MySQL/MariaDB y expresiones regulares.
-   **`cmake`, `gcc`**: Herramientas para compilar proyectos.
-   **`gettext`**: Soporte para traducciones en software.

* * * * *

### **4\. Instalación de Apache**


```
sudo apt install apache2

sudo systemctl status apache2

hostname -I

sudo chown www-data:www-data /var/www/html

sudo chmod -R 755 /var/www/html
```

-   **Apache2**: Servidor web.
-   **`hostname -I`**: Muestra la dirección IP del servidor para saber cómo acceder a Apache desde el navegador.
-   Cambia los permisos de `/var/www/html` para que el servidor pueda manejar los archivos correctamente.

* * * * *

### **5\. Instalación y configuración de MariaDB (MySQL)**


```
sudo apt install mariadb-server

sudo apt install mysql_secure_installation
```

-   **MariaDB**: Un sistema de gestión de bases de datos compatible con MySQL.
-   **`mysql_secure_installation`**: Configura la seguridad básica de MariaDB (opciones como cambiar la contraseña de `root`, eliminar usuarios anónimos, etc.).

* * * * *

### **6\. Instalación de PHP y phpMyAdmin**


```
sudo apt install php

sudo apt install phpmyadmin
```

-   **PHP**: Lenguaje de programación usado con Apache para generar contenido dinámico.
-   **phpMyAdmin**: Interfaz web para gestionar bases de datos MySQL/MariaDB.

* * * * *

### **7\. Configuración del servidor rAthena**


```
git clone https://github.com/sergepin/rathena.git

./configure --enable-packetver=packetver

make clean server
```

-   **Clonar rAthena**: Descarga el código fuente del proyecto usando Git.
-   **Configurar rAthena**: Usa el comando `./configure` para preparar la compilación, indicando la versión del cliente (`--enable-packetver=packetver`).
-   **Compilar rAthena**: Usa `make` para construir el servidor.

* * * * *

### **8\. Subir datos a la base de datos**



-   Usa phpMyAdmin para importar los archivos `.sql` incluidos con rAthena. Esto configura las tablas y datos necesarios para el funcionamiento del servidor.

* * * * *

### **9\. Iniciar el servidor rAthena**



`./athena-start start`

-   Inicia el servidor del emulador de Ragnarok Online.

* * * * *

### **Resumen del flujo de trabajo:**

1.  Configuras el sistema con herramientas de desarrollo.
2.  Configuras un servidor web (Apache) y una base de datos (MariaDB).
3.  Instalas PHP y phpMyAdmin para manejar la base de datos más fácilmente.
4.  Configuras y compilas rAthena.
5.  Cargas las tablas SQL necesarias y ejecutas el servidor.
