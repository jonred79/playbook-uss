#!/bin/bash
opc=0

while [ $opc -ne 4 ] ; do
clear
echo "------------------------------"
echo "          M E N U             "
echo "------------------------------"   
echo "<1> Instalar Todas las Erratas"
echo "<2> Instalar Erratas Security "
echo "<3> Instalar Sophos           "
echo "------------------------------"
echo "<4>        Salir              "
echo "------------------------------"

read -p "Seleccione una opcion: " opc

case $opc in
        1) clear
            ansible-playbook /etc/ansible/playbook/erratasfull.yml
            sleep 2
            ;;
 	2) clear
            ansible-playbook /etc/ansible/playbook/errataseguridad.yml
            sleep 2
            ;;
 	3) clear
            ansible-playbook /etc/ansible/playbook/copiarsophos.yml 
            sleep 2
            ;;
        4) clear
            ;;

        *) echo $opc no es opcion valida
            sleep 2 
 opc=0
            ;;
esac
done
