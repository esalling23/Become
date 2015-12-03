#org 0x81692C3
'-----------------------------------
lockall
textcolor BLUE
applymovement 0x4 0x81A75F1 ' raw_00 end
pauseevent 0x0
msgbox 0x818E177 ' OAK: Hey!\nDon't go ...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
applymovement PLAYER 0x81692E5 ' walk_up end
pauseevent 0x0
releaseall
end


#org 0x818E177
= OAK: Hey!\nDon't go away yet!

#org 0x81A75F1
M raw_00 end

#org 0x81692E5
M walk_up end
