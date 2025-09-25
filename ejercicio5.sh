#!/bin/bash

read -p "Introduce un número: " num1
read -p "Introduce otro número: " num2

media=$(( $num1 + $num2 ) /2 )
echo "$media"
