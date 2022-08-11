# Copiando arquivos e manipulando processos

Para fazer cópias de arquivos, precisamos saber onde está o arquivo para fazer a cópia, quais arquivos você vai copiar (é necessário ter um padrão, arquivos com letra a, arquivos txt, apenas um arquivo), e qual o destino dessa cópia.

    cp [origem] [destino]

    cp /home/lucas/bancodedados.sql /mnt/disco2/

    cp /home/lucas/*.txt /mnt/disco2/

    cp ./a* /mnt/disco2

Se caso já houver arquivos com o mesmo nome no destino, ele faz a sobreposição. Para ter perguntas de confirmação, utilize a opção 'interactive':

    cp /home/lucas/* /mnt/disco2 -i

Caso haja outros diretórios, eles serão omitidos, para serem copiados, utilize a opção 'recursive':

    cp /home/lucas/* /mnt/disco2 -r

O ideal é ativar o modo 'verboso', que dá a visualização do que está acontecendo, caso haja cópias muito grandes e isso evita que o terminal fique parado ou travado.

    cp /home/lucas/* /mnt/disco2 -v

