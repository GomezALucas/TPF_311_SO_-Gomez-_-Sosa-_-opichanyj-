#!/bin/bash

groupadd g_infra
groupadd g_sysadmin
groupadd g_manager
groupadd g_dev

useradd -m -s /bin/bash -g g_sysadmin -G g_infra u_sysadmin
useradd -m -s /bin/bash -g g_manager -G g_infra u_manager
useradd -m -s /bin/bash -g g_dev -G g_infra u_dev

echo "Usuarios creados"
