#!/bin/bash

echo ------------------------------
echo Set the Volume For your device
echo ------------------------------
echo
echo 0 to 15 --
echo
read vol
adb shell media volume --show --stream 3 $vol > /dev/null
echo
echo
echo Volume Set to $vol !
echo
echo -------------------------------
sleep 2
exit

