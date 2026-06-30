#!/bin/bash
# Punto E - Filtros Basicos
# Extrae RAM total y modelo/frecuencia de CPU usando awk

OUTPUT="/home/vagrant/carpeta_compartida/Punto_E/Filtro_basico.txt"

# --- Total de memoria RAM (desde /proc/meminfo) ---
RAM_TOTAL=$(awk '/^MemTotal/{print $2, $3}' /proc/meminfo)

# --- Modelo del procesador (desde /proc/cpuinfo) ---
CPU_MODEL=$(awk -F': ' '/^model name/{print $2; exit}' /proc/cpuinfo)

# --- Frecuencia del procesador en MHz (desde /proc/cpuinfo) ---
CPU_FREQ=$(awk -F': ' '/^cpu MHz/{printf "%.2f MHz\n", $2; exit}' /proc/cpuinfo)

# --- Escribir el archivo de salida ---
cat > "$OUTPUT" << EOF
Total de memoria RAM: $RAM_TOTAL
Modelo del microprocesador: $CPU_MODEL
Frecuencia del microprocesador: $CPU_FREQ
EOF

echo "Filtro_basico.txt generado:"
cat "$OUTPUT"
