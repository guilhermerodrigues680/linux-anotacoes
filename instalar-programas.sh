#!/bin/bash
echo ''
echo '======Instalacao de Programas Basicos======'
#https://pkgs.org/

# Atualizar firefox
echo ''
echo 'Atualizar/Instalar Firefox'
sudo apt install ./firefox_68.0+build3-0ubuntu0.18.04.1_amd64.deb
# Se for usar a internet:
#sudo apt install firefox

# Instalar visual code
echo ''
echo 'Instalar Visual Studio Code'
sudo apt install ./code_1.36.1-1562627527_amd64.deb
# If you're on an older Linux distribution, you will need to run this instead:
# sudo dpkg -i <file>.deb
# sudo apt-get install -f # Install dependencies

# Desativar o git no visual code:
echo ''
echo '***** Para desativar o git no visual code: ****'
echo ''
echo 'Abra a Command Palette (Ctrl + Shift + P), digite:'
echo 'Preferences: Open Settings (JSON)'
echo 'Acesse settings JSON e cole isso no arquivo:'
echo '// Whether git is enabled. (Desmarca o Enable do GIT)'
echo '"git.enabled": false'

#Em Desenvolvimento
#sudo -i
sudo su
cd ~/.config/Code/User
#nano settings.json

echo ''
echo '=============== F I M ===================='