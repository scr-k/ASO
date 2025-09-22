#!/bin/bash

read -p "Inroduce un número: " num1
read -p "Introduce otro número: " num2

media=$(( (num1 + num2) / 2 ))

echo "La media aritmética es: $media"
