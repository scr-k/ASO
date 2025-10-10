#!/bin/bash

# =============== #
#  IPs LIBRES LAN #
# =============== #

INFORME="ip_libres.txt"

# ---------- FUNCIONES ---------- #

# Detectar red local
detectar_red() {
  local ip=$(hostname -I | awk '{print $1}')
  RED=$(echo "$ip" | cut -d. -f1-3)
  echo "Red detectada: $RED.0/24"
}

# Comprobar IPs activas en la red
comprobar_red() {
  echo "Comprobando IPs activas en la red $RED.0/24..."
  > "$INFORME"
  for i in {1..254}; do
    ip="$RED.$i"
    if ping -c1 -W1 "$ip" &>/dev/null; then
      echo "Ocupada: $ip"
    else
      echo "$ip" >> "$INFORME"
    fi
  done
}

# Mostrar IPs libres
mostrar_libres() {
  echo ""
  echo "IPs libres encontradas:"
  cat "$INFORME"
  echo ""
  echo "Informe guardado en: $INFORME"
}

detectar_red
comprobar_red
mostrar_libres
