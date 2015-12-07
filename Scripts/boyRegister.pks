#dyn 0x740000
#org @main
lock
faceplayer
msgbox @talk
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yes
jump @no

#org @yes
checkgender
compare LASTRESULT BOY
if == call @boy
compare LASTRESULT 0x01
if == call @girl
closemsg

#org @boy
msgbox @rejectgirl
callstd MSG_NORMAL
release
end

#org @girl
msgbox @acceptboy
callstd MSG_NORMAL
release
end

#org @no
msgbox @speakno
callstd MSG_NORMAL
release
end

#org @talk
= Are you here to register as a boy trainer?

#org @acceptboy
= Here is your boy's trainer card. It's blue. 

#org @rejectgirl
= You're no boy trainer!\nI'm afraid you must be a REAL boy\l to register here.

#org @speakno
= Then go away.
