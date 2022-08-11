# Discos, sistemas de arquivos e partições

## **Disco rígido**

É onde ficam armazenados os arquivos do seu sistema, dados e etc.

**Tipos de discos**:

- HD
- SSD
- SSD NVMe

## **Sistemas de arquivos**

Sistema de arquivos é um padrão, uma forma como o sistema operacional usa para controlar como os dados são armazenados e recuperados.

- **MacOS**: HFS
- **Unix/Linux**: Ext3, Ext4, XFS
- **Windows**: FAT32, NTFS

## **Particionamento**

De um modo geral, o particionamento é a divisão de um disco em partes. Cada parte ou partição é independente da outra. Cada partição pode ter um sistema de arquivos diferente.

**Partições no Windows:**

No Windows cada partição é reconhecida como uma unidade e nomeada como uma letra: C, D, E, etc.

**Partições no Linux:**

No Linux cada disco recebe um nome iniciado por sd

- sd**a**, sd**b**, sd**c**...

Cada partição do disco é numerada. Exemplo:

- sda1, sda2, sda3 
- sdb1, sdb2...

Listar discos no linux via terminal:

    lsblk

    fdisk -l

    

