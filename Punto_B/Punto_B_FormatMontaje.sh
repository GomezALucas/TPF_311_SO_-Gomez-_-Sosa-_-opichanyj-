#!/bin/bash
# Punto B - Parte 2: Montaje persistente via /etc/fstab
# Rol: sysadmin
#
# Mapa de montaje:
#   sdc1 -> ~/sysadmin/Servicios/
#   sdc2 -> ~/sysadmin/Monitoreo/
#   sdc5 -> ~/sysadmin/Servicios/Web/
#   sdc6 -> ~/sysadmin/Servicios/Cache/
#   sdc7 -> ~/sysadmin/Monitoreo/Logs/

# Obtener el home del usuario vagrant
ROL_DIR="/home/vagrant/sysadmin"

# Asegurarse de que los puntos de montaje existen
mkdir -p "$ROL_DIR/Servicios/Web"
mkdir -p "$ROL_DIR/Servicios/Cache"
mkdir -p "$ROL_DIR/Monitoreo/Logs"

# Obtener UUIDs de las particiones
UUID_SDB1=$(blkid -s UUID -o value /dev/sdc1)
UUID_SDB2=$(blkid -s UUID -o value /dev/sdc2)
UUID_SDB5=$(blkid -s UUID -o value /dev/sdc5)
UUID_SDB6=$(blkid -s UUID -o value /dev/sdc6)
UUID_SDB7=$(blkid -s UUID -o value /dev/sdc7)

# Backup del fstab
cp /etc/fstab /etc/fstab.bak

# Agregar entradas al fstab
cat >> /etc/fstab << EOF

# --- Punto B: Montaje TP Final - sysadmin ---
UUID=$UUID_SDB1  $ROL_DIR/Servicios          ext4  defaults  0  2
UUID=$UUID_SDB2  $ROL_DIR/Monitoreo          ext4  defaults  0  2
UUID=$UUID_SDB5  $ROL_DIR/Servicios/Web      ext4  defaults  0  2
UUID=$UUID_SDB6  $ROL_DIR/Servicios/Cache    ext4  defaults  0  2
UUID=$UUID_SDB7  $ROL_DIR/Monitoreo/Logs     ext4  defaults  0  2
EOF

# Montar todo
mount -a

echo "Montaje completado. Estado actual:"
df -h | grep sdc

# Guardar output para el repo
df -h > /home/vagrant/carpeta_compartida/Punto_B/df_output_sysadmin.txt
echo "df_output_sysadmin.txt guardado."
