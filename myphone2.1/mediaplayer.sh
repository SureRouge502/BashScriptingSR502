#!/bin/bash

clear
echo -----------------------------------
echo
echo Android Media Player v1.0
echo
echo -----------------------------------
echo

PS3='Option : '
opt=("Play / Pause" "Previous Media" "Rewind 2s" "Volume control" "Forward 2s" "Next Media" "Stop" "Exit")
select choice in "${opt[@]}"; do
case $choice in

"Play / Pause")
adb shell input keyevent 85
./mediaplayer.sh
exit
;;

"Stop")
adb shell input keyevent 86
./mediaplayer.sh
exit
;;

"Volume control")
echo
echo --------------------------------------------------------------------
echo NOTE: Volume Control would not work iF youre listening through linux
echo --------------------------------------------------------------------
echo
echo Enter the volume you would like to Set --1 to 15
echo
read vol
adb shell media volume --show --stream 3 --set $vol > /dev/null
echo
echo Volume Set to $vol
sleep 1
./mediaplayer.sh
exit
;;

"Next Media")
adb shell input keyevent 87
./mediaplayer.sh
exit
;;

"Previous Media")
adb shell input keyevent 88
./mediaplayer.sh
exit
;;

"Rewind 2s")
adb shell input keyevent 89
./mediaplayer.sh
exit
;;

"Forward 2s")
adb shell input keyevent 90
./mediaplayer.sh
exit
;;

"Exit")
clear
echo Exiting to Main Menu...
sleep 1
exit
;;

*)
echo Invalid Input
;;

esac
done
