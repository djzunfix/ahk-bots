#NoEnv    
#SingleInstance, Force
SetBatchLines, -1  

    timerCount := 0 ; What does it start from
    Gosub, Sub_ShowOverlay
return

; Creates and shows the GUI
Sub_ShowOverlay:
    Gui, GUI_Overlay:New, +ToolWindow  +LastFound +AlwaysOnTop -Caption +hwndGUI_Overlay_hwnd
    Gui, Margin, 100, 3 ;Controls window size relative x y
    Gui, Font, s13 q3, RuneScape UF
    Gui, Add, Text, w305 Center vTEXT_Timer cBlack, %timerCount% seconds
    
    Gui, Color, 0eef5d
    WinSet, Transparent, 250
    Gui, Show, Hide, Overlay

    WinMove, 1129, 483 ; Change these values to move the window on the screen
    Gui, GUI_Overlay:Show

    SetTimer, Timer_Countdown, 1000
return

; Does the countdown and updating of the timer
Timer_Countdown:
    if (timerCount == -1) {
        SetTimer, Timer_Countdown, Off
        Gui, GUI_Overlay:Destroy
    }

    timerCount++
    GuiControl, GUI_Overlay:, TEXT_Timer,Fletching for: %timerCount% seconds.
return


F1::


start := A_TickCount 

Loop 
{
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
	
; This used to be my password

	Mousemove, cx, cy, 3
	sleep a5
	click
	sleep a4


;Sets up banks

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

	Mousemove, 160, 82, 3
	sleep a1
	click
	sleep a1
	

	Mousemove, 492, 168, 3
	sleep a1
	Send {Click down}
	Mousemove, 492, 177, 3
	sleep a1
	Send {Click up}

	}
	

}

	
F3::exitapp
F2::reload
	
	
	
	
