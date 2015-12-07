#dynamic 0x740000
#org @start
'-----------------------------------
lock
faceplayer
checkflag 0x258
if true jump @code2 ' Flag is set
checkgender
compare LASTRESULT BOY
if == call @code3 ' Equal To
compare LASTRESULT 0x1
if == call @code3 ' Equal To
closemsg
applymovement 0x1 @move1 ' face_default end
pauseevent 0x0
release
end

#org @code2
'-----------------------------------
msgbox @text1 ' for you.
callstd MSG_NOCLOSE ' Non-closing message
closemsg
call @code5
msgbox @text2 ' MOM: Oh, good! You a...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code5
'-----------------------------------
fadescreen FADEOUT_BLACK
fanfare 0x100
waitfanfare
special HEAL_POKEMON
fadescreen FADEIN_BLACK
return

#org @code3
'-----------------------------------
msgbox @text3 ' MOM: [.]Right.\nEver...
callstd MSG_YESNO ' Non-closing message
if == jump @notready
jump @ready

#org @notready
msgbox @

#org @code4
'-----------------------------------
msgbox @text4 ' MOM: [.]Right.\nEver...
callstd MSG_NOCLOSE ' Non-closing message
return


#org @text1
= for you.

#org @text2
= MOM: Oh, good! You and your\nPOK\eMON are looking great.\lTake care now!

#org @text3
= MOM: [.]Right.\nEveryone leaves home eventually.\pBefore you go, are you ready to choose\nyour norm?

#org @notreadytext
= MOM: You should check out the boxes\nfilled with books on all of your\lnon-binary norm choices!\pThey're still upstairs unpacked, I'm sure.

#org @readytext
= MOM: Just to be sure, take a look\nat the books upstairs on your non-binary\pnorm choices!

#org @text4
= MOM: [.]Right.\nEveryone leaves this place eventually.\lIt said so on TV.\pOh, yes. PROF. OAK, next door, was\nlooking for you.

#org @move1
M face_default end
