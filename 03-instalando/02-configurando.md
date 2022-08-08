# Configurando

Para computadores Windows, verifique se a virtualização padrão da microsoft está ativada:

    bcdedit

Caso a opção 'hypervisorlaunchtype' esteja com valor auto, desative usando o comando:

    bcdedit /set hypervisorlaunchtype off

Caso não apareça o 'hypervisorlaunchtype'

- Abra o painel de controle
- Programas
- Ativar ou desativar recursos do Windows
- Ativar o Plataforma do Hipervisor do Windows

Crie a maquina virtual especificando o tamanho da RAM e o tamanho do armazenamento.

Com ela criada, entre em configurações e configure a placa de rede e o armazenamento.

Rede: 
- Placa de Rede em modo Bridge
- Selecione a placa de rede

Armazenamento:
- Controladora IDE
- Selecione a ISO