# Editando informações do usuário

Para criar uma data de expiração para o usuário:

    useradd guest -c "Convidado" -m -e 26/06/2022
    passwd guest

Utilizamos o usermod para fazer alterações no usuário:

    usermod guest -s /bin/bash

Podemos criar uma expiração de senha:

  passwd guest -e

- Se não informarmos nada, a senha expirará agora.

Verificar usuários cadastrados no sistema:

    cat /etc/passwd