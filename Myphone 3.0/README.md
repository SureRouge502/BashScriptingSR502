------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
myphone
-------

About:
------
This program is created by SureRouge502 automating the process of using your Phone over wired or wireless connection in
A linux machine. This program Uses ADB (Android Debug Bridge) and Fastboot in order to work..
Works on All types of linux (Mostly tested on Debian And Kali coz i have those two only right now)
This is the MyPhone 3.


What's New?
-----------
1. Myphone 3 brings a whole new level of ease to use this app! No more numbers, no more inputs from direct user required.
2. Myphone 3 is the newest and latest version of the MyPhone app. By bringing in **GUI** based user interface.
3. Myphone 3 is the same as Myphone2.
4. Few bug fixes from previous version

**NOTE**: This is the first version of GUI app and is still in testing. Some features may not be available yet. So if you encounter any bugs , please report to SureRouge502 to help him fix them and imrpove the application.

Features:
---------

Myphone section
---------------

1. Connect Wired : Allows user to connect to their android device when connected via USB.
2. Connect Wireless : Allows user to connect to their android device wirelessly via WIFI. TO use this just enter the IP address of the Device you want to connect to and click "Connect Wireless".
3. Connect Audio : Lets you connect audio streaming service //Sndcpy// to your connected device so you can stream audio. Works for both Wired and Wireless

**NOTE**: In order to stop the audio streaming , just tap "STOP" on audio forwarding notification on your android.


Media player section
--------------------

1. **Play/Pause** : Play/Pause running media.
2. **Stop** : Stop any running media.
3. **Previous media** : Go back to the previous media that was playing.
4. **Rewind (2s)** : Rewind playing media by 2 seconds.
5. **Forwarwd (2s)** : Forward media playing by 2 seconds.
6. **Next media** : Switch to the next media to play.
7. **Set volume** : Use the scroller to select the desired volume and use the "Set volume" button to set your device volume to it.

**NOTE**: This doesn't control the Media streaming volume...

App Options section
-------------------

   1. Exit app : Closes all running process and exit the app.


Device Options Section 
----------------------

1.**Terminal** : Opens up a terminal window allowing to passthrough shell commands to your Android device
**NOTE**: If you see the terminal not opening up , the your device isnt authorized yet. To authorize ,just reconnect your device with your phone unlocked and Accecpt The prompt saying "Accpet RSA keys / fingerprints".

2.**Power** : 
  1. Normal Reboot : Reboots your android device.
  2. Recovery Reboot : Reboots your android device into Recovery Mode.
  3. Reboot Bootloader : Reboots your Android Bootloader.

3.**Home** : Goes to the Android Home Screen.

4.**Screenshot** : Allows your to take a screenshot of the Android Screen, Saved in Adb Screenshots folder in your android device.
**NOTE**: This isn't like your android screenshot and doesnt give any notification on being taken , if you feel like you've taken a Screeshot but it hasn't occoured , please check your ADB screenshots folder in android device

5.**Install App** : Let's you install any android application right throught your linux machine! 
To use: paste the destination folder of the file with the file name and extension . Ex: "/home/folder/folder2/yourapp.apk"

And thats pretty much it for this version of Myphone! XD
It took me months to build this app. Tons of google searchs , tons of editing , tons to error corrections but in the end i think it was all worth it!
We now have a working GUI app of Myphone!

Note:
-----
This is my first GUI app ever. And it goes without saying that there will be some bugs or issues here and there.
Do not hesitate to report me of this. I will take action as soon as i figure out my stuff with it. I gotta say we've come a lot further than how we were in 
the beginning. From going to an app that only show you your screen , to an app which is now easier to use using GUI. Of course the little things matter,
You can still stream audio and Screen of your phone. But since this is a python GUI app, it makes things difficult for me to work on as my older versions 
were completely Bash:Shell based programs. Much easier to use though. Least you dont have to keep typing numbers and selecting options XD. I know how painful
it can be, for i actually made these apps so i could solve a little issue of mine a while ago. Its only because of that, that i got into coding and started 
working on my very own app for this all. Solves the problem and i learnt a new skill too! I know it would've been an overkill saying that i learnt coding
and used it all just coz i had an issue which i could've easily solved by purchasing an app which, well solves it! But no, i went all the way and made sure it
helps everyone who has this issue too!

History aside.... 
a word of notice, This app will now be cross platform!
YES! you read it right. Now, Not only linux users, but macOS and Windows users will be able to use it as well.Turns out windows powershell is useful ,and
powerful, but most importantly , it runs using shell. It makes things a lot easier for me to work on. And for macOS, well its already a Unix Based OS. so
it should be easier right? No idea.... but i will see what i can do and i will asure you of this that i will make this app CrossPlatform.

Well that was it for the documentation part and for the news.. Lets move on to the more useful part XD

Installation:
-------------

---->First give executable permission to the installer file by using :

    chmod +x install.sh

---->Now lets run this installer and its done by :

    ./install.sh

---->The installer will install all the pre-requisites and programs required to run this program efficiently. And also provide them with executable permissions
on its own, so less work and easy installation!

---->After the installation is complete and you've received a message saying "Installation complete", you can run the program for the folder it is in using :

    python3 GUI.py

The package will run using python, coz well, its made using python. And thats it! You can run the app as many times as you want using the command given above.
No need to install the app everytime.


I hope you enjoy using the program!




Credits:
--------

Creator: **SureRouge502**
Email (for bugs report as well): **iyengara41@gmail.com**
More of SureRouge502's work at:
[Github@SureRouge502]( https://github.com/SureRouge502)


