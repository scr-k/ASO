#!/bin/bash

# $# cuenta los parametros introducidos.
if [ $# -ne 2 ]; then
	echo "Error: Se deben introducir 2 parámetros"
	exit 1
fi

origen=$1
destino=$2

# Comprueba que exista el origen
if [ ! -f "$origen" ]; then
	echo "Error: El fichero de origen $origen no existe"
	exit 2
fi

# Comprueba si el destino ya existe
if [ -e "$destino" ]; then
	echo "Error: Ya existe el fichero o directorio $destino"
	exit 3
fi

# Si existe el origen y no el destino, se crea una copia
cp "$origen" "$destino"
echo "Copia realizada, $origen se ha copiado a $destino"
