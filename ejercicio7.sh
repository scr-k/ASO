#!/bin/bash

fecha=$(date +"%Y-%m-%d")

# Quitar la ruta y dejar solo el nombre del directorio
nombre_dir=$(basename "$dir")

# Nombre final del archivo tar.gz
archivo="${fecha}_${nombre_dir}.tar.gz"

# Crear el archivo comprimido
tar -czf "$archivo" "$dir"

echo "Archivo creado: $archivo"
