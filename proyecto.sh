#!/bin/bash

function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

a=$1

if [ "$a" == "-a" ]; then
        guiaAgile:
        clear
	echo "Bienvenido a la guia rapida de Agile, para continuar seleccione un tema"
	echo ""
	echo "1. SCRUM"
	echo "2. X.P."
	echo "3. Kanban"
	echo "4. Crystal"
	echo "Ingrese la opcion que desea realizar: "
	read opcion
	case $opcion in
	1)
                scrumMenu:
                clear
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
                                clear
				echo "Agregar información"
                                i=$((i+1))
				echo "Escribe el identificador del concepto"
				read concep
				echo "Escribe la definicion del concepto"
				read defin
                                echo $i "[" $concep "]" ".-"  $defin >> SCRUM.inf
                                echo ""
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu SCRUM"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto scrumMenu
                                else
                                exit
                                fi
        			;;
       			2)
                                clear
        			echo "Buscar"
                                echo "Ingrese la palabra que desea buscar en el archivo: "
                                read pSCRUM
                                egrep --color -R $pSCRUM SCRUM.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu SCRUM"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto scrumMenu
                                else
                                exit
                                fi
        			;;
        		3)
                                clear
				echo "Eliminar informacion"
                                echo ""
				echo "Que identificador desea eliminar?"
				read ident
				system=`sed -i '/'$ident'/d' SCRUM.inf`
     				echo "Que desea realizar?"
                                echo "1. Regresar al menu SCRUM"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto scrumMenu
                                else
                                exit
                                fi
				;;
			4)      
                                clear
				echo "Leer base de información"
                                cat SCRUM.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu SCRUM"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto scrumMenu
                                else
                                exit
                                fi
				;;
			*)
                                echo ""
        			echo "Opción no valida."
                                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                                if [ "$key" = '' ]; then
                                jumpto scrumMenu
                                else
                                jumpto scrumMenu
                                fi
        			;;
			esac

		;;
        2)	xpMenu:
                clear
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
                                clear
                                echo "Agregar información"
                                i=$((i+1))
                                echo "Escribe el identificador del concepto"
                                read concep
                                echo "Escribe la definicion del concepto"
                                read defin
                                echo $i  "[" $concep "]" ".-"  $defin >> XP.inf
                                echo ""
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu XP"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto xpMenu
                                else
                                exit
                                fi
                                ;;
                        2)
                                clear
                                echo "Buscar"
                                echo "Ingrese la palabra que desea buscar en el archivo: "
                                read pXp
                                egrep --color -R $pXp XP.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu XP"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto xpMenu
                                else
                                exit
                                fi
                                ;;
                        3)
                                clear
                                echo "Eliminar informacion"
                                echo ""
                                echo "Que identificador desea eliminar?"
                                read ident
                                system=`sed -i '/'$ident'/d' XP.inf`
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu XP"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto xpMenu
                                else
                                exit
                                fi
                                ;;
                        4)      
                                clear
                                echo "Leer base de información"
                                cat XP.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu XP"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto xpMenu
                                else
                                exit
                                fi
                                ;;
                        *)
                                echo ""
                                echo "Opción no valida."
                                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                                if [ "$key" = '' ]; then
                                jumpto xpMenu
                                else
                                jumpto xpMenu
                                fi
                                ;;
                        esac
        	;;
        3)	kanbanMenu:
                clear
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
                                clear
                                echo "Agregar información"
                                i=$((i+1))
                                echo "Escribe el identificador del concepto"
                                read concep
                                echo "Escribe la definicion del concepto"
                                read defin
                                echo $i  "[" $concep "]" ".-"  $defin >> Kanban.inf
                                echo ""
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Kanban"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto kanbanMenu
                                else
                                exit
                                fi
                                ;;
                        2)
                                clear
                                echo "Buscar"
                                echo "Ingrese la palabra que desea buscar en el archivo: "
                                read pal
                                egrep --color -R $pal Kanban.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Kanban"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto kanbanMenu
                                else
                                exit
                                fi
                                ;;
                        3)
                                clear
                                echo "Eliminar informacion"
                                echo ""
                                echo "Que identificador desea eliminar?"
                                read ident
                                system=`sed -i '/'$ident'/d' Kanban.inf`
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Kanban"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto kanbanMenu
                                else
                                exit
                                fi
                                ;;
                        4)      
                                clear
                                echo "Leer base de información"
                                cat Kanban.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Kanban"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto kanbanMenu
                                else
                                exit
                                fi
                                ;;
                        *)
                                echo ""
                                echo "Opción no valida."
                                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                                if [ "$key" = '' ]; then
                                jumpto kanbanMenu
                                else
                                jumpto kanbanMenu
                                fi
                                ;;
                        esac
			;;
		4)	crisMenu:
                	clear
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
                                clear
                                echo "Agregar información"
                                i=$((i+1))
                                echo "Escribe el identificador del concepto"
                                read concep
                                echo "Escribe la definicion del concepto"
                                read defin
                                echo $i  "[" $concep "]" ".-"  $defin >> Crystal.inf
                                echo ""
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Crystal"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto crisMenu
                                else
                                exit
                                fi
                                ;;
                        2)
                                clear
                                echo "Buscar"
                                echo "Ingrese la palabra que desea buscar en el archivo: "
                                read pal
                                egrep --color -R $pal Crystal.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Crystal"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto crisMenu
                                else
                                exit
                                fi
                                ;;
                        3)
                                clear
                                echo "Eliminar informacion"
                                echo ""
                                echo "Que identificador desea eliminar?"
                                read ident
                                system=`sed -i '/'$ident'/d' Crystal.inf`
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Crystal"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto crisMenu
                                else
                                exit
                                fi
                                ;;
                        4)      
                                clear
                                echo "Leer base de información"
                                cat Crystal.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Crystal"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto crisMenu
                                else
                                exit
                                fi
                                ;;
                        *)
                                echo ""
                                echo "Opción no valida."
                                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                                if [ "$key" = '' ]; then
                                jumpto crisMenu
                                else
                                jumpto crisMenu
                                fi
                                ;;
                        esac
		;;
	*)
		echo ""
                echo "Opción no valida."
                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                if [ "$key" = '' ]; then
                jumpto guiaAgile
                else
                jumpto guiaAgile
                fi
	esac

elif [ "$a" == "-t" ]; then
	echo "Bienvenido a la guia rapida de metodologias tradicionales, para continuar seleccione un tema"
	echo "1. Cascada"
        echo "2. Espiral"
        echo "3. Modelo V"
	echo "Ingrese la opcion que desea realizar:"
	read opcion
        case $opcion in
        1)      casMenu:
                clear
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
                                clear
                                echo "Agregar información"
                                i=$((i+1))
                                echo "Escribe el identificador del concepto"
                                read concep
                                echo "Escribe la definicion del concepto"
                                read defin
                                echo $i  "[" $concep "]" ".-"  $defin >> Cascada.inf
                                echo ""
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Cascada"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto casMenu
                                else
                                exit
                                fi
                                ;;
                        2)
                                clear
                                echo "Buscar"
                                echo "Ingrese la palabra que desea buscar en el archivo: "
                                read pal
                                egrep --color -R $pal Cascada.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Cascada"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto casMenu
                                else
                                exit
                                fi
                                ;;
                        3)
                                clear
                                echo "Eliminar informacion"
                                echo ""
                                echo "Que identificador desea eliminar?"
                                read ident
                                system=`sed -i '/'$ident'/d' Cascada.inf`
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Cascada"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto casMenu
                                else
                                exit
                                fi
                                ;;
                        4)      
                                clear
                                echo "Leer base de información"
                                cat Cascada.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Cascada"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto casMenu
                                else
                                exit
                                fi
                                ;;
                        *)
                                echo ""
                                echo "Opción no valida."
                                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                                if [ "$key" = '' ]; then
                                jumpto casMenu
                                else
                                jumpto casMenu
                                fi
                                ;;
                        esac
		;;
        2)	espMenu:
                clear
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
                                clear
                                echo "Agregar información"
                                i=$((i+1))
                                echo "Escribe el identificador del concepto"
                                read concep
                                echo "Escribe la definicion del concepto"
                                read defin
                                echo $i  "[" $concep "]" ".-"  $defin >> Espiral.inf
                                echo ""
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Espiral"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto espMenu
                                else
                                exit
                                fi
                                ;;
                        2)
                                clear
                                echo "Buscar"
                                echo "Ingrese la palabra que desea buscar en el archivo: "
                                read pal
                                egrep --color -R $pal Espiral.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Espiral"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto espMenu
                                else
                                exit
                                fi
                                ;;
                        3)
                                clear
                                echo "Eliminar informacion"
                                echo ""
                                echo "Que identificador desea eliminar?"
                                read ident
                                system=`sed -i '/'$ident'/d' Espiral.inf`
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Espiral"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto espMenu
                                else
                                exit
                                fi
                                ;;
                        4)      
                                clear
                                echo "Leer base de información"
                                cat Espiral.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Espiral"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto espMenu
                                else
                                exit
                                fi
                                ;;
                        *)
                                echo ""
                                echo "Opción no valida."
                                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                                if [ "$key" = '' ]; then
                                jumpto espMenu
                                else
                                jumpto espMenu
                                fi
                                ;;
                        esac
                ;;
        3)	modMenu:
                clear
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
                                clear
                                echo "Agregar información"
                                i=$((i+1))
                                echo "Escribe el identificador del concepto"
                                read concep
                                echo "Escribe la definicion del concepto"
                                read defin
                                echo $i  "[" $concep "]" ".-"  $defin >> Modelo.inf
                                echo ""
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Modelo"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto modMenu
                                else
                                exit
                                fi
                                ;;
                        2)
                                clear
                                echo "Buscar"
                                echo "Ingrese la palabra que desea buscar en el archivo: "
                                read pal
                                egrep --color -R $pal Modelo.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Modelo"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto modMenu
                                else
                                exit
                                fi
                                ;;
                        3)
                                clear
                                echo "Eliminar informacion"
                                echo ""
                                echo "Que identificador desea eliminar?"
                                read ident
                                system=`sed -i '/'$ident'/d' Modelo.inf`
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Modelo"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto modMenu
                                else
                                exit
                                fi
                                ;;
                        4)      
                                clear
                                echo "Leer base de información"
                                cat Modelo.inf
                                echo " "
                                echo "Que desea realizar?"
                                echo "1. Regresar al menu Modelo"
                                echo "2. Salir"
                                read numero
                                if [ $numero == 1 ]; then
                                jumpto modMenu
                                else
                                exit
                                fi
                                ;;
                        *)
                                echo ""
                                echo "Opción no valida."
                                read -n1 -s -r -p $'Presione una tecla para continuar...\n' key
                                if [ "$key" = '' ]; then
                                jumpto modMenu
                                else
                                jumpto modMenu
                                fi
                                ;;
                        esac
		;;
        *)
                echo "Selecciono una opción incorrecta"
        esac
fi
