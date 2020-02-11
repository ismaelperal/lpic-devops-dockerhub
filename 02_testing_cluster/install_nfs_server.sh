#!/bin/bash

## NFS Server for sharing volumes between cluster nodes

apt install nfs-kernel-server
mkdir -m 1777 /srv/nfs
echo '/srv/nfs *(rw,no_root_squash,no_subtree_check)' >> /etc/exports
Acuerdate: systemctl restart nfs-kernel-server
echo '192.168.20.216 (rw,no_root_squash,no_subtree_check) 192.168.20.217 (rw,no_root_squash,no_subtree_check) 192.168.20.218 (rw,no_root_squash,no_subtree_check)' > /etc/export 