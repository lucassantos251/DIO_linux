# Instalando Docker

    apt update
    apt upgrade

    apt install docker.io

## Criando novo volume

    docker volume create app
    docker volume create data

## Instalando MYSQL no docker

    docker run -e MYSQL_ROOT_PASSWORD=970521 -e MYSQL_DATABASE=meubanco --name mysql-A -d -p 3306:3306 --mount type=volume,src=data,dst=/var/lib/mysql/ mysql:5.7

## Criando um novo container e instalar o PHP e Apache

    docker run --name web-server -dt -p 80:80 --mount type=volume,src=app,dst=/app/ webdevops/php-apache:alpine-php7

## Duplicando containers (SWARM)

    docker swarm init

O docker vai criar um token, copiamos e colamos isso na outra maquina:

    docker swarm join --token SWMTKN-1-1zh0lhla4ew5qm8rhe87cw89862kdk7ngk409ptdcuqpg1lkij-07ufiv248p7uzijl4hdas8ide 172.31.12.58:2377

## Listar os clusters

    docker node ls

## Criar um novo serviço para ser duplicado

    docker service create --name web-server --replicas 2 -dt -p 80:80 --mount type=volume,src=app,dst=/app/ webdevops/php-apache:alpine-php7

## Listar os serviços duplicados

    docker service ps web-server

## Replicar os volumes para os servidores

Servidor:

    apt install nfs-server

Clientes:

    apt install nfs-common

No servidor, precisamos criar um arquivo de configuração:

    nano /etc/exports

E colocar as pastas que desejamos exportar:

    /var/lib/docker/volumes/app/_data *(rw,sync,subtree_check)

Exportar a pasta:

    exportfs -ar

Mostrar o que tá compartilhado no computador:

    showmount -e

Montar a pasta no cliente:

    mount -o v3 ip:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data

    mount -t nfs4 -o rw,nosuid ip:/origem/ /destino/

## Proxy NGINX

Criar pasta proxy no root e criar o arquivo nginx.conf:

    nano nginx.conf

Precisamos pegar esse arquivo de configuração e mandar ele para dentro do container de proxy que vamos criar, vamos configurar ele atraves do dockerfile.

## Docker File:

É um arquivo de configuração do container onde especificamos a imagem que vamos usar e o que vamos falar com ela, vamos pegar a imagem do nginx e jogar o arquivo de configuração lá dentro.

    nano dockerfile

Agora vamos criar a build:

    docker build -t proxy-app .

Vamos rodar a imagem que acabamos de criar:

    docker container run --name my-proxy-app -dti -p 4500:4500 proxy-app