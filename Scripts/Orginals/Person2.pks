#dyn 0x740000
#org @start
lock
faceplayer
msgbox @text ' Hey! What's your name? /n.../lOkay, but what's your REAL name?
callstd MSG_NORMAL
release
end

#org @text
= Hey! What's your name? /n.../lOkay, but what's your REAL name?
