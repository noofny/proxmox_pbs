#!/bin/bash


echo "Setup ProxmoxBackupServer : begin"


# locale
echo "Fixing locale..."
LOCALE_VALUE="en_AU.UTF-8"
locale-gen ${LOCALE_VALUE}
source /etc/default/locale
update-locale ${LOCALE_VALUE}

# https://pbs.proxmox.com/docs/installation.html#install-proxmox-backup-server-on-debian


echo "Fetching package key..."
wget https://enterprise.proxmox.com/debian/proxmox-release-bookworm.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg

echo "Adding package repos..."
echo 'deb http://download.proxmox.com/debian/pbs bookworm pbs-no-subscription' >> /etc/apt/sources.list

echo "Executing installer..."
apt update && apt install proxmox-backup-server
# apt update && apt install proxmox-backup



echo "You can access the console at http://$(hostname -I):8007/"
echo "Setup ProxmoxBackupServer : complete"
