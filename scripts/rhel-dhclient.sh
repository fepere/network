#!/bin/bash
# The aim of this script is to configure Alstom DNS search servers to a VMs running RHEL 7.x 
# Set dhclient.conf configuration
cat << EOF > /etc/dhcp/dhclient.conf
supersede domain-search "reddog.microsoft.com", "tnext.loc", "alstom.hub";
EOF
