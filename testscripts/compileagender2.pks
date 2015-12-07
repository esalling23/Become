#dynamic 0x740000
#org 0x74080B
jump @start ' This redirects the script to your dynamic-offset version. Remove this line if you don't want this.

#org @start
'-----------------------------------
jump @code2

#org @code2
'-----------------------------------
lock
faceplayer
checkflag 0x1234
if true jump @code3 ' Flag is set
message @text1 ' Hey OTHER!\pWelcome ...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump @code4 ' Equal To
jump @code5

#org @code3
'-----------------------------------
message @text2 ' You already register...
callstd MSG_LOCK ' Built-in lock command
release
end

#org @code4
'-----------------------------------
message @text3 ' Agendered people mus...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump @code6 ' Equal To
jump @code5

#org @code6
'-----------------------------------
message @text4 ' Great!\nYou are now ...
callstd MSG_LOCK ' Built-in lock command
setflag 0x1234
disappear 0x7
disappear 0x8
disappear 0x9
release
end

#org @code5
'-----------------------------------
message @text5 ' Then go away.
callstd MSG_LOCK ' Built-in lock command
release
end


#org @text1
= Hey OTHER!\pWelcome to non-binary trainer\nidentity norm registration!\pDo you want to hear how to become agender?

#org @text2
= You already registered your identity,\nOTHER!

#org @text3
= Agendered people must[.]\nDo you choose to be agender?

#org @text4
= Great!\nYou are now registered as an\lagender trainer!\pGo speak to OTHER Prof. Oak to receive your\nnon-binary starter POKeMON and go on your\plife adventures!

#org @text5
= Then go away.
