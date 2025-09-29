#!/bin/bash

num1=$((RANDOM % 100 + 1))

echo "===================="
echo " ADIVINA EL NÚMERO "
echo "===================="

while true; do
read -p "Introduce número (0 para rendirse): " num2

if [ "$num2" -eq 0 ]; then
	echo "Te has rendido. ¡Suerte a la próxima!"
	break
fi

if [ "$num1" -eq "$num2" ]; then
	echo "¡ENHORABUENA, HAS ACERTADO!"
	echo "Número secreto: $num1"
	break
fi

if [ "$num2" -lt "$num1" ]; then
	echo "¡Prueba más alto!"
else
	echo "¡Prueba más bajo!"
fi

done
