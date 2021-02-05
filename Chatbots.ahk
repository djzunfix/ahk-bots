F1::
Gui, Font,s10 +c000000, Helvetica,
Gui, Add, Text, x6 y6 w260 h30 +BackgroundTrans , Enter up to 2 different spam messages.
Gui, Font,s10 +c000000, Helvetica,
Gui, Add, Edit, vedit1 x6 y46 w180 h20 +BackgroundTrans , First chat line.
Gui, Add, Edit, vedit2 x6 y76 w180 h20 +BackgroundTrans , Second chat line.
Gui, Font,s10 +c000000, Helvetica,
Gui, Add, Text, x6 y100 w120 h20 +BackgroundTrans, Process to chat in:
Gui, Font,s10 +c000000, Helvetica,
Gui, Add, Edit, vprocess x6 y120 w100 h20 +BackgroundTrans , Process name.
Gui, Font,s10 +c000000, Helvetica,
Gui, Add, Text, x130 y100 w160 h20 +BackgroundTrans, Button that opens chat:
Gui, Font,s10 +c000000, Helvetica,
Gui, Add, Edit, vinputb x130 y120 w80 h20 +BackgroundTrans , Chat button.
Gui, Add, Button, x75 y150 w30 h30 +BackgroundTrans , GO
Gui, Font,s16 +c000000, Helvetica,
Gui, Add, Text, x140 y152 w200 h20 +BackgroundTrans, F3 = Pause/Resume
Gui, Show,, Fuck yourself

buttonGO:
Gui, submit, nohide
Loop {
    sleep 2500
        ControlSend ,,{%inputb%}%edit1%{enter}, %process%
    sleep 4000
        ControlSend ,,{%inputb%}%edit2%{enter}, %process%
    sleep 3000
    }
GuiClose:
Exitapp


F3::Pause
F2::reload