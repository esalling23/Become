#dyn 0x740000
#org @start
lock
faceplayer
msgbox @text ' I'm afraid you cannot pass.\nOnly POK\eMON trainers beyond\p this point.
callstd MSG_NORMAL
release
end

#org @text
= I'm afraid you cannot pass.\nOnly POK\eMON trainers beyond\p this point.
