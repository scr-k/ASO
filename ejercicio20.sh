#!/bin/bash

num=$1

for ((i=2; i*i<=num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
        echo "$num no es primo"
        exit 0
    fi
done

echo "$num es primo"
