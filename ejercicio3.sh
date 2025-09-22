#!/bin/bash

ls -l /etc > listado-etc.txt
cat listado-etc.txt

# wc --> cuenta.
# Con -l --> cuenta lineas (lines)
echo "Total de lineas: $(wc -l < listado-etc.txt)"

# Con -w --> Cuenta palabras (words)
echo "Total palabras:  $(wc -w < listado-etc.txt)"

# para que el recuento entre en la linea de echo:
#	- Acompañamos con $ como prefijo
#	- El resto de la instrucción, dentro de paréntesis
