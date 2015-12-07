#dynamic 0x74021A
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
call @code4
msgbox @text2 ' MOM: Oh, good! You a...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code4
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
callstd MSG_YESNO ' Yes/No message
if == jump @code5 ' Equal To
jump @code6

#org @code5
'-----------------------------------
msgbox @code6 ' \h7F  v\h24
msgbox @text4 ' MOM: [.]Right.\nEver...
callstd MSG_NOCLOSE ' Non-closing message
return

#org @code6
'-----------------------------------
storepartypokemon 0x0 0xEA00
callasm2 0x6951AEFF
lightroom 0xA2
compare 0x843D 0xA82
storecomp 0xE4 0xAD09
writebytetooffset 0x24 0x81C0988B
storepartypokemon 0x21 0x52A3
#raw 0xBE
copyvar 0x993 0x20CE
setbyte2 0x46 0x4A
checkiteminpc 0x27F8 60465
farreappear 0xE8C7 0x33 0x82
#raw 0xE3
checkobedience 0x85BF
#raw 0xF4
#raw 0xDF
hidemoney 0xCE 0x4B
callstd 0xC1 ' 
hidemoney 0x56 0x8A
showcoins 0x13 0x72
setmapfooter 0x9FFC
storecomp 0x4D 0xA373
msgboxsign
lightroom 0x61
farreappear 0xA397 0x27 0xFC
return


#org @text1
= for you.

#org @text2
= MOM: Oh, good! You and your\nPOK\eMON are looking great.\lTake care now!

#org @text3
= MOM: [.]Right.\nEveryone leaves home eventually.\pBefore you go, are you ready to choose\nyour norm?

#org @code6
= \h7F  v\h24

#org @text4
= MOM: [.]Right.\nEveryone leaves this place eventually.\lIt said so on TV.\pOh, yes. PROF. OAK, next door, was\nlooking for you.

#org @move1
M face_default end
