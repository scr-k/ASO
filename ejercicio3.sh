#!/bin/bash

listado_etc="lista-etc.txt"

ls -l > "$listado_etc"
cat "$listado_etc"

num_lineas=$(wc -l < "$listado_etc")
num_palabras=$(wc -w < "$listado_etc")

echo "Número de líneas: $num_lineas"
echo "Número de palabras: $num_palabras"
