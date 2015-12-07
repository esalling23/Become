#org 0x8168C09
'-----------------------------------
lock
faceplayer
checkflag 0x258
if true jump 0x8168C4A ' Flag is set
checkgender
compare LASTRESULT BOY
if == call 0x8168C38 ' Equal To
compare LASTRESULT 0x1
if == call 0x8168C41 ' Equal To
closemsg
applymovement 0x1 0x81A75E5 ' face_default end
pauseevent 0x0
release
end

#org 0x8168C4A
'-----------------------------------
msgbox 0x818D3D1 ' MOM: \v\h01!\nYou sh...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
call 0x81A6C26
msgbox 0x818D3F8 ' MOM: Oh, good! You a...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org 0x81A6C26
'-----------------------------------
fadescreen FADEOUT_BLACK
fanfare 0x100
waitfanfare
special HEAL_POKEMON
fadescreen FADEIN_BLACK
return

#org 0x8168C38
'-----------------------------------
msgbox 0x818D2F0 ' MOM: [.]Right.\nAll ...
callstd MSG_NOCLOSE ' Non-closing message
return

#org 0x8168C41
'-----------------------------------
msgbox 0x818D360 ' MOM: [.]Right.\nAll ...
callstd MSG_NOCLOSE ' Non-closing message
return


#org 0x818D3D1
= MOM: \v\h01!\nYou should take a quick rest.

#org 0x818D3F8
= MOM: Oh, good! You and your\nPOK\eMON are looking great.\lTake care now!

#org 0x818D2F0
= MOM: [.]Right.\nEveryone leaves home eventually.\pIt won't be as easy for you, you know,\nsince you have to pick a norm.\pIf you have trouble deciding, try\nstudying up on your norm choices.\pSome of the pamphlets they sent are\nstill upstairs in your room.

#org 0x818D360
= MOM: [.]Right.\nEveryone leaves this place eventually.\lIt said so on TV.\pOh, yes. PROF. OAK, next door, was\nlooking for you.

#org 0x81A75E5
M face_default end
