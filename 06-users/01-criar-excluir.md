# Criando e excluindo usuários

Criando um novo usuário, para isso precisamos logar no root e depois criar um:

    su

    useradd joao

Para deletar um usuário:

    userdel -f joao

Parâmetros normalmente utilizados:

    useradd joao -m -c "João da Silva"

    passwd joao

    useradd joao -m -c "João da Silva" -s /bin/bash

- **-m** criar a pasta do usuário
- **-c** comentário sobre o usuário
- **-s** indicação do shell

Ao criar o usuário, é necessário indicar qual shell ele vai utilizar, caso tenha criado sem, para mudar utilizamos o comando chsh (change shell):

    chsh -s /bin/bash joao

Parâmetros normalmente utilizados na remoção:

    userdel -r -f joao

- **-r** remover pasta do usuário

