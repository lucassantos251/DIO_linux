# Montando e desmontando discos

O /mnt do Linux já é preparado para a montagem de discos, crie um diretório nele para montagem:

    mkdir /mnt/disco2

    mount /dev/sdb /mnt/disco2

    umount /dev/sdb

# Montando discos automaticamente

Para montar discos automaticamente precisamos editar o arquivo de mount:

    nano /etc/fstab

Aqui monte o seu disco:

    /dev/sdb /mnt/disco2 ext4 defaults 0 0 