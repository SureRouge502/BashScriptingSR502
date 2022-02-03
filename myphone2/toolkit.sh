#!/bin/bash

clear
echo
echo IN TOOLKIT BOX now ,Exit to go to the main Screen
echo ..............................................
echo
echo
PS3='Wired or Wireless:'
wire=("Check Wired Connections" "wired" "wireless" "Exit")
select q in "${wire[@]}"; do
case $q in

"Check Wired Connections")
echo
adb devices
sleep 2
./toolkit.sh
exit
;;

"wired")
./adbcom1.sh
./toolkit.sh
exit
;;

"wireless")
./wirelesstlkt.sh
./toolkit.sh
exit
;;

"Exit")
clear
echo Exiting to Main Menu...
sleep 1
./myphone1.sh
exit
;;

*)
echo Invalid Input $q
;;
esac
done
