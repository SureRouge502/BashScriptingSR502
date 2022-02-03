#!/bin/bash

clear

echo -------------------
echo Audio connect v1.0
echo -------------------
echo

PS3='Option: '
opt=("Wired/Direct Connect" "Wireless" "Exit")
select choice in "${opt[@]}"; do
case $choice in

"Wired/Direct Connect")
echo
echo Inititating Audio Streaming...
sleep 1
echo
echo Audio will be streamed from your connected android ,wired or wireless, to this pc as
echo long as the new shell process is open.
echo
echo The new terminal will open now
echo
sleep 1
echo
x-terminal-emulator -e ./sndcpy & ./myphone1.sh
exit
;;

"Wireless")
echo
echo Enter the Ip Address of the device you want to connect:
echo
read ip
adb connect $ip:6666
echo Initiating Audio Streaming...
echo
echo Audio will be streamed from your connected android ,wired or wireless, to this pc as
echo long as the new shell process is open.
echo
echo The new terminal will open now
echo
sleep 1
echo
./sndcpy
adb disconnect $ip:6666
exit
;;

"Exit")
clear
echo Exiting to Main Menu ...
sleep 1
clear
./myphone1.sh
exit
;;

*)
echo Invalid Input request.
;;

esac
done
exit
