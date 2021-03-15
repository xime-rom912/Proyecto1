#!/bin/bash

a=$1

if [ "$a" == "-a" ]; then
	echo "Bienvenido a la guia rapida de Agile, para continuar seleccione un tema"
	echo "1. SCRUM"
	echo "2. X.P."
	echo "3. Kanban"
	echo "4. Crystal"
	read opcion
	case $opcion in
	1)
		echo "Usted está en la sección "
        	;;
        2)
        	echo "Usted está en la sección "
        	;;
        3)
        	echo "Usted está en la sección"
        	;;
	4)
		echo "Usted está en la sección"
		;;
	*)
		echo"Selecciono una opcion incorrecta"
	esac

elif [ "$a" == "-t" ]; then
	echo "Bienvenido a la guia rapida de metodologias tradicionales, para continuar seleccione un tema"
	echo "1. Cascada"
        echo "2. Espiral"
        echo "3. Modelo V"
	read opcion
        case $opcion in
        1)
                echo "Usted está en la sección "
                ;;
        2)
                echo "Usted está en la sección "
                ;;
        3)
                echo "Usted está en la sección"
                ;;
        *)
                echo"Selecciono una opcion incorrecta"
        esac

fi
