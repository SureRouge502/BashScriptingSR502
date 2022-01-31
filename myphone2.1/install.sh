#!/bin/bash

#Intro
clear
echo
echo
echo ──────▄▀▄─────▄▀▄
echo ─────▄█░░▀▀▀▀▀░░█▄
echo ─▄▄──█░░░░░░░░░░░█──▄▄
echo █▄▄█─█░░▀░░┬░░▀░░█─█▄▄█
echo
echo ░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗
echo ░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝
echo ░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░
echo ░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░
echo ░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗
echo ░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝

echo ░██████╗██╗░░░██╗██████╗░███████╗██████╗░░█████╗░██╗░░░██╗░██████╗░███████╗███████╗░█████╗░██████╗░
echo ██╔════╝██║░░░██║██╔══██╗██╔════╝██╔══██╗██╔══██╗██║░░░██║██╔════╝░██╔════╝██╔════╝██╔══██╗╚════██╗
echo ╚█████╗░██║░░░██║██████╔╝█████╗░░██████╔╝██║░░██║██║░░░██║██║░░██╗░█████╗░░██████╗░██║░░██║░░███╔═╝
echo ░╚═══██╗██║░░░██║██╔══██╗██╔══╝░░██╔══██╗██║░░██║██║░░░██║██║░░╚██╗██╔══╝░░╚════██╗██║░░██║██╔══╝░░
echo ██████╔╝╚██████╔╝██║░░██║███████╗██║░░██║╚█████╔╝╚██████╔╝╚██████╔╝███████╗██████╔╝╚█████╔╝███████╗
echo ╚═════╝░░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝░╚════╝░░╚═════╝░░╚═════╝░╚══════╝╚═════╝░░╚════╝░╚══════╝
echo
echo
name="$USER"
echo Welcome $name
echo
echo Installing...
echo

#installation
echo Run the installation file In Sudo/SuperUser mode -Ignore If already In SU mode
echo -----------------------------------------------------------------------------------------------------------
sleep 3
echo
sudo apt install android-tools-adb -y &&
sudo apt install android-tools-fastboot -y &&
sudo apt install scrcpy -y
chmod +x myphone.sh
echo
echo
echo Giving executable permissions to all required files...
echo
chmod +x adbcom.sh adbcom1.sh end.sh files.sh myphone1.sh toolkit.sh wireless.sh wirelesstlkt.sh
echo
echo Done...
sleep 3
echo
echo All Required Packages have been downloaded, you can now run the script using command ./myphone1.sh
echo
