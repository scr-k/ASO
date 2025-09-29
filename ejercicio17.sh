#!/bin/bash

suma=0

while true; do
	read -p "Introduce un número (0 para salir): " num1
		if [ "$num" -eq 0 ]; then
		echo "Suma total: $suma"
		break
	fi
	suma=$((num1 + num1))
	echo "Suma parcial: $suma"
done
