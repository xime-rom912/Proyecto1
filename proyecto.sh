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
		echo "Usted está en la sección SCRUM"
		echo ""
		echo "1. Agregar informacion."
		echo "2. Buscar."
		echo "3. Eliminar informacion."
		echo "4. Leer base de informacion."
        	;;
        2)
        	echo "Usted está en la sección X.P."
			echo ""
			echo "1. Agregar informacion."
			echo "2. Buscar."
			echo "3. Eliminar informacion."
			echo "4. Leer base de informacion."
        	;;
        3)
        	echo "Usted está en la sección Kanban"
			echo ""
			echo "1. Agregar informacion."
			echo "2. Buscar."
			echo "3. Eliminar informacion."
			echo "4. Leer base de informacion."
        	;;
		4)
			echo "Usted está en la sección Crystal"
			echo ""
			echo "1. Agregar informacion."
			echo "2. Buscar."
			echo "3. Eliminar informacion."
			echo "4. Leer base de informacion."
		;;
	*)
		echo "Selecciono una opcion incorrecta"
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
