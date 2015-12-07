#dyn 0x740000
#org @main
lock
faceplayer
message @talk
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yes
jump @no

#org @yes
checkgender
compare LASTRESULT BOY
if == LASTRESULT 0x01
jump @girl
message @speakyes
callstd MSG_NORMAL
release
end

#org @girl
message @rejectgirl
callstd MSg_NORMAL
release
end

#org @no
message @speakno
callstd MSG_NORMAL
release
end

#org @talk
= Are you here to register as a boy trainer?

#org @speakyes
= Here is your boy's trainer card. It's blue. 

#org @rejectgirl
= You're no boy trainer! I'm afraid you must be a real boy to register here.

#org @speakno
= Then go away.
