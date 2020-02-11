#!/bin/bash

apt install nfs-client
mkdir /srv/docker
echo '192.168.20.218:/srv/nfs    /srv/docker    nfs   defaults,_netdev,soft,intr 0 0' >> /etc/fstab
mount -a