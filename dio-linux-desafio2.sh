#Enunciado

#Restaurar o snapshot criado anteriormente no virtualbox;
# Atualizar o servidor;
# Instalar o apache2;
# Instalar o unzip;
# Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
# Copiar os arquivos da aplicação no diretório padrão do apache;
# Subir arquivo de script para um repositório no GitHub.

#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y 
apt-get install unzip -y 

echo "baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "fim..."