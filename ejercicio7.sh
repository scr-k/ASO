#!/bin/bash

read -p "Directorio a comprimir: " DIR

fecha=$(date +%F)

nombreArchivo="${fecha}_$(basename   "$DIR").tar.gz"

tar -czf "nombreArchivo" "$DIR"

echo "Archivo $nombreArchivo creado"
