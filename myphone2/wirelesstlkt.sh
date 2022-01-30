#!/bin/bash

echo
echo
echo NOTE: THIS ONLY WORKS FOR DEVICES REGISTERD TO THIS COMPUTER. IF NOT REGISTERED YET THEN
echo GO TO MAIN MENU AND SELECT WIRELESS
echo
echo Note: Make sure its not connected via usb to this machine,or it simply wont work
echo
echo Enter the IP Address of the Device
echo
read ip

adb connect $ip:6666
x-terminal-emulator -e ./adbcom1.sh
adb disconnect $ip:6666
clear

