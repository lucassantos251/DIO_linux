#!/bin/bash

#inicio
echo 'rodando script de configuracao'

#para ter certeza de que vamos executar o codigo a partir do diretorio root
cd /

#criacao dos diretorios
mkdir publico adm ven sec
echo 'criando diretorios'

#criacao dos grupos
groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC
echo 'criando grupos'

#criacao dos usuarios

#grupo adm
# ATENCAO, openssl atualizou os parametos de encriptacao para novas opcoes, no lugar do -crypt estou usando a encriptacao de md5 com o parametro -1
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

echo 'criando usuarios adm'

#grupo ven
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

echo 'criando usuarios ven'

#grupo sec
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo 'criando usuarios sec'

#modificacao dos donos e permissoes

#diretorio publico - FESTA GALERA
chmod 777 /publico/

echo 'modificando permissoes do diretorio publico'

#diretorio adm
chown root:GRP_ADM /adm/
chmod 770 /adm/

echo 'modificando permissoes do diretorio adm'

#diretorio ven
chown root:GRP_VEN /ven/
chmod 770 /ven/

echo 'modificando permissoes do diretorio ven'

#diretorio sec
chown root:GRP_SEC /sec/
chmod 770 /sec/

echo 'modificando permissoes do diretorio sec'

#fim
echo 'script terminado'