#dynamic 0x740000
#org 0x7456B5
jump @start ' This redirects the script to your dynamic-offset version. Remove this line if you don't want this.

#org @start
'-----------------------------------
lock
faceplayer
checkflag 0x2
if true jump @code2 ' Flag is set
compare 0x4055 0x9
if == jump @code3 ' Equal To
compare 0x4055 0x8
if == jump @code4 ' Equal To
checkflag 0x82C
if true jump @code5 ' Flag is set
compare 0x4052 0x1
if == jump @code3 ' Equal To
compare 0x4055 0x6
if == jump @code6 ' Equal To
compare 0x4057 0x1
if >= jump @code7 ' Larger Than or Equal To
compare 0x4055 0x4
if == jump @code8 ' Equal To
compare 0x4055 0x3
if == jump @code9 ' Equal To
msgbox @text1 ' OAK: Now, \v\h01.\pI...
callstd MSG_NOCLOSE ' Non-closing message
jump @code10

#org @code2
'-----------------------------------
msgbox @text2 ' Thank you, \v\h01!\n...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code3
'-----------------------------------
call @code11
checkflag 0x2F4
if true jump @code12 ' Flag is set
release
end

#org @code11
'-----------------------------------
special INIT_STEPCOUNT
compare LASTRESULT 0x2
if == jump @code13 ' Equal To
special GET_STEPCOUNT
checkflag 0x2F4
if true call @code14 ' Flag is set
checkflag 0x2F4
if false call @code15 ' Flag is unset
call @code16
return

#org @code13
'-----------------------------------
release
end

#org @code12
'-----------------------------------
closemsg
pause 0x28
message @text3 ' Wroooooooaaaaaarrrr!
showmsg
compare PLAYERFACING UP
if == call @code17 ' Equal To
compare PLAYERFACING DOWN
if == call @code18 ' Equal To
compare PLAYERFACING RIGHT
if == call @code19 ' Equal To
compare PLAYERFACING LEFT
if == call @code20 ' Equal To
applymovement 0x4 @move1 ' faceplayer end
pauseevent 0x0
closemsg
pause 0x46
msgbox @text2 ' Thank you, \v\h01!\n...
callstd MSG_NOCLOSE ' Non-closing message
setflag 0x2
release
end

#org @code17
'-----------------------------------
applymovement 0x4 @move2 ' onspot_down onspot_d...
pauseevent 0x0
return

#org @code18
'-----------------------------------
applymovement 0x4 @move3 ' onspot_up onspot_up_...
pauseevent 0x0
return

#org @code4
'-----------------------------------
msgbox @text4 ' POK\eMON around the ...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code5
'-----------------------------------
call @code11
closemsg
compare 0x8009 0x3C
if < jump @code21 ' Smaller Than
checkflag 0x89B
if false jump @code21 ' Flag is unset
pause 0x1E
msgbox @text5 ' Ah, now this is exce...
callstd MSG_NOCLOSE ' Non-closing message
jump @code22

#org @code21
'-----------------------------------
release
end

#org @code22
'-----------------------------------
msgbox @text6 ' Recently, there have...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
compare PLAYERFACING UP
if == call @code23 ' Equal To
compare PLAYERFACING DOWN
if == call @code24 ' Equal To
compare PLAYERFACING RIGHT
if == call @code25 ' Equal To
compare PLAYERFACING LEFT
if == call @code25 ' Equal To
msgbox @text7 ' \v\h06: Hey, I heard...
callstd MSG_NOCLOSE ' Non-closing message
fadedefault
msgbox @text8 ' OAK: I know, I know....
callstd MSG_NOCLOSE ' Non-closing message
compare PLAYERFACING UP
if == call @code26 ' Equal To
compare PLAYERFACING LEFT
if == call @code27 ' Equal To
textcolor GRAY
msgbox @text9 ' PROF. OAK took both ...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
call @code28
compare PLAYERFACING UP
if == call @code29 ' Equal To
compare PLAYERFACING DOWN
if == call @code30 ' Equal To
compare PLAYERFACING RIGHT
if == call @code31 ' Equal To
compare PLAYERFACING LEFT
if == call @code32 ' Equal To
reappear 0x9
reappear 0xA
pause 0x1E
msgbox @text10 ' [.] [.] [.]  [.] [.]...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
disappear 0x9
disappear 0xA
pause 0x1E
compare PLAYERFACING UP
if == call @code33 ' Equal To
compare PLAYERFACING DOWN
if == call @code34 ' Equal To
compare PLAYERFACING RIGHT
if == call @code35 ' Equal To
compare PLAYERFACING LEFT
if == call @code36 ' Equal To
textcolor GRAY
fanfare 0x13E
message @text11 ' \v\h01's POK\eDEX wa...
showmsg
waitfanfare
call @code28
special FR_NATIONAL_DEX
msgbox @text12 ' Now, \v\h01 and \v\h...
callstd MSG_NOCLOSE ' Non-closing message
msgbox @text13 ' \v\h06: Gramps, calm...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
playsound 0x0 0x0
compare PLAYERFACING UP
if == call @code37 ' Equal To
compare PLAYERFACING DOWN
if == call @code38 ' Equal To
compare PLAYERFACING RIGHT
if == call @code38 ' Equal To
compare PLAYERFACING LEFT
if == call @code38 ' Equal To
disappear 0x8
fadedefault
setvar 0x4055 0x8
releaseall
end

#org @code23
'-----------------------------------
movesprite2 0x8 0x5 0xA
reappear 0x8
playsound 0x5 0x5
applymovement PLAYER @move4 ' look_down_delayed pa...
applymovement 0x8 @move5 ' walk_up walk_up walk...
pauseevent 0x0
return

#org @code24
'-----------------------------------
movesprite2 0x8 0x6 0xA
reappear 0x8
playsound 0x6 0x6
applymovement 0x4 @move6 ' look_down_delayed en...
applymovement 0x8 @move5 ' walk_up walk_up walk...
pauseevent 0x0
return

#org @code25
'-----------------------------------
movesprite2 0x8 0x6 0xA
reappear 0x8
playsound 0x6 0x6
applymovement 0x4 @move6 ' look_down_delayed en...
applymovement PLAYER @move7 ' pause_short look_dow...
applymovement 0x8 @move5 ' walk_up walk_up walk...
pauseevent 0x0
return

#org @code6
'-----------------------------------
setvar 0x8004 0x0
special2 LASTRESULT 0xD4
copyvar 0x8008 0x8005
copyvar 0x8009 0x8006
storevar 0x0 0x8008
storevar 0x1 0x8009
compare 0x8009 0x1
if == jump @code39 ' Equal To
jump @code3

#org @code39
'-----------------------------------
special INIT_STEPCOUNT
compare LASTRESULT 0x2
if == jump @code13 ' Equal To
special GET_STEPCOUNT
checkflag 0x24F
if true jump @code4 ' Flag is set
checkflag 0x247
if true jump @code40 ' Flag is set
checkitem POKEBALL 1
compare LASTRESULT 0x0
if == jump @code41 ' Equal To
jump @code4

#org @code40
'-----------------------------------
msgbox @text14 ' OAK: Come see me som...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code41
'-----------------------------------
compare 0x4054 0x2
if >= jump @code42 ' Larger Than or Equal To
jump @code4

#org @code42
'-----------------------------------
msgbox @text15 ' Ah, \v\h01!\nHow is ...
callstd MSG_NOCLOSE ' Non-closing message
additem POKEBALL 5
msgbox @text16 ' \v\h01 received five...
copyvarifnotzero 0x8000 POKEBALL
copyvarifnotzero 0x8001 0x5
copyvarifnotzero 0x8002 0x101
callstd MSG_ITEM ' Shows a message, then... 'Player put the yyy in the zzz!'
setflag 0x247
release
end

#org @code7
'-----------------------------------
msgbox @text17 ' OAK: Oh, \v\h01!\nHo...
callstd MSG_NOCLOSE ' Non-closing message
textcolor GRAY
fanfare 0x105
message @text18 ' \v\h01 delivered OAK...
showmsg
waitfanfare
call @code28
removeitem OAKSPARCEL 1
msgbox @text19 ' Ah! \nIt's the custo...
callstd MSG_NOCLOSE ' Non-closing message
playsound 0x1 0x1
msgbox @text20 ' \v\h06: Gramps!
callstd MSG_NOCLOSE ' Non-closing message
closemsg
compare PLAYERFACING UP
if == call @code43 ' Equal To
compare PLAYERFACING DOWN
if == call @code44 ' Equal To
compare PLAYERFACING RIGHT
if == call @code45 ' Equal To
compare PLAYERFACING LEFT
if == call @code45 ' Equal To
fadedefault
msgbox @text21 ' \v\h06: I almost for...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
pause 0x1E
sound 0x15
applymovement 0x4 @move8 ' say_! end
pauseevent 0x0
applymovement 0x4 @move9 ' pause_long pause_lon...
pauseevent 0x0
compare PLAYERFACING DOWN
if == call @code46 ' Equal To
compare PLAYERFACING RIGHT
if == call @code47 ' Equal To
compare PLAYERFACING LEFT
if == call @code48 ' Equal To
compare PLAYERFACING UP
if == call @code49 ' Equal To
msgbox @text22 ' OAK: Oh, right!\nI h...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
compare PLAYERFACING UP
if == call @code50 ' Equal To
compare PLAYERFACING DOWN
if == call @code51 ' Equal To
compare PLAYERFACING RIGHT
if == call @code52 ' Equal To
compare PLAYERFACING LEFT
if == call @code53 ' Equal To
msgbox @text23 ' On the desk there is...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
pause 0x28
msgbox @text24 ' OAK: \v\h01 and \v\h...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
applymovement 0x4 @move10 ' look_up_delayed end
pauseevent 0x0
disappear 0x9
pause 0xA
disappear 0xA
pause 0x19
compare PLAYERFACING UP
if == call @code33 ' Equal To
compare PLAYERFACING DOWN
if == call @code34 ' Equal To
compare PLAYERFACING RIGHT
if == call @code35 ' Equal To
compare PLAYERFACING LEFT
if == call @code36 ' Equal To
pause 0xA
textcolor GRAY
fanfare 0x13E
message @text25 ' \v\h01 received the ...
showmsg
waitfanfare
call @code28
setflag FR_POKEDEX
special 0x181
setvar 0x407C 0x1
msgbox @text26 ' OAK: You can't get d...
callstd MSG_NOCLOSE ' Non-closing message
additem POKEBALL 5
msgbox @text16 ' \v\h01 received five...
copyvarifnotzero 0x8000 POKEBALL
copyvarifnotzero 0x8001 0x5
copyvarifnotzero 0x8002 0x101
callstd MSG_ITEM ' Shows a message, then... 'Player put the yyy in the zzz!'
msgbox @text27 ' When a wild POK\eMON...
callstd MSG_NOCLOSE ' Non-closing message
setvar 0x8004 0x0
setvar 0x8005 0x1
special FAME_CHECKER
msgbox @text28 ' To make a complete g...
callstd MSG_NOCLOSE ' Non-closing message
msgbox @text29 ' \v\h06: All right, G...
callstd MSG_NOCLOSE ' Non-closing message
compare PLAYERFACING UP
if == call @code54 ' Equal To
compare PLAYERFACING DOWN
if == call @code55 ' Equal To
compare PLAYERFACING RIGHT
if == call @code56 ' Equal To
compare PLAYERFACING LEFT
if == call @code56 ' Equal To
msgbox @text30 ' \v\h01, I hate to sa...
callstd MSG_NOCLOSE ' Non-closing message
closemsg
playsound 0x0 0x0
compare PLAYERFACING UP
if == call @code37 ' Equal To
compare PLAYERFACING DOWN
if == call @code38 ' Equal To
compare PLAYERFACING RIGHT
if == call @code38 ' Equal To
compare PLAYERFACING LEFT
if == call @code38 ' Equal To
disappear 0x8
fadedefault
setvar 0x4055 0x6
setvar 0x4057 0x2
setvar 0x4051 0x1
setvar 0x4058 0x1
setvar 0x4054 0x1
release
end

#org @code28
'-----------------------------------
copyvar 0x8012 0x8013
return

#org @code43
'-----------------------------------
movesprite2 0x8 0x5 0xA
reappear 0x8
applymovement PLAYER @move4 ' look_down_delayed pa...
applymovement 0x8 @move5 ' walk_up walk_up walk...
pauseevent 0x0
return

#org @code44
'-----------------------------------
movesprite2 0x8 0x6 0xA
reappear 0x8
applymovement 0x4 @move6 ' look_down_delayed en...
applymovement 0x8 @move5 ' walk_up walk_up walk...
pauseevent 0x0
return

#org @code45
'-----------------------------------
movesprite2 0x8 0x6 0xA
reappear 0x8
applymovement 0x4 @move6 ' look_down_delayed en...
applymovement PLAYER @move7 ' pause_short look_dow...
applymovement 0x8 @move5 ' walk_up walk_up walk...
pauseevent 0x0
return

#org @code8
'-----------------------------------
msgbox @text31 ' OAK: \v\h01, raise y...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code9
'-----------------------------------
msgbox @text32 ' OAK: If a wild POK\e...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code10
'-----------------------------------
msgbox @text33 ' OAK: Wait a minute!!...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org @code14
'-----------------------------------
msgbox @text34 ' OAK: Ah, welcome!\pT...
callstd MSG_NOCLOSE ' Non-closing message
return

#org @code15
'-----------------------------------
msgbox @text35 ' OAK: Good to see you...
callstd MSG_NOCLOSE ' Non-closing message
return

#org @code16
'-----------------------------------
setvar 0x8004 0x1F
special 0x17E
special 0x17D
setvar 0x8004 0x0
special2 LASTRESULT 0xD4
copyvar 0x8008 0x8005
copyvar 0x8009 0x8006
copyvar 0x800A LASTRESULT
storevar 0x0 0x8008
storevar 0x1 0x8009
msgbox @text36 ' The amount of progre...
callstd MSG_NOCLOSE ' Non-closing message
checkflag 0x2FF
if false call @code57 ' Flag is unset
call @code58
compare 0x800A 0x0
if == jump @code59 ' Equal To
setvar 0x8004 0x1
special2 LASTRESULT 0xD4
copyvar 0x8008 0x8005
copyvar 0x8009 0x8006
storevar 0x0 0x8008
storevar 0x1 0x8009
msgbox @text37 ' And your NATIONAL PO...
callstd MSG_NOCLOSE ' Non-closing message
special2 LASTRESULT 0x1B0
compare LASTRESULT 0x0
if == jump @code60 ' Equal To
compare LASTRESULT 0x1
if == jump @code61 ' Equal To
end

#org @code57
'-----------------------------------
textcolor BLUE
return

#org @code58
'-----------------------------------
copyvar 0x8004 0x8009
special 0xD5
showmsg
compare LASTRESULT 0x0
if == call @code62 ' Equal To
compare LASTRESULT 0x1
if == call @code63 ' Equal To
waitfanfare
waitbutton
return

#org @code62
'-----------------------------------
fanfare 0x13D
return

#org @code63
'-----------------------------------
fanfare 0x103
return

#org @code59
'-----------------------------------
special 0x17F
return

#org @code60
'-----------------------------------
msgbox @text38 ' I'll be looking forw...
callstd MSG_NOCLOSE ' Non-closing message
jump @code59

#org @code61
'-----------------------------------
setflag 0x2F4
msgbox @text39 ' Finally[.]\pYou've f...
callstd MSG_NOCLOSE ' Non-closing message
jump @code59

#org @code19
'-----------------------------------
applymovement 0x4 @move11 ' onspot_left onspot_l...
pauseevent 0x0
return

#org @code20
'-----------------------------------
applymovement 0x4 @move12 ' onspot_right onspot_...
pauseevent 0x0
return

#org @code26
'-----------------------------------
applymovement PLAYER @move10 ' look_up_delayed end
pauseevent 0x0
return

#org @code27
'-----------------------------------
applymovement PLAYER @move13 ' look_left_delayed en...
pauseevent 0x0
return

#org @code29
'-----------------------------------
applymovement 0x4 @move14 ' walk_up walk_left lo...
pauseevent 0x0
return

#org @code30
'-----------------------------------
applymovement 0x4 @move15 ' walk_left walk_left ...
applymovement PLAYER @move16 ' pause_long pause loo...
applymovement 0x8 @move16 ' pause_long pause loo...
pauseevent 0x4
return

#org @code31
'-----------------------------------
applymovement 0x4 @move14 ' walk_up walk_left lo...
applymovement PLAYER @move17 ' pause_long pause loo...
pauseevent 0x4
return

#org @code32
'-----------------------------------
applymovement 0x4 @move14 ' walk_up walk_left lo...
pauseevent 0x0
return

#org @code33
'-----------------------------------
applymovement 0x4 @move18 ' walk_right walk_down...
pauseevent 0x0
return

#org @code34
'-----------------------------------
applymovement 0x4 @move19 ' walk_down walk_right...
pauseevent 0x0
return

#org @code35
'-----------------------------------
applymovement 0x4 @move18 ' walk_right walk_down...
applymovement PLAYER @move20 ' pause_long pause loo...
pauseevent 0x0
return

#org @code36
'-----------------------------------
applymovement 0x4 @move18 ' walk_right walk_down...
pauseevent 0x0
return

#org @code37
'-----------------------------------
applymovement PLAYER @move7 ' pause_short look_dow...
applymovement 0x8 @move21 ' walk_down walk_down ...
pauseevent 0x0
return

#org @code38
'-----------------------------------
applymovement 0x8 @move21 ' walk_down walk_down ...
pauseevent 0x0
return

#org @code46
'-----------------------------------
applymovement 0x4 @move1 ' faceplayer end
pauseevent 0x0
pause 0xF
applymovement 0x4 @move6 ' look_down_delayed en...
pauseevent 0x0
return

#org @code47
'-----------------------------------
applymovement 0x4 @move1 ' faceplayer end
pauseevent 0x0
pause 0xF
applymovement PLAYER @move22 ' look_right_delayed e...
applymovement 0x4 @move6 ' look_down_delayed en...
pauseevent 0x0
return

#org @code48
'-----------------------------------
applymovement 0x4 @move1 ' faceplayer end
pauseevent 0x0
pause 0xF
applymovement PLAYER @move13 ' look_left_delayed en...
applymovement 0x4 @move6 ' look_down_delayed en...
pauseevent 0x0
return

#org @code49
'-----------------------------------
applymovement PLAYER @move10 ' look_up_delayed end
pauseevent 0x0
return

#org @code50
'-----------------------------------
applymovement 0x4 @move23 ' walk_up walk_left pa...
pauseevent 0x0
return

#org @code51
'-----------------------------------
applymovement 0x4 @move24 ' walk_left walk_left ...
applymovement PLAYER @move16 ' pause_long pause loo...
applymovement 0x8 @move16 ' pause_long pause loo...
pauseevent 0x4
return

#org @code52
'-----------------------------------
applymovement 0x4 @move23 ' walk_up walk_left pa...
applymovement PLAYER @move17 ' pause_long pause loo...
pauseevent 0x4
return

#org @code53
'-----------------------------------
applymovement 0x4 @move23 ' walk_up walk_left pa...
pauseevent 0x0
return

#org @code54
'-----------------------------------
applymovement 0x8 @move1 ' faceplayer end
applymovement PLAYER @move13 ' look_left_delayed en...
pauseevent 0x0
return

#org @code55
'-----------------------------------
applymovement 0x8 @move10 ' look_up_delayed end
applymovement PLAYER @move6 ' look_down_delayed en...
pauseevent 0x0
return

#org @code56
'-----------------------------------
applymovement 0x8 @move1 ' faceplayer end
applymovement PLAYER @move6 ' look_down_delayed en...
pauseevent 0x0
return


#org @text1
= OAK: Now, \v\h01.\p[.]Wait a minute, these POK\eMON are\nonly for binary people!\pYou need to go get your non-binary starter\noutside.
#org @text2
= Thank you, \v\h01!\nSincerely, thank you!\lYou've made my dream a reality!

#org @text3
= Wroooooooaaaaaarrrr!

#org @text4
= POK\eMON around the world wait for\nyou, \v\h01!

#org @text5
= Ah, now this is excellent!\p\v\h01, I have another important\nfavor to ask of you.\pI need you to listen closely.

#org @text6
= Recently, there have been sightings\nof many rare POK\eMON species.\pI'm talking about POK\eMON that\nhave never been seen in KANTO.\pI would love to go see things for\nmyself, but I'm much too old.\pSince I can't do it, \v\h01, I'd\nlike you to go in my place.

#org @text7
= \v\h06: Hey, I heard that!\pGramps, what's with favoring\n\v\h01 over me all the time?\pI went and collected more POK\eMON,\nand faster, too.\pYou should just let me handle\neverything.

#org @text8
= OAK: I know, I know.\nOf course I need your help, too.\pNow, I need to see both your\nPOK\eDEXES.

#org @text9
= PROF. OAK took both POK\eDEX\nunits.

#org @text10
= [.] [.] [.]  [.] [.] [.]\p[.] [.] [.]  [.] [.] [.]\p[.]And that's done!\pNow these units can record data on\na lot more POK\eMON.

#org @text11
= \v\h01's POK\eDEX was upgraded!

#org @text12
= Now, \v\h01 and \v\h06!\pThis time, you really must work\ntowards filling your POK\eDEXES.\pI urge you to make them the best\nand the most complete of all time!\pTruly, this is a monumentally great\nundertaking in POK\eMON history!

#org @text13
= \v\h06: Gramps, calm down.\nDon't get so excited.\pI'll get the POK\eDEX completed,\ndon't you worry about a thing.\pI think I'll try looking around\nONE ISLAND first[.]\pAnyways, I'm outta here!

#org @text14
= OAK: Come see me sometime.\pAfter all, I want to know how your\nPOK\eDEX is coming along.

#org @text15
= Ah, \v\h01!\nHow is your POK\eDEX shaping up?\p\v\h06 has already caught some\nPOK\eMON and added to the data.\pSo, \v\h01, let's have a look at\nyour POK\eDEX.\p[.]What's the matter?\nYou've added no new data at all.\pI'll give you these, so do try a\nlittle harder.

#org @text16
= \v\h01 received five POK\e BALLS.

#org @text17
= OAK: Oh, \v\h01!\nHow is my old POK\eMON?\pWell, it seems to be growing more\nattached to you.\pYou must be talented as a POK\eMON\nTRAINER.\pWhat's that?\nYou have something for me?

#org @text18
= \v\h01 delivered OAK'S PARCEL.

#org @text19
= Ah! \nIt's the custom POK\e BALL!\pI had it on order.\nThank you!

#org @text20
= \v\h06: Gramps!

#org @text21
= \v\h06: I almost forgot!\nWhat did you call me for?

#org @text22
= OAK: Oh, right!\nI have a request for you two.

#org @text23
= On the desk there is my invention,\nthe POK\eDEX!\pIt automatically records data on\nPOK\eMON you've seen or caught.\pIt's a high-tech encyclopedia!

#org @text24
= OAK: \v\h01 and \v\h06.\nTake these with you.

#org @text25
= \v\h01 received the POK\eDEX\nfrom PROF. OAK.

#org @text26
= OAK: You can't get detailed data\non POK\eMON by just seeing them.\pYou must catch them to obtain\ncomplete data.\pSo, here are some tools for\ncatching wild POK\eMON.

#org @text27
= When a wild POK\eMON appears,\nit's fair game.\pJust throw a POK\e BALL at it and\ntry to catch it!\pThis won't always work, however.\pA healthy POK\eMON can escape.\nYou have to be lucky!

#org @text28
= To make a complete guide on all\nthe POK\eMON in the world[.]\pThat was my dream!\pBut, I'm too old.\nI can't get the job done.\pSo, I want you two to fulfill my\ndream for me.\pGet moving, you two.\pThis is a great undertaking in\nPOK\eMON history!

#org @text29
= \v\h06: All right, Gramps!\nLeave it all to me!

#org @text30
= \v\h01, I hate to say it, but you\nwon't be necessary for this.\pI know! I'll borrow a TOWN MAP\nfrom my sis!\pI'll tell her not to lend you one,\n\v\h01! Hahaha!\pDon't bother coming around to\nmy place after this!

#org @text31
= OAK: \v\h01, raise your young\nPOK\eMON by making it battle.\pIt has to battle for it to grow.

#org @text32
= OAK: If a wild POK\eMON appears,\nyour POK\eMON can battle it.\pWith it at your side, you should be\nable to reach the next town.

#org @text33
= OAK: Wait a minute!! You're \v\h01!\pYou're outside of the binary, kid,\nyou better go choose your norm and get\pyour non-binary starter POK\eMON.\pAfter that, maybe we can work together.

#org @text34
= OAK: Ah, welcome!\pTell me, how is your POK\eDEX\ncoming along?\pWahaha!\pActually, I know how it is, but I\nlove seeing it anyway!\pLet's see[.]

#org @text35
= OAK: Good to see you!\nHow is your POK\eDEX coming along?\pHere, let me take a look.

#org @text36
= The amount of progress you've made\non your POK\eDEX is:\p\v\h02 POK\eMON seen and\n\v\h03 POK\eMON owned.\p\c\h06\h02PROF. OAK's rating:

#org @text37
= And your NATIONAL POK\eDEX is:\p\v\h02 POK\eMON seen and\n\v\h03 POK\eMON owned.

#org @text38
= I'll be looking forward to seeing\nyou fill the NATIONAL POK\eDEX!

#org @text39
= Finally[.]\pYou've finally completed the\nPOK\eDEX!\pIt's magnificent!\nTruly, this is a fantastic feat!

#org @move1
M faceplayer end

#org @move2
M onspot_down onspot_down_fast onspot_down onspot_down onspot_down_fast onspot_down end

#org @move3
M onspot_up onspot_up_fast onspot_up onspot_up onspot_up_fast onspot_up end

#org @move4
M look_down_delayed pause_long pause_long pause_long pause_long pause_long pause look_left_delayed end

#org @move5
M walk_up walk_up walk_up walk_up walk_up walk_up end

#org @move6
M look_down_delayed end

#org @move7
M pause_short look_down_delayed end

#org @move8
M say_! end

#org @move9
M pause_long pause_long pause_long end

#org @move10
M look_up_delayed end

#org @move11
M onspot_left onspot_left_fast onspot_left onspot_left onspot_left_fast onspot_left end

#org @move12
M onspot_right onspot_right_fast onspot_right onspot_right onspot_right_fast onspot_right end

#org @move13
M look_left_delayed end

#org @move14
M walk_up walk_left look_up_delayed pause_long pause_short end

#org @move15
M walk_left walk_left walk_up pause_long pause_short end

#org @move16
M pause_long pause look_left_delayed end

#org @move17
M pause_long pause look_up_delayed end

#org @move18
M walk_right walk_down end

#org @move19
M walk_down walk_right end

#org @move20
M pause_long pause look_right_delayed end

#org @move21
M walk_down walk_down walk_down walk_down walk_down walk_down end

#org @move22
M look_right_delayed end

#org @move23
M walk_up walk_left pause_long look_down_delayed end

#org @move24
M walk_left walk_left walk_up pause_long look_right_delayed end
