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
echo
echo Press Ctrl+C to end the prgram at anytime!
echo

PS3='Option : '
opt=("wired" "wireless" "toolkit" "Exit")
select choice in "${opt[@]}"; do
case $choice in

"wired")
echo Starting Local Server ...
echo ...
echo Connecting wired using Android Debugging Bridge
echo Press Ctrl+C when Done...
echo
echo A Small shell window will open up
echo
sleep 2
scrcpy & x-terminal-emulator -e ./adbcom1.sh
./myphone1.sh
exit
;;

"wireless")
./wireless.sh
./myphone1.sh
exit
;;

"toolkit")
./toolkit.sh
;;

"Exit")
clear
echo Exiting...
sleep 1
#Ending the program
echo
echo
echo ▀█▀ █░█ ▄▀█ █▄░█ █▄▀   █▄█ █▀█ █░█   █▀▀ █▀█ █▀█   █░█ █▀ █ █▄░█ █▀▀   █▀▄▀█ █▄█   █▀█ █▀█ █▀█ █▀▀ █▀█ ▄▀█ █▀▄▀
echo ░█░ █▀█ █▀█ █░▀█ █░█   ░█░ █▄█ █▄█   █▀░ █▄█ █▀▄   █▄█ ▄█ █ █░▀█ █▄█   █░▀░█ ░█░   █▀▀ █▀▄ █▄█ █▄█ █▀▄ █▀█ █░▀░█
for n in {1..5}; do exit ; done
;;

*)
echo  Invali Input $opt
;;

esac
done
