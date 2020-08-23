
F1::
Loop 
{
 ;Randoms

	;Random bankers
	Random, NewX, 1, 22
	Random, NewY, 1, 19
	;Bank
	
	Random, x1, 430, 460
	Random, y1, 353, 322
	
	;Bank withdraw Snakeskins
	
	Random, x2, 321, 347
	Random, y2, 219, 248
	
		;Inventory
		
		Random, invx1, 574, 591
		Random, invy1, 355, 374
		Random, invx2, 574, 587
		Random, invy2, 391, 407
		
			;Sleeps
			Random, a1, 400, 500
			Random, a2, 2000, 2800
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

	;Anti-ban
	Random, outx1, -682, -390, 3
	Random, outy1, 97, 852, 3
	Random, mousespeed, 0.6, 1
	
		
	;Script part
	PixelSearch, Px, Py, 147, 130, 418, 343, 0xFA00FF, 1, Fast RGB
	{
	NeweX := Px + NewX
	NeweY := Py + NewY


	Mousemove, NeweX, NeweY, 8
	sleep a1
	click
	sleep 1100
	Mousemove,x1 ,y1 , 8
	click
	sleep a1

	Mousemove, x2, y2, 8
	sleep a3
	click
	sleep a3
	
	Send {Esc}
	
	Mousemove, invx1, invy1, 8
	sleep a3
	click
	sleep a3
	
	Mousemove, invx2, invy2, 8
	sleep a3
	click
	sleep 1200
		
	Send {1}
	sleep a3

	Mousemove, outx1, outy1, 3
	sleep a2
	Mousemove, x2, y2, 8
	sleep a1
}
Pixelgetcolor, log, 760, 30, 60583A, Fast RGB
If (log = 0x24251F)
{

;Runs the login
	
	Mousemove, lx, ly, 8
	sleep a1
	click
	sleep a4
	///// Forgot to write this part\\\\\\\

	Mousemove, cx, cy, 8
	sleep a5
	click
	sleep a4
	}

}
F2::pause
F3::exitapp
