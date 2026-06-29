#!/bin/bash

# Punto A - Parte Individual - Rol: dev

mkdir -p dev/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# Crear un .gitkeep en cada carpeta hoja

touch dev/Servicios/Web/.gitkeep \
dev/Servicios/Base_de_Datos/.gitkeep \
dev/Servicios/Cache/.gitkeep \
dev/Monitoreo/Logs/.gitkeep \
dev/Monitoreo/Alertas/.gitkeep \
dev/Monitoreo/Metricas/.gitkeep

# Validación
tree ~/dev/
