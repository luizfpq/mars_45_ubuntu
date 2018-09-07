#!/bin/bash
echo
echo Alterando a configuracao de acessibilidade do openJDK
echo @luizfpq
echo Nao me responsabilizo por eventuais falhas no sistema
echo

#echo Pressione enter para continuar ou Ctrl+c para cancelar; read dummy;

sudo sed -i "s/^assistive_technologies=/#&/" \
/etc/java-*-openjdk/accessibility.properties

echo openJDK alterado com sucesso
