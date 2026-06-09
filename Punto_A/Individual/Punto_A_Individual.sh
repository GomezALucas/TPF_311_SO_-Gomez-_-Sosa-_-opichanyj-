#!/bin/bash
# Punto A - Parte Individual - Rol: sysadmin
# Crea la estructura de directorios con un único comando usando llaves

mkdir -p ~/sysadmin/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# Git no sube directorios vacíos → crear un .gitkeep en cada hoja
touch ~/sysadmin/Servicios/Web/.gitkeep
touch ~/sysadmin/Servicios/Base_de_Datos/.gitkeep
touch ~/sysadmin/Servicios/Cache/.gitkeep
touch ~/sysadmin/Monitoreo/Logs/.gitkeep
touch ~/sysadmin/Monitoreo/Alertas/.gitkeep
touch ~/sysadmin/Monitoreo/Metricas/.gitkeep

# Validación
tree ~/sysadmin/
