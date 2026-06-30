#!/bin/bash

OUTPUT="Punto_E/Filtro_basico.txt"

# limpiar archivo
> $OUTPUT

echo "=== MEMORIA RAM TOTAL ===" >> $OUTPUT
grep MemTotal /proc/meminfo >> $OUTPUT

echo "" >> $OUTPUT
echo "=== CPU MODELO ===" >> $OUTPUT
grep "model name" /proc/cpuinfo | head -1 >> $OUTPUT

echo "" >> $OUTPUT
echo "=== FRECUENCIA CPU ===" >> $OUTPUT
grep "cpu MHz" /proc/cpuinfo | head -1 >> $OUTPUT

echo "Archivo generado correctamente"
