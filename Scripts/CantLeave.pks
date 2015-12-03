#org 0x81655F9
'-----------------------------------
lockall
setvar 0x4001 0x1
jump 0x8165605

#org 0x8165605
'-----------------------------------
setvar 0x8004 0x0
setvar 0x8005 0x2
special FAME_CHECKER_NEW
textcolor BLUE
pause 0x1E
playsound 0x12E 0x0
message 0x817D72C ' OAK: Hey! Wait!\nDon...
showmsg
pause 0x55
closemsg
applymovement PLAYER 0x81A75ED ' look_down_delayed en...
pauseevent 0x0
sound 0x15
applymovement PLAYER 0x81A75DB ' say_! end
pauseevent 0x0
pause 0x1E
reappear 0x3
compare 0x4001 0x0
if == call 0x81656B8 ' Equal To
compare 0x4001 0x1
if == call 0x81656C3 ' Equal To
pause 0x1E
msgbox 0x817D74A ' OAK: It's unsafe!\nW...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
pause 0x1E
compare 0x4001 0x0
if == call 0x81656CE ' Equal To
compare 0x4001 0x1
if == call 0x81656E0 ' Equal To
setdooropened 0x10 0xD
doorchange
applymovement 0x3 0x816572E ' walk_up hide end
applymovement PLAYER 0x8165758 ' walk_right walk_up h...
pauseevent 0x0
setdoorclosed 0x10 0xD
doorchange
setvar 0x4055 0x1
clearflag 0x2B
setvar 0x4050 0x1
setflag 0x2C
setflag 0x4001
warp 0x4 0x3 0xFF 0x6 0xC
waitspecial
releaseall
end

#org 0x81656B8
'-----------------------------------
applymovement 0x3 0x81656F2 ' walk_up walk_up walk...
pauseevent 0x0
return

#org 0x81656C3
'-----------------------------------
applymovement 0x3 0x81656FB ' walk_right walk_up w...
pauseevent 0x0
return

#org 0x81656CE
'-----------------------------------
applymovement 0x3 0x8165705 ' walk_down walk_left ...
applymovement PLAYER 0x8165731 ' walk_down walk_down ...
pauseevent 0x0
return

#org 0x81656E0
'-----------------------------------
applymovement 0x3 0x8165719 ' walk_down walk_left ...
applymovement PLAYER 0x8165744 ' walk_down walk_down ...
pauseevent 0x0
return


#org 0x817D72C
= OAK: Hey! Wait!\nYou can't do that!

#org 0x817D74A
= OAK: It's unsafe!\nWild POK\eMON live in tall grass!\pYou need your own POK\eMON for\nyour protection.\pI know!\nHere, come with me!

#org 0x81A75ED
M look_down_delayed end

#org 0x81A75DB
M say_! end

#org 0x816572E
M walk_up hide end

#org 0x8165758
M walk_right walk_up hide end

#org 0x81656F2
M walk_up walk_up walk_right walk_up walk_up walk_right walk_up walk_up end

#org 0x81656FB
M walk_right walk_up walk_up walk_right walk_up walk_up walk_right walk_up walk_up end

#org 0x8165705
M walk_down walk_left walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_right walk_right walk_right walk_right walk_right look_up_delayed end

#org 0x8165731
M walk_down walk_down walk_left walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_right walk_right walk_right walk_right end

#org 0x8165719
M walk_down walk_left walk_left walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_right walk_right walk_right walk_right walk_right look_up_delayed end

#org 0x8165744
M walk_down walk_down walk_left walk_left walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_down walk_right walk_right walk_right walk_right end
