#!/bin/bash

echo Was this phone registered previously?
echo 0-No 1-yes
echo
read qu
echo
echo

#ifelse
#If else 2
if [ $qu -eq 0 ]
then
echo Please connect the phone In order to register it with this machine.
echo ---------------------------------------------------------
echo Please Type In the IP address of the particular device
echo -----------------------------------------------------------
echo This way we Make sure you know what you are doing and take responsibility For any actions taken
echo
echo
echo IP ADDRESS OF THE DEVICE:
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
scrcpy & x-terminal-emulator -e ./adbcom1.sh
else
echo Please Enter the Ip of your device
read ip2
adb connect $ip2:6666
scrcpy & x-terminal-emulator -e ./adbcom1.sh
fi

#Ending the program
adb disconnect $ip:6666
adb disconnect $ip2:6666
echo
echo
echo ▀█▀ █░█ ▄▀█ █▄░█ █▄▀   █▄█ █▀█ █░█   █▀▀ █▀█ █▀█   █░█ █▀ █ █▄░█ █▀▀   █▀▄▀█ █▄█   █▀█ █▀█ █▀█ █▀▀ █▀█ ▄▀█ █▀▄▀
echo ░█░ █▀█ █▀█ █░▀█ █░█   ░█░ █▄█ █▄█   █▀░ █▄█ █▀▄   █▄█ ▄█ █ █░▀█ █▄█   █░▀░█ ░█░   █▀▀ █▀▄ █▄█ █▄█ █▀▄ █▀█ █░▀░█

