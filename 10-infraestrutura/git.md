# Configurando GitHub na máquina virtual

É recomendado ter um token de acesso pessoal.

https://github.com/settings/tokens

É comum em maquinas servidores já terem o Git instalado, caso não esteja:

    apt install git

Na primeira vez utilizando o git, precisamos configurar ele com o e-mail.

    git config --global user.email "lucas.bats@gmail.com"
    git config --global user.name "lucassantos251"

Precisamos estar na pasta onde subiremos o nosso arquivo e inicializar o git:

    git init

Adicione os arquivos ao git:

    git add .

    git add nomedoarquivo

**.** significa adicionar todos os arquivos da pasta

Precisamos criar um commit:

    git commit -m "Arquivos IaC"

Precisamos especificar qual branch iremos usar e repositório será utilizado:

    git branch -M main
    git remote add origin 'linkdorepositorio'
    
Agora subiremos os arquivos:

    git push -u origin main

Irá pedir o login e password, no lugar do password, colocaremos o token que criamos.


