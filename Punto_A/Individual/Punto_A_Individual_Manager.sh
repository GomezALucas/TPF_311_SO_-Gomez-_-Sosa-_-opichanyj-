#!/bin/bash
# Punto A - Parte Individual - Rol: sysadmin

# Crear la estructura de directorios usando expansión de llaves
mkdir -p ~/manager/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# Crear un .gitkeep en cada carpeta hoja
touch ~/manager/Servicios/Web/.gitkeep
touch ~/manager/Servicios/Base_de_Datos/.gitkeep
touch ~/manager/Servicios/Cache/.gitkeep
touch ~/manager/Monitoreo/Logs/.gitkeep
touch ~/manager/Monitoreo/Alertas/.gitkeep
touch ~/manager/Monitoreo/Metricas/.gitkeep

# Validación
tree ~/manager/
