#!/bin/bash

a=$1

if [ "$a" == "-a" ]; then
	echo "Bienvenido a la guia rapida de Agile, para continuar seleccione un tema"
	echo ""
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
        		echo "Ingrese la opcion que desea realizar: "
			read opcionSCRUM
			case $opcionSCRUM in
			1)
				echo "Agregar información"
        			;;
       			2)
        			echo "Buscar"
        			;;
        		3)
				echo "Eliminar informacion"
				;;
			4)
				echo "Leer base de información"
				;;
			*)
        			echo "Selecciono una opción incorrecta"
        			;;
			esac

		;;
        2)
        	echo "Usted está en la sección X.P."
			echo ""
                        echo "1. Agregar informacion."
                        echo "2. Buscar."
                        echo "3. Eliminar informacion."
                        echo "4. Leer base de informacion."
                        echo "Ingrese la opcion que desea realizar: "
                        read opcionXP
                        case $opcionXP in
                        1)
                                echo "Agregar información"
                                ;;
                        2)
                                echo "Buscar"
                                ;;
                        3)
                                echo "Eliminar informacion"
                                ;;
                        4)
                                echo "Leer base de información"
                                ;;
                        *)
                                echo "Selecciono una opción incorrecta"
                                ;;
                        esac

        	;;
        3)
        	echo "Usted está en la sección Kanban"
			echo ""
			echo "1. Agregar informacion."
			echo "2. Buscar."
			echo "3. Eliminar informacion."
			echo "4. Leer base de informacion."
			echo "Ingrese la opcion que desea realizar: "
                        read opcionKanban
                        case $opcionKanban in
                        1)
                                echo "Agregar información"
                                ;;
                        2)
                                echo "Buscar"
                                ;;
                        3)
                                echo "Eliminar informacion"
                                ;;
                        4)
                                echo "Leer base de información"
                                ;;
                        *)
                                echo "Selecciono una opción incorrecta"
                                ;;
                        esac

        	;;
		4)
			echo "Usted está en la sección Crystal"
			echo ""
			echo "1. Agregar informacion."
			echo "2. Buscar."
			echo "3. Eliminar informacion."
			echo "4. Leer base de informacion."
			echo "Ingrese la opcion que desea realizar: "
                        read opcionCrystal
                        case $opcionCrystal in
                        1)
                                echo "Agregar información"
                                ;;
                        2)
                                echo "Buscar"
                                ;;
                        3)
                                echo "Eliminar informacion"
                                ;;
                        4)
                                echo "Leer base de información"
                                ;;
                        *)
                                echo "Selecciono una opción incorrecta"
                                ;;
                        esac

		;;
	*)
		echo "Selecciono una opción incorrecta"
	esac

elif [ "$a" == "-t" ]; then
	echo "Bienvenido a la guia rapida de metodologias tradicionales, para continuar seleccione un tema"
	echo "1. Cascada"
        echo "2. Espiral"
        echo "3. Modelo V"
	read opcion
        case $opcion in
        1)
                echo "Usted está en la sección Cascada"
                echo ""
                        echo "1. Agregar informacion."
                        echo "2. Buscar."
                        echo "3. Eliminar informacion."
                        echo "4. Leer base de informacion."
			echo "Ingrese la opcion que desea realizar: "
                        read opcionCascada
                        case $opcionCascada in
                        1)
                                echo "Agregar información"
                                ;;
                        2)
                                echo "Buscar"
                                ;;
                        3)
                                echo "Eliminar informacion"
                                ;;
                        4)
                                echo "Leer base de información"
                                ;;
                        *)
                                echo "Selecciono una opción incorrecta"
                                ;;
                        esac

		;;
        2)
                echo "Usted está en la sección Espiral"
			echo ""
                        echo "1. Agregar informacion."
                        echo "2. Buscar."
                        echo "3. Eliminar informacion."
                        echo "4. Leer base de informacion."
			echo "Ingrese la opcion que desea realizar: "
                        read opcionEspiral
                        case $opcionEspiral in
                        1)
                                echo "Agregar información"
                                ;;
                        2)
                                echo "Buscar"
                                ;;
                        3)
                                echo "Eliminar informacion"
                                ;;
                        4)
                                echo "Leer base de información"
                                ;;
                        *)
                                echo "Selecciono una opción incorrecta"
                                ;;
                        esac

                ;;
        3)
                echo "Usted está en la sección Modelo V"
	                echo ""
                        echo "1. Agregar informacion."
                        echo "2. Buscar."
                        echo "3. Eliminar informacion."
                        echo "4. Leer base de informacion."
			echo "Ingrese la opcion que desea realizar: "
                        read opcionModeloV
                        case $opcionModeloV in
                        1)
                                echo "Agregar información"
                                ;;
                        2)
                                echo "Buscar"
                                ;;
                        3)
                                echo "Eliminar informacion"
                                ;;
                        4)
                                echo "Leer base de información"
                                ;;
                        *)
                                echo "Selecciono una opción incorrecta"
                                ;;
                        esac

		;;
        *)
                echo"Selecciono una opción incorrecta"
        esac

fi
