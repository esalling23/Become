#dyn 0x740000
#org @start
lock
faceplayer
checkflag 0x1234
if == jump @chosen
message @talk 
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yes
jump @no

#org @chosen
message @chosenmsg
callstd MSG_NORMAL
release
end

#org @chosenmsg
= You already registered your norm,\n\v\h01!

#org @talk
= Hey \v\h01!\pWelcome to non-binary trainer\nnorm registration!\pDo you want to hear how to become agender?

#org @yes
message @speakyes
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @choose
jump @no

#org @speakyes
= Agendered people must[.]\nDo you choose to be agender?

#org @choose
message @ready
callstd MSG_NORMAL
setflag 0x1234
disappear 0x7
disappear 0x8
disappear 0x9
release
end

#org @ready
= Great!\nYou are now registered as an\lagender trainer!\pGo speak to OTHER Prof. Oak to receive your\nnon-binary starter POKeMON and go on your\plife adventures!

#org @no
message @speakno
callstd MSG_NORMAL
release
end

#org @speakno
= Then go away.