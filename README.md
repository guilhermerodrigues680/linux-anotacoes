Anotações Linux
===========================
>Comandos / Scripts / Dicas

## Linux 'Portátil' - Live CD com persistência
Live CD é um CD que contém um sistema operacional já carregado assim não é preciso fazer a instalação no disco rígido para executa-lo. Ele é executado diretamente do CD e da memória RAM. Apesar da nomeclatura ser Live CD ele pode ser executado diretamente a partir de um Pen Drive ou outro disco USB.  
Live CD com persitência(Os dados persistem) é um modo que salva todas as alterações feitas enquanto o Live CD estava sendo executado. Assim Downloads, configurações, instalações ficam salvas para a proxima vez que iniciar o Live CD. Por padrão o Live CD não é persistente, mas há ferramentas que criam Live CD com persitencia como o mkusb.  

### mkusb
Instalação do mkusb (Ferramenta para criar discos usb's bootaveis,  persistentes e faz formatação também)  
[How to Create a Live Ubuntu USB Drive With Persistent Storage](https://www.howtogeek.com/howto/14912/create-a-persistent-bootable-ubuntu-usb-flash-drive/ "Tutorial sobre como criar um Live USB linux com persistencia.")

```sh
# No Terminal:
# Adicionando Repositorio
sudo add-apt-repository ppa:mkusb/ppa -y

# Atualizando Lista de Pacotes
sudo apt-get update

# Instalando mkusb
sudo apt install --install-recommends mkusb mkusb-nox usb-pack-efi -y
```

## Xubuntu Core
[Xubuntu](https://xubuntu.org/) é uma distribuição Linux baseada no [Ubuntu](https://ubuntu.com/). A principal caracteristica dela é ultilizar o ambiente Xfce e programas que fazem com que a distribuição seja bem leve e tenha um bom desempenho (uma boa opção para computadores fracos ou antigos).  
O Xubuntu Core é uma versão reduzida do Xubuntu, que não vem com os pacotes adicionais padrões do Xubuntu como LibreOffice, gerenciador de arquivos compactados, Firefox, entre outros. E a vantagem é uma ISO bem leve, em torno de 750Mb.  
A instalação do Xubuntu Core officialmente deve ser feita através da istalação minima do Ubuntu, porém a comunidade criou e disponibilizou a imagem ISO para download.  

**Xubuntu Core - Disco Dingo/19.04 amd64:** <https://unit193.net/xubuntu/core/>

## Meu Linux 'Portátil' via Pen Drive
Basicamente se Trata de um Live CD com Persitência.  
Sempre que inicio o boot pelo Pen Drive o sistema carrega meus arquivos e configurações, e durante o uso do computador o sistema já vai guardando as minhas informações no pen drive, assim quando inicio o boot pelo pen drive em qualquer outro computador ele já carrega minhas configurações que estavam salvas, funcionando igual um sistema instalado no disco do computador porém no pen drive.  
Essa portábilidade me dá a possibilidade de levar meu sistema com as minhas configurações para qualquer lugar.  

**Criado usando o mksub configurado para 92% de persitencia**

* **Dispositivo:** Pen Drive SanDisk 4GB (Real: 3.7Gib)
* **Distribuição:** Xubuntu Core 19.04 amd64(Tamanho da ISO ~= 750mb)
* **Particionamento:**
  * 243MiB Para uso geral (armazenamento USB comum: mp3, tv, Windows, ect ).
  * 754MiB ocupados pelo sistema. (Fixo do Live CD)
  * 2.5GiB de armazenamento para o sistema (Dados do usuario).

Esquema de partições após criar um 'Persistent Live' de 92% com mkusb:  
![Screenshot Partições 'Persistent Live'](https://raw.githubusercontent.com/guilhermerodrigues680/linux-anotacoes/master/particionamento-xubuntu-core.png "Screenshot | sudo fdisk -l")  

## Programas / Pacotes que uso na distro Xubuntu Core 19.04
E recomendado atualizar a lista de pacotes antes das instalações:
> \# No terminal  
>`sudo apt-get update`

**Mozilla Firefox**
```sh
# No Terminal:
# Instalar Mozilla Firefox
sudo apt install firefox
```

**Mousepad**
```sh
# No terminal:
sudo apt install mousepad
```

**Engrampa**
```sh
# No terminal:
sudo apt install engrampa
```

**Xfce Task Manager**
```sh
# No terminal:
sudo apt install xfce4-taskmanager
```

**Visual Studio Code** <https://code.visualstudio.com/>
```sh
# No Terminal:
# Instalar Visual Studio Code
sudo apt install ./codeXXXXamd64.deb
# If you're on an older Linux distribution, you will need to run this instead:
# sudo dpkg -i <file>.deb
# sudo apt-get install -f # Install dependencies
```
Para desativar o git do Visual Studio Code:  
Desmarca o Enable do GIT: 
>`Whether git is enabled`


**Arduino IDE** <https://www.arduino.cc/en/Main/Software>
Salve o arquivo compactado do Arduino IDE na pasta Downloads
```sh
# No terminal:
# Entre na pasta de downloads
cd ~/Downloads
# Descompacte o arquivo
tar -xvf arduino-1.8.9-linux64.tar.xz
# Mova a pasta extraida para a pasta /opt/
sudo mv ./arduino-1.8.9 /opt/
# Va para a pasta /opt
cd /opt
# Entre na pasta que voce acabou de mover
cd arduino-1.8.9/
# Execute a instalação do arduino
sudo ./install.sh

# ==== Corrigindo o Erro:
# avrdude: ser_open(): can't open device "/dev/ttyACM0": Permission denied
# * Deixe a placa arduino conectada ao computador.
# Verificando existencia da porta /dev/ttyACM0
ls -l /dev/ttyACM0
# Se existir: Permita o acesso a todos os usuarios:
sudo chmod a+rw /dev/ttyACM0
# Checar se as permissoes de acesso foram alteradas:
ls -l /dev/ttyACM0
```

**GIT**
```sh
# No terminal:
sudo apt install git
```

**BleachBit**
```sh
# No terminal:
sudo dpkg -i bleachbit_2.2_all_ubuntu1804.deb 
sudo apt install ./bleachbit_2.2_all_ubuntu1804.deb 
sudo apt --fix-broken install
sudo apt install ./bleachbit_2.2_all_ubuntu1804.deb 
```

* **Outros programas**
  * WPS Office
  * Transmission
  * Gigolo
  * thunar-archive-plugin
  * stacer

## Comandos Linux
>`free -h` \# Mostra o uso da memoria RAM  

>`lsb_release -a` \# Informações sobre a distribuição  

>`uname -a` \# Informações sobre o kernel  

>`echo $USER` \# Imprime o nome do usuario  

>`dpkg --get-selections > Lista-Pacotes.txt` \# Lista os pacotes instalados  

## Instalando Fontes no Linux
Criar pasta **`.fonts`** na home e extrair a fonte para dentro de `.fonts`.  

**Droid Sans Mono** <https://www.1001fonts.com/droid-sans-mono-font.html>