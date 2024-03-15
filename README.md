# ProxmoxBackupServer on Proxmox

<p align="center">
    <img height="200" alt="Proxmox Logo" src="img/logo_proxmox.png">
</p>

Create a [ProxMox](https://www.proxmox.com/en/) LXC running Debian and [Proxmox Backup Server](https://www.proxmox.com/en/proxmox-backup-server/overview).

Tested on ProxMox v8, Debian 12, PBS 3.1.

## Usage

SSH to your Proxmox server as a privileged user and run...

```shell
bash -c "$(wget --no-cache -qLO - https://raw.githubusercontent.com/noofny/proxmox_pbs/master/setup.sh)"
```
