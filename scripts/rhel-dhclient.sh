#!/bin/bash
# The aim of this script is to configure Alstom DNS search servers to a VMs running RHEL 7.x 
# Set dhclient.conf configuration
sudo touch /etc/dhcp/dhclient.conf
sudo cat << EOF > /etc/dhcp/dhcliet.conf
# Alstom DNS search servers
supersede domain-search "reddog.microsoft.com", "tnext.loc", "alstom.hub";
EOF
sudo ls -l /etc/dhcp/dhclient.conf
