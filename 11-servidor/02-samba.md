# Instalação do SAMBA e configuração inicial

https://wiki.samba.org/index.php/Main_Page

Para conseguir deixar uma pasta aberta para compartilhamento na rede, precisamos configurar o samba:

    nano /etc/samba/smb.conf

No final do arquivo smb.conf vamos configurar o acesso a pasta.

    [publico]

    path = /publico
    writable = yes
    guest ok = yes
    guest only = yes

Após isso, precisamos reiniciar o serviço do SAMBA. Serviços em segundo plano são nomeados como DAEMON, para reiniciar os daemons precisamos usar o systemctl:

    systemctl restart smbd

Para saber os status do serviço do SAMBA:

    systemctl status smbd

Por padrão, ao reiniciar o servidor, o serviço do SAMBA não vai rodar automaticamente e será necessário habilitar ele, para rodar automaticamente:

    systemctl enable smbd