b::
start := A_TickCount
Loop
{
			Random, a1, 400, 500
			Random, a2, 18000, 19000
			Random, a3, 100, 300
			Random, qx, 581, 705
			Random qy, 646, 644
			Random, lx, 401, 530
			Random, ly, 301, 331
			Random, a4, 700, 900
			Random, a5, 7000, 8000
			Random, cx, 278, 441
			Random, cy, 324, 399

			;Randoms

	;Bank
	
	Random, x1, 430, 460
	Random, y1, 353, 322
	
	;Bank withdraw bows and strings
	
	Random, x2, 420, 438
	Random, y2, 239, 252
	Random, x3, 415, 438
	Random, y3, 282, 293
	
		;Inventory
		
		Random, invx1, 570, 591
		Random, invy1, 371, 349
		Random, invx2, 568, 591
		Random, invy2, 388, 403
		
			;Sleeps
			Random, a1, 400, 500
			Random, a2, 18000, 19000
			Random, a3, 100, 300
			Random, qx, 581, 705
			Random qy, 646, 644
			Random, lx, 401, 530
			Random, ly, 301, 331
			Random, a4, 700, 900
			Random, a5, 3000, 4000
			Random, cx, 278, 441
			Random, cy, 324, 399

	


	;Anti-ban
	Random, outx1, -682, -390, 3
	Random, outy1, 97, 852, 3
	Random, mousespeed, 0.6, 1
	




now := A_TickCount-start

Mousemove, 542, 123, 3

if now > 5000
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
	
	Send {l}
	sleep a1
	Send {o}
	sleep a1
	Send {l}
	sleep a1
	Send {1}
	sleep a1
	Send {2}
	sleep a1
	Send {3}
	sleep a1
	Send {l}
	sleep a1
	Send {o}
	sleep a1
	Send {l}
	sleep a1
	Send {1}
	sleep a1
	Send {2}
	sleep a1
	Send {3}
	sleep a1
	Send {x}
	sleep a1
	Send {d}
	sleep a1
	Send {l}
	sleep a1
	Send {o}
	sleep a1
	Send {l}
	sleep a1
	Send {Enter}
	sleep a5

	Mousemove, cx, cy, 3
	sleep a5
	click
	sleep a4
}
if now > 20000
reload

}

F3::exitapp
	