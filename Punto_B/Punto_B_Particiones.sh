#!/bin/bash
# Punto B - Parte 1: Particionamiento del disco /dev/sdb (10 GB)
# Esquema:
#   sdb1 -> primaria  1 GB
#   sdb2 -> primaria  1 GB
#   sdb3 -> extendida (resto ~8 GB)
#   sdb5 -> logica ~2.67 GB
#   sdb6 -> logica ~2.67 GB
#   sdb7 -> logica ~2.67 GB

# Crear tabla de particiones con heredoc (sin intervencion manual)
fdisk /dev/sdb << EOF
o
n
p
1

+1G
n
p
2

+1G
n
e
3


n


n


n


w
EOF

# Esperar a que el kernel registre las nuevas particiones
partprobe /dev/sdb
sleep 2

# Formatear todas las particiones con ext4
mkfs.ext4 -F /dev/sdb1
mkfs.ext4 -F /dev/sdb2
mkfs.ext4 -F /dev/sdb5
mkfs.ext4 -F /dev/sdb6
mkfs.ext4 -F /dev/sdb7

echo "Particionamiento y formateo completados."
lsblk /dev/sdb
