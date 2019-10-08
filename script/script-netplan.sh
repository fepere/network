#!/bin/sh
# "Updating packages ..."
##sudo apt-get update
##sudo apt-get upgrade -y

# update the dns config file
sudo touch /etc/netplan/99-custom-dns.yaml
sudo wget https://raw.githubusercontent.com/fepere/network/master/config/99-custom-dns.yaml -O /etc/netplan/99-custom-dns.yaml
sudo netplan apply
sudo systemd-resolve --status
