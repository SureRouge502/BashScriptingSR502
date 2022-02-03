#!/bin/bash

clear
PS3='Option : '
opt=("Send" "Receive" "Exit")
select choice in "${opt[@]}"; do
case $choice in

"Send")
echo Paste the Destination file of the file you would like to send to your device
read s
adb psuh "$s" "/sdcard/"
sleep 2
./file.sh
exit
;;

"Receive")
echo Paste the Source of the file you would like to pull from your device
read r
adb pull "$r" "output"
sleep 2
./file.sh
exit
;;

"Exit")
clear
echo Exiting...
sleep 1
exit
;;


*)
echo  Invalid Input
;;

esac
done
