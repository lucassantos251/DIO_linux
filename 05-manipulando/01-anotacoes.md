# Anotações

    lucas@linuxuser:~$

- **lucas** Usuário
- **@** At, Localização
- **linuxuser** Nome do servidor
- **~** Local onde está no momento
- **$** significa usuário com restrições
- **#** significa usuário root

Data e hora atual:

    date

Limpar a tela:

    clear

# Navegação

Onde está posicionado:

    pwd

Mudar de diretórios

    cd /
    cd var
    cd ..

- **cd** Change Directory
- **/** Pasta raiz
- **var** Nome do Diretório
- **..** Voltar um diretório
- **~** Pasta do usuário

Ao digitar vários diretórios, pressionando TAB duas vezes, irá dar uma lista dos diretórios disponíveis

Ao digitar um diretório, antes de terminar, o TAB agirá como um auto-complete.

Visualizar arquivos de diretório:

    ls

- **ls**: List

Diretórios aparecem em azul escuro

# Filtrar exibição de arquivos

Scroll de listagem sem a barra de rolagem

    ls | more

Listar uma busca:

    ls passwd

    ls p*

    ls m?g*

    ls g?o*

- **?** uma letra indefinida
- **\*** várias letras indefinidas sem limite

Criar arquivos:

    touch arquivo1.txt
    touch arquivo2.txt
    touch arquivo3.txt
    touch arquivo4.txt
    touch arquivo5.txt

Listar um certo range de arquivos com mesmo nome:

    ls arquivo[1-3].txt

    ls arquivo[2,5].txt

    ls arquivo[^2,5].txt

    ls arquivo[^3-5].txt

- **\-** range
- **,** selecionados 
- **\^** negação

# Localizar arquivos

Verificar arquivos dentro de um determinado diretório

    ls /sys

    ls /sys/kernel

    ls /sys/kernek/p*

    ls /sys/kernel/s*

Buscar:

    find -name arq*

# Criando diretórios

Criar um diretório:

    mkdir Documentos

Para criar nomes com espaços:

    mkdir 'Meus Documentos'

# Excluindo arquivos e diretórios

Para remover diretórios:

    rmdir Meus

Para excluir arquivos:

    rm texto1.txt

    rm *.txt

Filtros também funcionam

Para excluir diretórios com arquivos:

    rm -rf Planilhas/

- **\-r** recursivo
- **f** forçado

# Obtendo ajuda

Abrindo o manual de um comando:

    ls --help

    ls -l

    drwxr-xr-x 6 root root 4096 fev 23 08:57 snap
    -rw------- 1 root root 2047868928 jun 8 17:40 swap.img
    lrwxrwxrwx 1 root root 7 fev 23 08:49 lib -> usr/lib

    ls -a

    ls -lh

    ls -R /etc

- **d** directory
- **\-** file
- **l** link

- as letras seguintes são permissões
- **6** é a quantidade de objetos dentro do diretório
- **root root** é o dono e o grupo do diretório
- **4096** é o tamanho do arquivo
- **fev 02 08:57** é a data que o diretório foi criado ou modificado pela ultima vez
- **snap** nome do diretório

- **\-a** all (mostra arquivos ocultos)
- **\-h** human readable (listagem de tamanho de arquivos em kb mb gb)
- **\-l** long list format
- **\-R** listagem recursiva (mostra pastas dentro de pastas)


        rm -rfvi

- **\-v** verbose (mostra o que está acontecendo)
- **\-i** confirmação antes de deletar o arquivo

        man ls
        help cd

- **man** manual de documentação
- **help** ajuda

https://help.ubuntu.com/

https://ubuntu.com/server/docs

# Executando tarefas administrativas como root

Usuários possuem grupos

    cat /etc/group

**cat** comando para abrir arquivos de texto

Para fazer tarefas de administrador, use:

    sudo

# Logando como usuário root

Para acessar o usuário root, primeiro é necessário criar uma senha para ele:

    sudo passwd root

Para logar como root:

    su

Para sair do root, entre em outro usuário:

    su lucas

No Ubuntu, o acesso remoto ao usuário root por padrão está bloqueado, para isso precisa ser desbloqueado primeiro:

    cat /etc/ssh/sshd_config

Precisamos editar o arquivo, descomentar a linha PermitRootLogin e editar para yes

    sudo nano /etc/ssh/sshd_config

Precisamos reiniciar o serviço, para isso consultaremos o serviço sshd:

    systemctl status sshd

    systemctl restart sshd

# Histórico

Para visualizar o histórico de comandos utilizados pelo usuário:

    history

Para ver os ultimos comandos do usuário, digite um valor na frente:

    history 30

Para reaproveitar comandos, digite o ! e o número do comando no histórico:

    !303

Para executar o ultimo comando:

    !!

Para buscar um determinado termo:

    !?dat?

    history | grep "Planilhas"

Agora vamos incluir a data e hora nos comandos utilizados no history.

    export HISTTIMEFORMAT="%c "

    %d:Day
    %m:Month
    %y:Year
    %H:Hour
    %M:Minutes
    %S:Seconds
    %F:Full date(Y-M-Dformat)
    %T:Time(H:M:Sformat)
    %c:Complete(Full date + Time)

Para limpar os dados do histórico:

    history -c

Porem ao trocar de usuários, o histórico continua armazenado, ou seja, ele guarda uma cópia.

Para comandos não serem mais armazenados no histórico:

    set +o history

Para voltar a armazenar:

    set -o history

As configurações do history, como quantidade de comandos armazenados, ficam guardados no .bashrc dentro da pasta do usuário:

    cd ~
    ls -a

    (.bashrc)

    cat .bashrc

    'HISTSIZE=1000'

    nano .bashrc

    'HISTSIZE=50'

Podemos armazenar o histórico dentro de um arquivo:

    history -w

    '.bash_history'