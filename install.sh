#!/bin/bash
#
# LuizQuirino <luizfpq@gmail.com>

set -eu -o pipefail # fail on error , debug all lines

sudo -n true
test $? -eq 0 || exit 1 "Você precisa de privilégios de sudo para execução"

#echo A instalação necessita dos seguintes requisitos
while read -r p ; do sudo apt-get install -y $p ; done < <(cat << "EOF"
    default-jre
    axel
EOF
)
echo
echo -e "\t Instalando os requisitos"
echo -e "\n\t Aguarde 5 segundos para prosseguir ..."
echo -e "\t ou use Ctrl+C para cancelar"
echo -e "\n"
sleep 6



#removemos o diretorio e recriamos apenas por garantia
sudo rm -rf /opt/Mars
sudo mkdir /opt/Mars
#realizamos a configuração de compatibilidade do openjdk
sudo axel -n 5 https://raw.githubusercontent.com/luizfpq/mars_45_ubuntu/master/configure_openjdk.sh --output=/opt/Mars/configure_openjdk.sh --alternate
sudo chmod +x /opt/Mars/configure_openjdk.sh
sudo sh /opt/Mars/configure_openjdk.sh
#iniciamos o download do Mars
sudo axel -n 5 https://github.com/luizfpq/mars_45_ubuntu/blob/master/Mars4_5.jar?raw=true --output=/opt/Mars/Mars4_5.jar --alternate
sudo chmod +x /opt/Mars/Mars4_5.jar
#baixando ícone
sudo axel -n 5 https://raw.githubusercontent.com/luizfpq/mars_45_ubuntu/master/mars.png --output=/opt/Mars/mars.png --alternate
#baixando atalho para menus do sistema
sudo axel -n 5 https://raw.githubusercontent.com/luizfpq/mars_45_ubuntu/master/Mars.desktop --output=/usr/share/applications/Mars.desktop --alternate

echo -e "\t Aproveite seu Mars, ele está disponível no seu menu principal, na categoria desenvolvimento"
