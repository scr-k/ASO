#!/bin/bash

suma_while=0
i=1
while [ $i -le 1000 ]; do
    suma_while=$((suma_while + i))
    i=$((i + 1))
done
echo "Suma con while: $suma_while"
