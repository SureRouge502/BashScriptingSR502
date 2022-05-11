from tkinter import *
import os
import webbrowser


app = Tk()
app.title("MyPhone")
logo=PhotoImage(file='logo.png')
app.iconphoto(False,logo)
app.minsize(1179,773)
app.maxsize(1179,773)
bg = PhotoImage(file = "bg2.png")
canvas1 = Canvas( app, width = 1179,height = 773)

canvas1.pack(fill = 'both', expand = True)
canvas1.create_image( 0, 0, image = bg,anchor = "nw")

app.title('Myphone GUI v1.0')
app.geometry('1179x773')


#Entry Boxes
e = Entry(app,width = 13, borderwidth = 3)
e.pack()
e.get()

#button functions
def connectwired():
   os.system("scrcpy --window-x 100 --window-y 100 &")
def connectwireless():
   os.system("adb tcpip 6666")
   os.system("adb connect "+e.get()+":6666")
   os.system("scrcpy --window-x 100 --window-y 100")
   os.system("adb disconnect "+e.get()+":6666")
def playpause():
   os.system("adb shell input keyevent 85")
def stop():
   os.system("adb shell input keyevent 86")
def volumecontrol():
 os.system("adb shell media volume --show --stream 3 --set "+str(volset_sldr.get())+" > /dev/null")
def prevmedia():
 os.system("adb shell input keyevent 88")
def rewind():
 os.system("adb shell input keyevent 89")
def forward():
 os.system("adb shell input keyevent 90")
def next():
 os.system("adb shell input keyevent 87")
def exit():
 os.system("adb shell input keyevent 86")
 os.system("adb uninstall com.rom1v.sndcpy")
 os.system("pkill -f cava")
 quit()
def connectaudio():
 os.system("./sndcpy & x-terminal-emulator -e cava &")
def shell():
 os.system("x-terminal-emulator -e adb shell &")
def installapp():
 installapp = Toplevel()
 lbl1 = Label(installapp, text="Paste the destination path of the file with the file's name and extension:").pack()
 installapp.geometry('600x125')
 a = Entry(installapp,width = 50, borderwidth = 3)
 a.pack()
 a.get()
 def installapk():
   os.system("adb install "+a.get())
 btnapp = Button(installapp, text="Done", command=installapk).pack(padx=50, pady=20)
def githubpage():
 webbrowser.open("https://github.com/SureRouge502")
def manual():
 os.system("x-terminal-emulator -e nano README.md")
def home():
 os.system("adb shell input keyevent 3")
def screenshot():
 os.system("adb shell screencap -p /sdcard/adbscreenshot.png")


#reboot
def normalreboot():
 os.system("adb reboot")
def recoveryreboot():
 os.system("adb reboot recovery")
def rebootbootloader():
 os.system("adb reboot-bootloader")
def reboot():
 top = Toplevel()
 lbl = Label(top, text="Reboot options: ").pack()
 top.geometry("600x200")
 btn1 = Button(top ,text="Normal Reboot",command=normalreboot).pack(side=LEFT, padx=20, pady=20)
 btn2 = Button(top, text="Recovery Reboot", command=recoveryreboot).pack(side=LEFT, padx=30, pady=20)
 btn3 = Button(top, text="Reboot Bootloader", command=rebootbootloader).pack(side=LEFT, padx=35, pady=20)




#-----------buttonimages
#connectwired
connectwired_btn = PhotoImage(file='button_connectwired.png')
#connectwireless
connectwireless_btn = PhotoImage(file='button_connect-wireless.png')
#play/pause
playpause_btn = PhotoImage(file='play-button.png')
#stop
stop_btn = PhotoImage(file='stop-button.png')
#volumeset
volume_btn = PhotoImage(file='button_set-volume.png')
#previousmedia
pmedia_btn = PhotoImage(file='previous-button.png')
#rewind2s
rewind_btn = PhotoImage(file='1backword-button.png')
#forward2s
forward_btn = PhotoImage(file='1forward-button.png')
#next
next_btn = PhotoImage(file='nextmedia-button.png')
#exit
exit_btn = PhotoImage(file='exit-btnn.png')
#connectaudio
connectaud_btn = PhotoImage(file='button_connect-audio.png')
#shell
shell_btn = PhotoImage(file='shell-button.png')
#reboot
reboot_btn = PhotoImage(file='reboot-btn.png')
#appinstall
appinst_btn = PhotoImage(file='installapp-button.png')
#github
github_btn = PhotoImage(file='github-button.png')
#manual
manual_btn = PhotoImage(file='manual-button.png')
#homebutton
home_btn = PhotoImage(file='home-button.png')
#screenshot
screenshot_btn = PhotoImage(file='screenshot-button.png')


#sliders--------------
volset_sldr = Scale(app, from_=0, to=15, orient=HORIZONTAL)
volset_sldr.pack()
volset_sldr.get()


#-------------------
#create buttons
button1 = Button(app, image=connectwired_btn,command=connectwired, bd = 0, bg="#000000")
button2 = Button(app, image=connectwireless_btn, command= connectwireless, bd = 0, bg ="#000000")
button3 = Button(app, image=playpause_btn, command=playpause, bg="#000000")
button4 = Button(app, image=stop_btn, command=stop, bg="#000000")
button5 = Button(app, image=volume_btn, command=volumecontrol, bg ="#000000")
button6 = Button(app, image=pmedia_btn, command=prevmedia , bg="#000000", borderwidth=0)
button7 = Button(app, image=rewind_btn, command=rewind, bg="#000000", borderwidth=0)
button8 = Button(app, image=forward_btn, command=forward, bg="#000000", borderwidth=0)
button9 = Button(app, image=next_btn, command=next, bg="#000000", borderwidth=0)
button10 = Button(app, image=exit_btn, command=exit, bg="#000000", borderwidth=0)
button11 = Button(app, image=connectaud_btn, command=connectaudio, bg="#000000", borderwidth=0)
button12 = Button(app, image=shell_btn, command=shell, bg="#000000", borderwidth=0) 
button13 = Button(app, image=reboot_btn, command=reboot, bg="#000000", borderwidth=0)
button14 = Button(app, image=appinst_btn, command=installapp, bg="#000000", borderwidth=0)
button15 = Button(app, image=github_btn, command=githubpage, bg ="#000000", borderwidth=0)
button16 = Button(app, image=manual_btn, command=manual, bg="#000000", borderwidth=0)
button17 = Button(app, image=home_btn, command=home, bg="#000000", borderwidth=0)
button18 = Button(app, image=screenshot_btn, command=screenshot, bg="#000000", borderwidth=0)



#--------------------
#display buttons
button1_window = canvas1.create_window( 950, 100, anchor = "nw", window = button1)
button2_canvas = canvas1.create_window( 950, 150, anchor = "nw", window = button2)
button3_canvas = canvas1.create_window( 75, 385, anchor="nw", window = button3)
button4_canvas = canvas1.create_window( 250, 385, anchor="nw", window = button4)
button5_canvas = canvas1.create_window( 50, 550, anchor="nw", window= button5)
button6_canvas = canvas1.create_window( 50, 465, anchor="nw", window= button6)
button7_canvas = canvas1.create_window( 120, 465, anchor="nw", window= button7)
button8_canvas = canvas1.create_window( 200, 465, anchor="nw", window= button8)
button9_canvas = canvas1.create_window( 280, 465, anchor="nw", window= button9)
button10_canvas = canvas1.create_window( 160, 650, anchor="nw", window= button10)
button11_canvas = canvas1.create_window( 950, 240, anchor="nw", window= button11)
button12_canvas = canvas1.create_window( 500, 425, anchor="nw", window = button12)
button13_canvas = canvas1.create_window( 650, 425, anchor="nw", window= button13)
button14_canvas = canvas1.create_window( 800, 425, anchor='nw', window= button14)
button15_canvas = canvas1.create_window( 60, 220, anchor="nw", window= button15)
button16_canvas = canvas1.create_window( 250, 220, anchor="nw", window= button16)
button17_canvas = canvas1.create_window( 500,550, anchor="nw", window= button17)
button18_canvas = canvas1.create_window( 950, 425, anchor="nw", window= button18)

#----------------------
#display inputs
e_canvas = canvas1.create_window(950, 200, anchor = "nw",window = e)
volset_sldr_canvas = canvas1.create_window(220, 552, anchor="nw", window=volset_sldr)

app.mainloop()
