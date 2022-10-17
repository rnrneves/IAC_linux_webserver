#!/bin/bash

#Developed By rnrneves

echo "Atualizando os pcts e instalando o server..."
apt-get update
apt-get upgrade -y
apt-get install wget -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos.."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

