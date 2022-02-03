#!/bin/bash

clear

echo
echo
echo This is Control panel shell opened.
echo You can Do a few commands right through here.
echo
echo You can also open this separately IN Case you only need the control panel through the main Menu
echo -----------------------------------------------------------------
echo NOTE: THIS WOULD WORK FOR BOTH WIRED AND WIRELESS CONNECTIONS
echo ----------------------------------------------------------------
echo

PS3='Command:'
cmds=("reboot (MULTIPLE OPTIONS)" "shell" "install package" "Files exchange" "homescreen" "About device" "exit")
select opt in "${cmds[@]}"; do
case $opt in
"reboot (MULTIPLE OPTIONS)")
#rebooting option

#question
echo 
echo What kind of reboot would you like?
echo
echo NOTE: THIS ERASES THE REGISTRATION OF UR ANDROID FROM THIS MACHINE
echo YOU WILL HAVE TO RE-REGISTER
echo
echo 0-reboot 
echo 1-recovery reboot
echo 2-reboot bootloader
echo 3-Root reboot
echo 4-Back to the previous menu
echo .....................
read r

#4type answer

if [ $r -eq 0 ]
then
echo Rebooting Android Device
echo
echo 3...
sleep 1
echo 2...
sleep 1
echo 1...
echo
adb reboot
else
echo
fi

if [ $r -eq 1 ]
then
adb reboot recovery
else
echo
fi

if [ $r -eq 2 ]
then
adb reboot-bootloader
else
echo
fi

if [ $r -eq 3 ]
then
adb root
else
echo
fi

#going back to the toolkit page
./adbcom.sh
exit
;;

"shell")
echo Opening a shell terminal For Android Device
sleep 1
x-terminal-emulator -e adb shell
./adbcom.sh
exit
;;


"install package")
#pkg installation
clear
echo Paste the Destination file of the apk you wish to Install on The Android Device
echo
read pkg
adb install "$pkg"
./adbcom.sh
;;

"Files exchange")
clear
./files.sh
./adbcom.sh
exit
;;


"homescreen")
adb shell am start -W -c android.intent.category.HOME -a android.intent.action.MAIN
clear
./adbcom.sh
;;


"About device")
clear
adb devices -l | grep "model" && adb devices -l | grep "usb"
echo State:
adb get-statе
echo
echo Serial No:
adb get-serialno
echo
echo Pritning all Network Activity ...
echo ...
adb shell netstat
echo
echo Current Working directory In Android Shell
adb shell pwd
echo
echo
adb shell dumpsys battery
echo
echo Dumping All features In Features.md file
adb shell pm list features > features.md
echo
echo Dumping all system sevices In Services.md file
adb shell service list > dumplog.md
echo
echo Dumping all System activity In Sysact.md file
adb shell dumpsys activity > Sysact.md
echo
echo Dumping all process in Process.md
adb shell ps > Process.md
echo
echo Screen Size:
adb shell wm size
;;

"exit")
clear
echo Exiting to main Menu ...
sleep 1
./myphone1.sh
exit
;;

*) echo "Invalid input request $opt";;
esac
done
exit
