#!/bin/bash

AGENDA="agenda.csv"

# Comprbaciones/Revisiones:
RE_TLF='^[0-9 +()-]{6,20}$'
RE_EMAIL='^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'

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

# Teléfono: validar si no vacío
while true; do
	read -r -p "Teléfono [$tlf_actual]: " telefono
		[ -z "$telefono" ] && telefono="$tlf_actual"
	if [[ $telefono =~ $RE_TLF ]]; then
		break
	else
		echo "Teléfono no válido. Prueba de nuevo."
	fi
done

# Email: validar
while true; do
	read -r -p "Email [$email_actual]: " email
		[ -z "$email" ] && email="$email_actual"
	if [[ $email =~ $RE_EMAIL ]]; then
		break
	else
		echo "Email no válido. Prueba de nuevo."
fi
done

		printf '%s;%s;%s\n' "$nombre" "$telefono" "$email" >> "$AGENDA"
		echo "Contacto Añadido"
		;;
	2)
		read -p "Introduce valor a buscar: " busca
		cat $AGENDA | grep $busca
		;;
	3)
		cat $AGENDA
		;;
	4)
		sort $AGENDA
		;;
	5)
		rm $AGENDA
		;;
	*)
		echo "Error: Valor no válido"
		echo "Introduce un valor del 1 al 5"
		;;
esac
