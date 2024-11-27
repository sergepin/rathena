`# Guía de Instalación y Configuración de rAthena en Ubuntu

Esta guía detalla los pasos necesarios para instalar y configurar un entorno en un servidor Ubuntu para ejecutar rAthena, un emulador de servidores de Ragnarok Online.

---

## **1. Instalación de herramientas básicas**
Instala las herramientas esenciales para compilación y desarrollo:

```bash
sudo apt-get install build-essential
sudo apt install git `

Actualiza el sistema:

bash

Copiar código

`sudo apt update
sudo apt upgrade`

* * * * *

**2\. Instalación de dependencias**
-----------------------------------

Instala las bibliotecas y herramientas necesarias:

bash

Copiar código

`sudo apt install libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext cmake gcc
sudo apt-get install libpcre3 libpcre3-dev
sudo apt -y install bsdextrautils
sudo apt-get install -y git make libmysqlclient-dev zlib1g-dev libpcre3-dev`

* * * * *

**3\. Instalación de Apache**
-----------------------------

Configura un servidor web para manejar el acceso:

bash

Copiar código

`sudo apt install apache2
sudo systemctl status apache2`

Obtén la IP del servidor para acceder desde el navegador:

bash

Copiar código

`hostname -I`

Cambia los permisos de la carpeta web:

bash

Copiar código

`sudo chown www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html`

* * * * *

**4\. Instalación y configuración de MariaDB**
----------------------------------------------

Instala y asegura la base de datos:

bash

Copiar código

`sudo apt install mariadb-server
sudo apt install mysql_secure_installation`

Durante la configuración de seguridad:

-   **Switch to unix socket:** No
-   **Change root password:** No
-   **Remove anonymous users:** Sí
-   **Disallow root login:** No
-   **Remove test database and access:** Sí
-   **Reload privilege tables:** Sí

Habilita y verifica el estado del servicio:

bash

Copiar código

`sudo systemctl enable mariadb.service
sudo systemctl status mariadb`

* * * * *

**5\. Instalación de PHP y phpMyAdmin**
---------------------------------------

Instala PHP y phpMyAdmin para gestionar bases de datos fácilmente:

bash

Copiar código

`sudo apt install php
sudo apt install phpmyadmin`

Configura Apache para usar phpMyAdmin. Asegúrate de que phpMyAdmin sea accesible desde tu navegador.

* * * * *

**6\. Configuración de rAthena**
--------------------------------

Clona el repositorio de rAthena y compila el servidor:

bash

Copiar código

`git clone https://github.com/rathena/rathena.git
cd rathena
./configure --enable-packetver=packetver
make clean server`

* * * * *

**7\. Carga de datos SQL**
--------------------------

Usa phpMyAdmin para importar los archivos SQL incluidos con rAthena. Esto configurará las tablas y datos necesarios para el funcionamiento del servidor.

* * * * *

**8\. Iniciar el servidor rAthena**
-----------------------------------

Ejecuta el servidor rAthena:

bash

Copiar código

`./athena-start start`
