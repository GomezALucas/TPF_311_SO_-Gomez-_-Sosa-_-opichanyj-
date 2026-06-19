#!/bin/bash
# Punto A - Parte Grupal - Rol: sysadmin - Continente: America/
# INSTRUCCIONES DE USO:
#   - El sysadmin corre este script PRIMERO, luego commitea y pushea.
#   - El manager hace pull, corre su script, commitea y pushea.
#   - El dev repite lo mismo.

mkdir -p /Continentes/America/{Canada/{Ontario,BritishColumbia,Quebec},Mexico/{CiudadDeMexico,Jalisco},Colombia/Bogota}

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
# --- PARTE MANAGER - Continente: Europa ---
# Estructura: 3 países con 1 a 3 ciudades cada uno
mkdir -p /Continentes/Europa/{Espana/{Madrid,Barcelona,Valencia},Italia/{Roma,Milan},Francia/{Paris}}

# Crear los .gitkeep en las carpetas hoja
touch /Continentes/Europa/Espana/Madrid/.gitkeep
touch /Continentes/Europa/Espana/Barcelona/.gitkeep
touch /Continentes/Europa/Espana/Valencia/.gitkeep
touch /Continentes/Europa/Italia/Roma/.gitkeep
touch /Continentes/Europa/Italia/Milan/.gitkeep
touch /Continentes/Europa/Francia/Paris/.gitkeep

# --- PARTE DEV - Continente: Asia ---
# Estructura: 3 países con distribución asimétrica 3-2-1

mkdir -p /Continentes/Asia/{Japon/{Tokio,Osaka,Kioto},China/{Pekin,Shanghai},CoreaDelSur/Seul}

touch /Continentes/Asia/Japon/Tokio/.gitkeep
touch /Continentes/Asia/Japon/Osaka/.gitkeep
touch /Continentes/Asia/Japon/Kioto/.gitkeep
touch /Continentes/Asia/China/Pekin/.gitkeep
touch /Continentes/Asia/China/Shanghai/.gitkeep
touch /Continentes/Asia/CoreaDelSur/Seul/.gitkeep

# Validación
tree /Continentes/
