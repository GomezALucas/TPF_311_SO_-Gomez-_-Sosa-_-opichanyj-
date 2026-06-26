#!/bin/bash

# Punto D - Rol: Dev

# Servicios (notación octal)
chmod 755 ~/dev/Servicios/Web
chmod 700 ~/dev/Servicios/Base_de_Datos
chmod 644 ~/dev/Servicios/Cache

# Monitoreo (notación simbólica)
chmod u=rwx,g=rx,o=r ~/dev/Monitoreo/Logs
chmod u=rwx,g=,o= ~/dev/Monitoreo/Alertas
chmod u=rwx,g=rx,o=rx ~/dev/Monitoreo/Metricas

# Validación
ls -ld ~/dev/Servicios/* > Punto_D/permisos_output.txt
ls -ld ~/dev/Monitoreo/* >> Punto_D/permisos_output.txt

cat Punto_D/permisos_output.txt
