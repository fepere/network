#!/bin/sh
# "update Ubuntu netplan configuration file..."
sudo touch /etc/netplan/99-custom-dns.yaml
sudo wget https://raw.githubusercontent.com/fepere/network/master/scripts/99-custom-dns.yaml -O /etc/netplan/99-custom-dns.yaml
sudo netplan apply
sudo systemd-resolve --status
