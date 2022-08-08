# Acesso remoto via Windows

Primeiramente precisamos do IP de acesso:

    ip a

Software utilizado:

- Putty

Precisamos do serviço de OpenSSH instalado

    sudo apt-get install openssh-server

Abra o Putty e acesse usando o IP de acesso

# Acesso remoto via Linux

Via terminal:

    ssh 'username@ip'

    ssh lucas@192.168.15.9


# Acesso a uma maquina virtual em Nuvem (Putty)

É necessário fazer o download de uma private key. Para isso precisamos de um arquivo com extensão .ppk, é possível fazer a conversão usando o PuttyGen. Na aba connection, SSH, Auth, selecione a sua chave.

# Acesso a uma maquina virtual em Nuvem (ssh)

É necessário fazer o download de uma private key no formato .pem. Via terminal, entre na pasta com o arquivo .pem e use o comando:

    ssh -i 'privatekey.pem' 'username@ip'

    ssh -i Lucas-AWS.pem lucas@192.168.15.9

Caso dê um Warning de arquivo desprotegido, utilize o comando na private key:

    sudo chmod 600 'privatekey.pem'

