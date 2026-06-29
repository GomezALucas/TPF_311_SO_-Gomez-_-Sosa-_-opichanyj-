
#!/bin/bash
# Script para particionar /dev/sdb
echo "Iniciando particionamiento..."

# El comando 'o' crea una nueva tabla de particiones DOS, borrando todo lo anterior
sudo fdisk /dev/sdb << EOF
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

+2.5G
n
l

+2.5G
n
l


w
EOF

# IMPORTANTE: Informar al kernel sobre los cambios
echo "Esperando a que el kernel reconozca las particiones..."
sudo partprobe /dev/sdb
sleep 5 

echo "Formateando particiones..."
sudo mkfs.ext4 /dev/sdb1
sudo mkfs.ext4 /dev/sdb2
sudo mkfs.ext4 /dev/sdb5
sudo mkfs.ext4 /dev/sdb6
sudo mkfs.ext4 /dev/sdb7

echo "Proceso finalizado."


#parte manager
# Script de Particionamiento y Formateo Unificado
# Dispositivo: /dev/sdc

# 1. Crear tabla de particiones (Una sola vez)
# Usamos un único bloque fdisk para todo el disco
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

# 2. Refrescar tabla de particiones
echo "Esperando al kernel..."
partprobe /dev/sdc
sleep 3

# 3. Formatear las particiones
echo "Formateando particiones..."
mkfs.ext4 -F /dev/sdc1
mkfs.ext4 -F /dev/sdc2
mkfs.ext4 -F /dev/sdc5
mkfs.ext4 -F /dev/sdc6
mkfs.ext4 -F /dev/sdc7

echo "--- Proceso completado ---"
lsblk /dev/sdc
