#dyn 0x740000
#org @main
setworldmapflag 0x890
checkflag 0x800
if == call @myevent
checkflag 0x291
if true call @event1 ' Flag is set
compare 0x4070 0x0
if == call @event2 ' Equal To
compare 0x4070 0x1
if == call @event3 ' Equal To
end

#org @myevent
movesprite2 0x4 0xB 0x6
spritebehave 0x4 0x1D
return

#org @event1
checkflag 0x83E
if false jump @event4 ' Flag is unset
compare 0x4070 0x1
if >= jump @event4 ' Larger Than or Equal To
setvar 0x4070 0x1
return

#org @event4
return

#org @event2
checkflag 0x291
if true jump @event5 ' Flag is set
movesprite2 0x1 0x5 0xF
spritebehave 0x1 0x7
return

#org @event5
movesprite2 0x1 0xC 0x2
spritebehave 0x1 0x8
setvar 0x4002 0x1
return

#org @event3
setvar 0x4070 0x2
return

