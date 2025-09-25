#!/bin/bash

read -p "Introduce un número: " num1
read -p "Introduce otro número: " num2

if [ "$num1" -gt "$num2" ]; then
	echo "$num1 es mayor que $num2"
elif [ "$num2" -gt "$num1" ]; then
	echo "$num2 es mayor que $num1"
elif [ "$num1" -eq "$num2" ]; then
	echo "Los números son iguales"
else
	echo "No has introducido un número. VUelve a Intentarlo"
fi
