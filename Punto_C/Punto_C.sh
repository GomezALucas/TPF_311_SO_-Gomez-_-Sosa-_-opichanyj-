#!/bin/bash
# Punto C - Usuarios y Grupos

# --- Crear grupos ---
groupadd -f g_sysadmin
groupadd -f g_manager
groupadd -f g_dev
groupadd -f g_infra

# --- Generar hashes de contrasena (sha512) ---
HASH_SYSADMIN=$(openssl passwd -6 "u_sysadmin")
HASH_MANAGER=$(openssl passwd -6 "u_manager")
HASH_DEV=$(openssl passwd -6 "u_dev")

# --- Crear usuarios ---
useradd -m -g g_sysadmin -G g_infra -s /bin/bash -p "$HASH_SYSADMIN" u_sysadmin
useradd -m -g g_manager  -G g_infra -s /bin/bash -p "$HASH_MANAGER"  u_manager
useradd -m -g g_dev      -G g_infra -s /bin/bash -p "$HASH_DEV"      u_dev

echo "Usuarios y grupos creados."

# --- Validacion ---
id u_sysadmin >  /home/vagrant/carpeta_compartida/Punto_C/id_output.txt
id u_manager  >> /home/vagrant/carpeta_compartida/Punto_C/id_output.txt
id u_dev      >> /home/vagrant/carpeta_compartida/Punto_C/id_output.txt

echo "id_output.txt guardado:"
cat /home/vagrant/carpeta_compartida/Punto_C/id_output.txt

# ==========================================

#Punto C: De rol DEV.

# Paso 1:
# Crear los grupos principales.

groupadd -f g_sysadmin
groupadd -f g_manager
groupadd -f g_dev

# Paso 2:
# Crear el grupo secundario.

groupadd -f g_infra

# Paso 3:
# Generar el hash de las contraseñas.

PASS_SYSADMIN=$(openssl passwd -6 "u_sysadmin")
PASS_MANAGER=$(openssl passwd -6 "u_manager")
PASS_DEV=$(openssl passwd -6 "u_dev")

# Paso 4:
# Crear los usuarios.

useradd -m -g g_sysadmin -G g_infra -s /bin/bash -p "$PASS_SYSADMIN" u_sysadmin

useradd -m -g g_manager -G g_infra -s /bin/bash -p "$PASS_MANAGER" u_manager

useradd -m -g g_dev -G g_infra -s /bin/bash -p "$PASS_DEV" u_dev

# Paso 5:
# Mostrar la información de cada usuario.

id u_sysadmin > /home/vagrant/carpeta_compartida/Punto_C/id_output.txt
id u_manager >> /home/vagrant/carpeta_compartida/Punto_C/id_output.txt
id u_dev >> /home/vagrant/carpeta_compartida/Punto_C/id_output.txt
