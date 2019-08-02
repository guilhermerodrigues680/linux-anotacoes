#!/bin/bash
echo ''
echo '==============Instalacao MKUSB==================='

echo ''
echo 'Adicionando Repositorio'
sudo add-apt-repository ppa:mkusb/ppa -y

echo ''
echo 'Atualizando Lista de Pacotes'
sudo apt-get update

echo ''
echo 'Instalando mkusb'
sudo apt install --install-recommends mkusb mkusb-nox usb-pack-efi -y