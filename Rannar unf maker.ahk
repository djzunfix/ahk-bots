1::
Gui, Add, text, , DJZ's Ranarr(unf) maker. Enter how many inventories.
Gui, Add, Edit, vNum
Gui, Add, Button, default, Start
Gui, Show
Return

GuiClose:
ButtonStart:
Gui, Submit 

Loop, %Num%
{
 ;Randoms

	;Bank
	
	Random, x1, 434, 460
	Random, y1, 353, 327
	
	;Bank withdraw Vials and Ranarrs
	
	Random, x2, 420, 438
	Random, y2, 207, 188
	Random, x3, 415, 438
	Random, y3, 244, 223
	
		;Inventory
		
		Random, invx1, 570, 591
		Random, invy1, 371, 349
		Random, invx2, 568, 591
		Random, invy2, 388, 403
		
			;Sleeps
			Random, a1, 400, 500
			Random, a2, 9000, 11000
			Random, a3, 100, 300

	;Anti-ban
	Random, outx1, -682, -390
	Random, outy1, 97, 852
	
		
	;Script part
	
	Mousemove, x1, y1, 3
	sleep a1
	click
	sleep 1100
	click
	sleep a1
	
	Mousemove, x2, y2, 3
	sleep a3
	click
	sleep a3

	Mousemove, x3, y3, 3
	sleep a3
	click
	sleep a1
	
	Send {Esc}
	
	Mousemove, invx1, invy1, 3
	sleep a3
	click
	sleep a3
	
	Mousemove, invx2, invy2, 3
	sleep a3
	click
	sleep 1200
	
	Send {Space}
	sleep out
	Mousemove, outx1, outy1, 3
	sleep a2
	

}

	
F9::exitapp
2::reload
	
	
	
	