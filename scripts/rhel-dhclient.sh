#!/bin/bash
# The aim of this script is to configure Alstom DNS search servers to a VMs running RHEL 7.x 
# Set dhclient.conf configuration
sudo touch /etc/dhcp/dhclient.conf
sudo echo "# Alstom DNS search servers" > /etc/dhcp/dhclient.conf
sudo echo "supersede domain-search 'reddog.microsoft.com', 'tnext.loc', 'alstom.hub';" >> /etc/dhcp/dhclient.conf
