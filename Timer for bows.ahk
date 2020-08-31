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

F3::
ExitApp
