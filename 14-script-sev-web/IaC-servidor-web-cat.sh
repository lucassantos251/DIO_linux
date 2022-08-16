#!/bin/bash
#Atualizar o Servidor
cd /

echo 'Atualizando o servidor...'

sleep 3

apt-get update -y
apt-get upgrade -y

sleep 3

clear

echo 'Servidor atualizado.'

#Instalar o Apache2
echo 'Instalando o apache2...'

sleep 3

apt-get install apache2 -y

sleep 3

clear

echo 'apache2 instalado.'

#Instalar o Unzip
echo 'Instalando o unzip...'

sleep 3

apt-get install unzip -y

sleep 3

clear

echo 'unzip instalado.'

#Baixar a aplicacao pro diretorio /tmp
echo 'Fazendo download da aplicacao web...'

sleep 3

wget -P /tmp https://github.com/lucassantos251/DIO_JavaScript/archive/refs/heads/main.zip

sleep 3

clear

echo 'Download concluido.'

echo 'Descompactando aplicacao web...'

sleep 3

cd /tmp

unzip /tmp/main.zip

sleep 3

clear

echo 'Descompactacao completa...'

#Copiar os arquivos para o diretorio padrao do apache
echo 'Copiando arquivos para o diretorio apache...'

sleep 3

cp -r /tmp/DIO_JavaScript-main/dio-js-async/* /var/www/html/

echo 'Copia concluida.'

echo 'Script finalizado.'