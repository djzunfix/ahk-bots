;To-do.
;1. Algorithm for calculating distances between blocks (84 pixels on x axis)
;2. Add a button for setting your coordinates (Including your fist)
;3. Cleaning this mess up.
Gui, Add, Button, x10 y15 vChand, Chands
Gui, Add, Button, x10 y45 vLgrid, Lgrid
Gui, Add, Button, x120 y30 vKill, Killswitch
Gui, Show, w300 h75, Choose your block type.
return

buttonLgrid:
Loop {
    ControlClick, x645 y750, Growtopia,, LEFT,, NA,,        ;Inventory
sleep 60
    ControlClick, x561 y276, Growtopia,, LEFT,, NA,,        ;Place Block 1
sleep 100
    ControlClick, x487 y276, Growtopia,, LEFT,, NA,,        ;Place Block 2
sleep 100
    ControlClick, x427 y276, Growtopia,, LEFT,, NA,,        ;Place Block 3
sleep 100
    ControlClick, x357 y276, Growtopia,, LEFT,, NA,,        ;Place Block 4
sleep 100
    ControlSend ,,{Tab}, Growtopia
sleep 400
    ControlClick, x561 y276, Growtopia,, LEFT,35, NA,,        ;Break Block 1
sleep 400
    ControlClick, x487 y276, Growtopia,, LEFT,35, NA,,        ;Break Block 2
sleep 400
    ControlClick, x427 y276, Growtopia,, LEFT,35, NA,,        ;Break Block 3
sleep 400
    ControlClick, x357 y276, Growtopia,, LEFT,35, NA,,        ;Break Block 4
sleep 400
}
return

buttonChands:
Loop {
    ControlClick, x645 y750, Growtopia,, LEFT,, NA,,        ;Inventory
sleep 60
    ControlClick, x561 y276, Growtopia,, LEFT,, NA,,        ;Place Block 1
sleep 100
    ControlClick, x477 y276, Growtopia,, LEFT,, NA,,        ;Place Block 2
sleep 100
    ControlClick, x393 y276, Growtopia,, LEFT,, NA,,        ;Place Block 3
sleep 100
    ControlClick, x309 y276, Growtopia,, LEFT,, NA,,        ;Place Block 4
sleep 100
    ControlSend ,,{Tab}, Growtopia
sleep 400
    ControlClick, x561 y276, Growtopia,, LEFT,48, NA,,        ;Break Block 1
sleep 400
    ControlClick, x487 y276, Growtopia,, LEFT,48, NA,,        ;Break Block 2
sleep 400
    ControlClick, x427 y276, Growtopia,, LEFT,48, NA,,        ;Break Block 3
sleep 400
    ControlClick, x357 y276, Growtopia,, LEFT,48, NA,,        ;Break Block 4
sleep 400
}
return

GuiClose:
	Exitapp

F2::reload
F3::pause
F4::exitapp
