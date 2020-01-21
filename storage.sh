#!/bin/bash
sudo apt-get update
sudo apt install nfs-kernel-server -y
sudo mkdir -p /data
sudo chown nobody:nogroup /data
sudo chmod 777 /data
sudo cat > /etc/exports <<EOF
/data 192.168.2.0/24(rw,sync,no_subtree_check) 192.168.1.0/24(rw,sync,no_subtree_check)
EOF
sudo exportfs -a
sudo systemctl restart nfs-kernel-server
