#!/bin/bash

#	este formate de fecha devuelve HHMMSS
hora=$(date +"%H%M%S")

if [ "$hora" -ge 080000 ] && [ "$hora" -le 150000 ]; then
	echo "Buenos días"
elif [ "$hora" -gt 150000 ] && [ "$hora" -lt 200000 ]; then
	echo "Buenas tardes"
else
	echo "Buenas noches"
fi
