#!/bin/bash
echo
echo "\tAlterando a configuracao de acessibilidade do openJDK"
echo "\t@luizfpq"
echo "\tNao me responsabilizo por eventuais falhas no sistema"
echo

#echo Pressione enter para continuar ou Ctrl+c para cancelar; read dummy;

sudo sed -i "s/^assistive_technologies=/#&/" \
/etc/java-*-openjdk/accessibility.properties

echo "\topenJDK alterado com sucesso"
