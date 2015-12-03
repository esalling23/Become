#dyn 0x740000
#org @start
lock
faceplayer
msgbox @text ' I was born a girl!\nSo, I registered as a girl!\pYou can't register as the opposite\n gender of your birth!
callstd MSG_NORMAL
release
end

#org @text
= I was born a girl!\nSo, I registered as a girl!\pYou can't register as the opposite\n gender of your birth!
