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