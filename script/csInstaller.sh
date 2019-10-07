#!/bin/bash
# ----------------------------------------------------------
# Author:    Santanu Sengupta
# Date:      6th Dec 2018
# Author:    Miroslav Dimitrov (Kernel revert part)
# Date:      23rd Jan 2019
# Comments:  Falcon Sensor Installer
# ----------------------------------------------------------
OSTYPE=$1
FALCONCID=$2

echo "################################################################" >> /var/tmp/CSfalcon.log
echo "Deployment date and Time: `date`" >> /var/tmp/CSfalcon.log
echo "################################################################" >> /var/tmp/CSfalcon.log

echo "################################################################" >> /var/tmp/kernelrevert.log
echo "Deployment date and Time: `date`" >> /var/tmp/kernelrevert.log
echo "################################################################" >> /var/tmp/kernelrevert.log

# Setting variables
BlobURL="https://dxcazuretools.blob.core.windows.net/installers/KernalSensors/"
DrBlobURL="https://dxcazuretoolsdr.blob.core.windows.net/installers/KernalSensors/"

if [[ $1 == ubuntuserver* ]]; then
	FALCONRPM="falcon-sensor_4.16.0-6101_amd64.deb"
	echo "IF $1 == ubuntuserver*" >> /var/tmp/CSfalcon.log
elif [ $1 ==  'suse' ]; then
    FALCONRPM="falcon-sensor-4.16.0-6101.suse12.x86_64.rpm"
elif [ $1 ==  'rhel6' ] || [ $1 ==  'centos6' ]; then
    FALCONRPM="falcon-sensor-4.21.0-6705.el6.x86_64.rpm"	
else
	FALCONRPM="falcon-sensor-4.21.0-6705.el7.x86_64.rpm"
fi

echo "OS Type Selected: $OSTYPE" >> /var/tmp/CSfalcon.log
echo "Falcon RPM Selected: $FALCONRPM" >> /var/tmp/CSfalcon.log
