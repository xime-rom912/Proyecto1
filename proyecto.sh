#!/bin/bash

a=$1

if [ "$a" == "-a" ]; then
	echo "Bienvenido a la guia rapida de Agile, para continuar seleccione un tema"
	echo ""
elif [ "$a" == "-t" ]; then
	echo "Bienvenido a la guia rapida de metodologias tradicionales, para continuar seleccione un tema"
fi
