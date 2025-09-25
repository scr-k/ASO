#!/bin/bash

echo "==========="
echo " TU AGENDA "
echo "==========="
echo ""
echo "¿Qué quieres hacer?"
echo ""
echo "1) Añadir un contacto"
echo "2) Buscar entrada"
echo "3) Listar agenda"
echo "4) Ordenar registros alfabéticamente"
echo "5) Borrar el archivo"
echo ""

read -p "Introduce una opción (1-5): " opcion

case $opcion in
	1) 
		read -p "Introduce el nombre: " nombre
		read -p "Introduce el teléfono: " numtlf
		read -p "Introduce dirección: " direccion

		echo "$nombre, $numtlf, $direccion" >> agenda.txt
		;;
	2)
		read -p "Introduce valor a buscar: " busca
		cat agenda.txt | grep $busca
		;;
	3)
		cat agenda.txt
		;;
	4)
		sort agenda.txt
		;;
	5)
		rm agenda.txt
		;;
	*)
		echo "Error: Valor no válido"
		echo "Introduce un valor del 1 al 5"
		;;
esac
