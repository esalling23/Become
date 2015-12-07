#dyn 0x740000
#org @start
lock
faceplayer
checkflag 0x200
if == jump @allset
msgbox @text ' Mom told you to do your homework.\pIf you're going to be who you are,\nyou better know your normal.
callstd MSG_NORMAL
release
end

#org @allset
msgbox @allsettext
callstd MSG_NORMAL
applymovement 0x1 @move
release
end

#org @move
m move_right look_left end

#org @allsettext
= Isn't it better to know who\nyou are?

#org @text
= Mom told you to do your homework.\pIf you're going to be who you are,\nyou better know your normal.
