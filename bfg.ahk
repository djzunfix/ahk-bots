F1::
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

;So I've done some calculations.

;Breaking 4 blocks at a time with a pickaxe with short pauses (10-15 seconds) between
;you can effectively expect about 110 seeds every 10 minutes. With this in mind you'd
;need to pause every 2 hours and 15 minutes, to take out the seeds.

;I haven't calculated how fast you go through blocks every 10 minutes, but my rough
;estimate would be something like +- 440 blocks (based on 25% seed drop chance or 1 in 4)
;so every hour you could be expecting to go through 2640 blocks. Each tile can hold 4k blocks
;with that in mind you'd need to restock blocks every 1 hour and 30 minutes to have a constant
;supply of breaking blocks.


F2::reload
F3::pause
F4::exitapp
