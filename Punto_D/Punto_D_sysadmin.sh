#!/bin/bash
# Punto D - Permisos
# Rol: sysadmin

ROL_DIR="/home/vagrant/sysadmin"

# -------------------------------------------------------
# Servicios - notacion OCTAL
# -------------------------------------------------------
# Web/           -> 755 (rwxr-xr-x)
chmod 755 "$ROL_DIR/Servicios/Web"

# Base_de_Datos/ -> 700 (rwx------)
chmod 700 "$ROL_DIR/Servicios/Base_de_Datos"

# Cache/         -> 644 (rw-r--r--)
chmod 644 "$ROL_DIR/Servicios/Cache"

# -------------------------------------------------------
# Monitoreo - notacion SIMBOLICA
# -------------------------------------------------------
# Logs/     -> u=rwx, g=rx, o=r
chmod u=rwx,g=rx,o=r "$ROL_DIR/Monitoreo/Logs"

# Alertas/  -> u=rwx, g=,   o=
chmod u=rwx,g=,o= "$ROL_DIR/Monitoreo/Alertas"

# Metricas/ -> u=rwx, g=rx, o=rx
chmod u=rwx,g=rx,o=rx "$ROL_DIR/Monitoreo/Metricas"

echo "Permisos aplicados."

# --- Validacion ---
ls -la "$ROL_DIR/Servicios/"  >  /home/vagrant/carpeta_compartida/Punto_D/permisos_output.txt
ls -la "$ROL_DIR/Monitoreo/" >> /home/vagrant/carpeta_compartida/Punto_D/permisos_output.txt

echo "permisos_output.txt guardado:"
cat /home/vagrant/carpeta_compartida/Punto_D/permisos_output.txt
