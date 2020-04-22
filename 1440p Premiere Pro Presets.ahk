grab_preset(x,y,name)
{
    send, +7
    MouseMove, 2305, 895, 0
    MouseClick
    send, ^{a}
    send, %name%
    sleep, 150
    MouseMove, 2285,935, 0
    MouseClickDrag, Left, 2285,935, x, y, 0
}

!^k::
MsgBox, Alt+B = Background Music EQ`nAlt+I = Setup Bins & Open Import`nAlt+F7 = Applies Side-by-Side setup`nCtrl+Alt+K = Opens this window`nCtrl+F4 = Close this script
return

!b:: ; Background Music EQ
CoordMode, Mouse, Relative
MouseGetPos, xpos, ypos
grab_preset(xpos,ypos, "Music EQ")
return

!i:: ; Bins and Import
send, +{1}^{/}Footage{Enter}
sleep, 100
send, +{1}^{/}Audio{Enter}
sleep, 100
send, +{1}^{/}Images{Enter}
sleep, 100
send, ^{i}
Run, E:\Important Items\Stock Music
return

!f7:: ; SbS setup
CoordMode, Mouse, Relative
sleep 300
MouseGetPos, xpos, ypos
newypos := ypos - 20
send {Alt Down}
sleep 100
MouseClickDrag, Left, xpos, ypos, xpos, newypos, 0
sleep 200
send {Alt Up}
grab_preset(xpos,ypos, "Gameplay Crop (SbS)")
grab_preset(xpos,newypos, "Camera Crop (SbS)")
return

!1::
send, {-}{9 3}{Enter}
return

!t::
CoordMode, Mouse, Relative
sleep 300
MouseGetPos, xpos, ypos
grab_preset(xpos, ypos, "Blank Zoom")
return

!z::
CoordMode, Mouse, Relative
sleep 300
MouseGetPos, x, y
grab_preset(x, y, "Face Zoom (10 frames)")
return

+!z::
CoordMode, Mouse, Relative
sleep 300
MouseGetPos, x, y
grab_preset(x, y, "Face Zoom (Scaled)")
return

!s::
Run, E:\Important Items\Stock Music
return

+!s::
Run, E:\Important Items\Sound Effects
return

^f4::
ExitApp