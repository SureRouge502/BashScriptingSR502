#!/bin/bash

#installation
clear
echo Run the installation file In Sudo/SuperUser mode -Ignore If already In SU mode 
echo -----------------------------------------------------------------------------------------------------------
echo
sleep 2
apt install net-tools -y &&
apt install netcat -y
echo
echo
echo -----------------------------------------------------------------------------------------------------------
echo
echo
echo Installation Done
echo
echo You can now run linuxchat using command using ./linuxchat.sh
echo 
echo Complete.

