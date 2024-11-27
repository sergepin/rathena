#!/bin/bash

# Actualización de la lista de paquetes e instalación de dependencias
echo "Actualizando el sistema..."
sudo apt update -y
sudo apt upgrade -y

# Instalación de herramientas básicas de desarrollo
echo "Instalando herramientas esenciales..."
sudo apt-get install -y build-essential
sudo apt install -y git

# Instalación de dependencias necesarias para la compilación
echo "Instalando dependencias..."
sudo apt install -y libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext cmake gcc
sudo apt-get install -y libpcre3 libpcre3-dev
sudo apt -y install bsdextrautils
sudo apt-get install -y git make libmysqlclient-dev zlib1g-dev libpcre3-dev

# Instalación de Apache
echo "Instalando Apache2..."
sudo apt install -y apache2
sudo systemctl status apache2
echo "La dirección IP de Apache es: $(hostname -I)"
sudo chown www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Instalación y configuración de MariaDB (MySQL)
echo "Instalando MariaDB..."
sudo apt install -y mariadb-server
sudo apt install -y mysql_secure_installation

# Instalación de PHP y phpMyAdmin
echo "Instalando PHP y phpMyAdmin..."
sudo apt install -y php
sudo apt install -y phpmyadmin

# Clonar rAthena desde GitHub
echo "Clonando rAthena..."
git clone https://github.com/sergepin/rathena.git
cd rathena

# Configuración de rAthena
echo "Configurando rAthena..."
./configure --enable-packetver=20190605

# Compilación del servidor
echo "Compilando rAthena..."
make clean server

echo "Instalación y configuración completa."
echo "Recuerda subir los archivos SQL a phpMyAdmin y ejecutar ./athena-start start para iniciar el servidor."
