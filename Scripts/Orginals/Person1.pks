#dyn 0x740000
#org @start
lock
faceplayer
msgbox @text ' Are you the new kid in town[?]\nYou don[']t look like any new kid I have ever seen[!]
callstd MSG_NORMAL
release
end

#org @text
= I'm a boy!\n Boy trainer go go!
