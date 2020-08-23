F1::
{
;Sleeps
			Random, a1, 400, 500
			Random, a2, 3300, 4000
			Random, a3, 500, 600
			Random, qx, 581, 705
			Random qy, 646, 644
			Random, a4, 700, 900
			Random, a5, 3000, 4000
			Random, cx, 278, 441
			Random, cy, 324, 399

			;Login button
			Random, lx, 401, 530
			Random, ly, 301, 331


Pixelgetcolor, log, 760, 30, 60583A, Fast RGB
If (log = 0x252620)
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
}
F2::pause