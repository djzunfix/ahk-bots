F1::

Loop {

	Random, x, 124, 181
	Random, y, 240, 280
	Random, x1, 568, 593
	Random, y1, 244, 267
	

Mousemove, x, y, 3
sleep 100
click
sleep 900

Send {Shift down}
Mousemove, x1, y1, 3
sleep 700
click
sleep 700
Send {Shift up}
Sleep 700

}
K::reload
L::exitapp