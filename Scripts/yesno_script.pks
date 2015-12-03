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
message @speakyes
callstd MSG_NORMAL
release
end

#org @no
message @speakno
callstd MSG_NORMAL
release
end

#org @talk
= Hey there! You look like a kid who could use a little help figuring out who you are!

#org @speakyes
= You should go ask Prof. Oak if he will ask "are you a boy or a girl?" again, and then you can choose! Maybe this time it will work!

#org @speakno
= Then go away.
