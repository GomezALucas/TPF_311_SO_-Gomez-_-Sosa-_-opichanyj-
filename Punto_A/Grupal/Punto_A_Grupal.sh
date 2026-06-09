#!/bin/bash
# Punto A - Parte Grupal - Rol: sysadmin - Continente: America/
# INSTRUCCIONES DE USO:
#   - El sysadmin corre este script PRIMERO, luego commitea y pushea.
#   - El manager hace pull, corre su script, commitea y pushea.
#   - El dev repite lo mismo.

mkdir -p /Continentes/America/{Canada/{Ontario,BritishColumbia,Quebec},Mexico/{CiudadDeMexico,Jalisco},Colombia/{Bogota}}

# Distribución asimétrica:
#   Canada  - 3 provincias/ciudades
#   Mexico  - 2 ciudades
#   Colombia - 1 ciudad

#crear un .gitkeep en cada hoja
touch /Continentes/America/Canada/Ontario/.gitkeep
touch /Continentes/America/Canada/BritishColumbia/.gitkeep
touch /Continentes/America/Canada/Quebec/.gitkeep
touch /Continentes/America/Mexico/CiudadDeMexico/.gitkeep
touch /Continentes/America/Mexico/Jalisco/.gitkeep
touch /Continentes/America/Colombia/Bogota/.gitkeep

# Validación
tree /Continentes/
