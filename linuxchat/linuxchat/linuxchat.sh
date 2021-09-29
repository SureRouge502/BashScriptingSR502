#!/bin/bash

#Intro
clear
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
echo
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
echo --------------------------------------------------
echo This program MUST NOT be run iN SuperUser mode.
echo --------------------------------------------------
echo

#Question
echo Host a ChatRoom or Join A ChatRoom?
echo
echo 0-Host
echo 1-Join
echo
read q

#IfElse
if [ $q -eq 0 ]
then
echo Please Create a port number --5 digits only
echo
read port
echo 
echo A new ChatRoom will now be created, Please use that to Conversate between any number of linux devices
echo To connect a device , Go to the device and run THis program by selection -JOin
echo
x-terminal-emulator -e nc -l $port
else
echo 
echo Enter the Ip Address of the Host Device
echo
read ip
echo
echo Enter the port number of the device
echo
read portt
echo
echo
echo A New Chatroom portal will be opened , You can use that to Conversate with the host
echo
echo You will now be connected to the Host In
echo 3
sleep 1
echo 2
sleep 1
echo 1
sleep 1
clear
nc $ip $portt
echo
fi

#ENding
echo
echo Chatroom CLosed
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
clear
