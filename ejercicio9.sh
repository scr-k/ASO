#!/bin/bash

echo "==============="
echo "  Calculadora  "
echo "==============="

echo "1) Suma"
echo "2) Resta"
echo "3) División"
echo "4) Multiplicación"

read -p "Elije una opción para operar (1-4): " opcion

read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2

case $opcion in
1)
	resultado=$((num1 + num2))
	echo "Los números suman $resultado"
	;;
2)
	resultado=$((num1 - num2))
	echo "La resta deja $resultado"
	;;
3)
	resultado=$((num1 / num2))
	echo "La división es $resultado"
	;;
4)
	resultado=$((num1 * num2))
	echo "La multiplicación da $resultado"
	;;
*)
	echo "Error: Opción no válida"
	;;
esac
