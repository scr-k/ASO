#!/bin/bash

find "$(pwd)" -type f -perm -o=w -print > archivos_peligrosos.txt
