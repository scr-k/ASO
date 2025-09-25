#!/bin/bash

echo "Alta y baja de usuarios"

echo ""
echo "1) Dar de alta un usuario"
echo "2) Dar de baja un usuario"
echo ""
read -p "Introduce una opcion: " opcion
echo ""

case $opcion in
	1)
		read -p "Introduce nombre: " nombre
		read -p "Introduce primer apellido: " apellido1
		read -p "Introduce segundo apellido: " apellido2
		read -p "Introduce un grupo a asignar: " grupo

		iniap1=$(echo "$apellido1" | cut -c1-2)
		iniap2=$(echo "$apellido2" | cut -c1-2)
		ininom=$(echo "$nombre" | cut -c1-1)

		idusuario="$iniap1$iniap2$ininom"

		sudo adduser "$idusuario"

		if [ -z "$grupo" ]; then
			sudo groupadd "$idusuario"
			sudo usermod -aG "$idusuario" "$idusuario"
		else
			sudo usermod -aG "$grupo"
		fi
		;;
	2)
		# No sé cómo hacer esta parte
		;;
	*)
		echo "Opción no válida"
		;;
esac
