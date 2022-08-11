# Particionando e formatando discos via terminal

Criando uma partição:

    fdisk /dev/sdb

    n

    p

    1

    'primeiro setor'(enter para default)

    'ultimo setor'(enter para default)

    w

- **n** adiciona nova partição
- **p** partição primária
- **1** número da partição
- **w** write
 
Formatando a partição:

    mkfs.ext4 /deb/sdb

