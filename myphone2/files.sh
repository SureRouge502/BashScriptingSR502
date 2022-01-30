#!/bin/bash

clear
PS3='Option : '
file=("Send" "Receive" "Exit")
select sor in "${file[@]}"; do
case $sor in

"Send")
#sending part
echo Paste the Destination file of the file you'd like to send to your Device
read s
adb push "$s" "/sdcard/"
sleep 2
./file.sh
exit
;;

"Receive")
echo Paste the Source file of the file you'd like to pull from your device
read r
adb pull "$r" "output"
sleep 2
./file.sh
exit
;;

"Exit")
clear
echo Exiting ...
sleep 1
exit
;;

*) echo "Invalid input request $opt";;
esac
done
exit
