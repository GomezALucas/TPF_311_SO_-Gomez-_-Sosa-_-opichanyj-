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
fdisk /dev/sdc << EOF
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
l

+2600M
n
l

+2600M
n
l


w
EOF

# Esperar a que el kernel registre las nuevas particiones
partprobe /dev/sdc
sleep 2

# Formatear todas las particiones con ext4
mkfs.ext4 -F /dev/sdc1
mkfs.ext4 -F /dev/sdc2
mkfs.ext4 -F /dev/sdc5
mkfs.ext4 -F /dev/sdc6
mkfs.ext4 -F /dev/sdc7

echo "Particionamiento y formateo completados."
lsblk /dev/sdc


#Particiones del rol dev:
#estructura:
#sdc1 -> primaria 1GB
#sdc2 -> primaria 1GB
#sdc3 -> extendida 8GB (resto ~8 GB)
#sdc4 -> logica ~2.6 GB
#sdc5 -> logica ~2.6 GB
#sdc6 -> logica ~2.6 GB


fdisk /dev/sdc << EOF

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

+2600M
n

+2600M
n


w
EOF

#el kernel registre las nuevas particiones
partprobe /dev/sdc
sleep 2


mkfs.ext4 -F /dev/sdc1
mkfs.ext4 -F /dev/sdc2
mkfs.ext4 -F /dev/sdc5
mkfs.ext4 -F /dev/sdc6
mkfs.ext4 -F /dev/sdc7

echo "Particiones creadas y formateo correctamente."

lsblk /dev/sdc





















