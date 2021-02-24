F1::

start := A_TickCount


Loop {


SetDefaultMouseSpeed, msped


	;Sleeps
			Random, a1, 400, 500
			Random, a2, 33000, 34000
			Random, a3, 100, 300
			Random, qx, 581, 705
			Random qy, 646, 644
			Random, lx, 401, 530
			Random, ly, 301, 331
			Random, a4, 700, 900
			Random, a5, 3000, 4000
			Random, cx, 278, 441
			Random, cy, 324, 399
			Random, msped, 0.4, 1.1
			
			;Anti-ban
	Random, outx1, -682, -390, 3
	Random, outy1, 97, 852, 3
	Random, mousespeed, 0.6, 1





	Random, xd, 224, 248
	Random, yd, 223, 244
	
	Random, x1, 272, 288
	Random, y1, 223, 247
	
	Random, x2, 693, 720
	Random, y2, 457, 483
	
	Random, x3, 698, 717
	Random, y3, 427, 444
	
	Random, bx1, 430, 460
	Random, by1, 353, 322
	



Mousemove, bx1, by1, 3
sleep a1
click
sleep 1100
click
sleep a1

Mousemove, xd, yd, 3
sleep a3
click
sleep a3

Mousemove, x1, y1, 3
sleep a3
click
sleep a1

Send {Esc}

Mousemove, x2, y2, 3
sleep a4
click
sleep a1

Mousemove, x3, y3, 3
sleep a1
click
sleep 1200


	Send {Space}
	sleep out

Mousemove, outx1, outy1, 3
sleep a2





now := A_TickCount-start

if now > 18000000
{

;Runs the logout
	Send {F7}
	sleep a1
	Send {F7}
	Mousemove, 634, 456, 3
	sleep a1
	click
	sleep lx




;Runs the login
	
	Mousemove, lx, ly, 3
	sleep a1
	click
	sleep a4
	
	; you would send your password here

	Mousemove, cx, cy, 3
	sleep a5
	click
	sleep a4

}
}

F2::reload
F3::exitapp











