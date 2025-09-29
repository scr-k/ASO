#!/bin/bash

# PARA ESTE EJERCICIO SE DEBE INSTALR: tree
# sudo apt-get install tree

dir=$1

if [ ! -d "$dir" ]; then
	echo "$dir no es un directorio válido"
	exit 1
fi

echo "Listado de archivos de $dir : "
tree $dir

