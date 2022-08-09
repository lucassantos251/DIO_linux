# Shell Script - Criando usuários em lote

Comando de criar usuário com password: 

    useradd convidado1 -c "Convidado Especial" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)

Agora criaremos um comando sh (com usuário root):

    cd /
    mkdir /scripts/
    cd /scripts/
    nano criar_user.sh

Dentro do criar_user.sh:

    #!/bin/bash

    echo "Criando usuários do sistema..."

    useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
    passwd guest10 -e

    useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
    passwd guest11 -e

    useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
    passwd guest12 -e

    useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
    passwd guest13 -e

    echo "Finalizado."

Por padrão esse arquivo não tem permissão de execução, para liberar a execução:

    chmod +x criar_user.sh

Para executar:

    ./criar_user.sh