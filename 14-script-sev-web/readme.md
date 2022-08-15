# Infraestrutura como código: Script de provisionamento de um servidor web (apache)

## **O que é?**

Infraestrutura como código (IaC) é o gerenciamento e provisionamento da infraestrutura por meio de códigos, em vez de processos manuais.

Com a IaC, são criados arquivos de configuração que incluem as especificações da sua infraestrutura, facilitando a edição e a distribuição de configurações. Ela também assegura o provisionamento do mesmo ambiente todas as vezes.

Fonte: Red Hat - https://www.redhat.com/

## **Controle de versão**

O controle de versão é uma parte importante da IaC. Os arquivos de configuração devem pertencer à fonte como qualquer outro código-fonte de software. Ao implantar a infraestrutura como código, também é possível separá-la em módulos, que podem ser combinados de diferentes maneiras por meio da automação.

## **Definições**

- Restaurar o snapshot criado anteriormente no virtualbox;
- Atualizar o servidor;
- Instalar o apache2;
- Instalar o unzip;
- Baixar a aplicação disponível no endereço: https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório **/tmp**;
- Copiar os arquivos da aplicação no diretório padrão do apache;
- Subir arquivo de script para um repositório no GitHub.