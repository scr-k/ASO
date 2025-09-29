#!/bin/bash

dir="$1"

if [ ! -d "$dir" ]; then
    echo "Error: $dir no es un directorio válido"
    exit 1
fi

# Contar ficheros (no recursivo)
num_ficheros=$(find "$dir" -maxdepth 1 -type f | wc -l)

# Contar subdirectorios (no recursivo, sin contar el propio)
num_subdir=$(find "$dir" -maxdepth 1 -type d | wc -l)
num_subdir=$((num_subdir - 1))


echo "Directorio analizado: $dir"
echo "Número de ficheros: $num_ficheros"
echo "Número de subdirectorios: $num_subdir"
