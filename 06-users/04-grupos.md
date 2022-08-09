# Adicionando usuários a grupos

    useradd mariana -c "Mariana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
    cat /etc/group

Para modificar o usuário e adicionar ele a um grupo:

    usermod -G adm,sudo mariana

# Criar novos grupos

Criando novos grupos (usuário root):

    groupadd GRP_ADM
    groupadd GRP_VEN
    groupadd GRP_TESTE

    groupdel GRP_TESTE

Visualizando os grupos:

    cat /etc/group

Criando usuários e já atribuindo ele a um grupo:

    useradd rodrigo -c "Rodrigo" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

    useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

    useradd daniel -c "Daniel" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

    useradd maisa -c "Maisa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

Migrando um usuário ao grupo:

    usermod -G GRP_VEN joao

Ao retribuir, os grupos anteriores são removidos, ao menos que sejam especificados novamente:

    usermod -G GRP_ADM mariana

    (nesse caso mariana sairia do grupo Sudo e Adm como foi atribuida antes)

Para continuar com os mesmos grupos:

    usermod -G adm,sudo,GRP_ADM mariana

    (nesse caso ela manteria todos os grupos no qual ela já pertencia)

Para remover o usuário de um grupo específico:

    gpasswd -d mariana adm