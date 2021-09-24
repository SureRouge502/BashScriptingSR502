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
echo
echo NOTE: MAKE SURE USB DEBUGGING IS ENABLED IN THE DEVELOPER OPTIONS


#Question
echo
echo Do you want to connect to your phone wired or wireless?
echo 0=wired   1=wireless
echo
read q
echo 
echo

#If else
if [ $q -eq 0 ]
then
echo starting Local server For AD-Bridge
echo ...
echo Press Ctrl+C when Done
echo
echo
sleep 2
scrcpy
else
echo Was this phone registered previously?
echo 0-No 1-yes
echo
read qu
echo
echo
fi
$!

#If else 2
if [ $qu -eq 0 ]
then
echo Please connect the phone In order to register it with this machine.
sleep 1
echo Please Type In the IP address of the particular device
sleep 1
echo This way we Make sure you know what you are doing and take responsibility For any actions taken
sleep 1
echo
echo
echo
read ip
adb tcpip 6666
adb connect $ip:6666
sleep 2
echo Now you can remove your device. Please wait
echo
echo If you have not removed your device this will not work
echo
echo Press Ctrl+c When Done
echo
echo This program will auto run Myphone In wireless For your Device In 5 seconds
echo
sleep 5
scrcpy
else
echo Please Enter the Ip of your device
read ip2
adb connect $ip2:6666
scrcpy
fi

#Ending the program
adb disconnect $ip:6666
adb disconnect $ip2:6666
echo
echo
echo ▀█▀ █░█ ▄▀█ █▄░█ █▄▀   █▄█ █▀█ █░█   █▀▀ █▀█ █▀█   █░█ █▀ █ █▄░█ █▀▀   █▀▄▀█ █▄█   █▀█ █▀█ █▀█ █▀▀ █▀█ ▄▀█ █▀▄▀
echo ░█░ █▀█ █▀█ █░▀█ █░█   ░█░ █▄█ █▄█   █▀░ █▄█ █▀▄   █▄█ ▄█ █ █░▀█ █▄█   █░▀░█ ░█░   █▀▀ █▀▄ █▄█ █▄█ █▀▄ █▀█ █░▀░█

