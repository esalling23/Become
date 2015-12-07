#dynamic 0x740000
#org 0x74BE46
jump @start ' This redirects the script to your dynamic-offset version. Remove this line if you don't want this.

#org @start
'-----------------------------------
lock
faceplayer
msgbox @text1 ' I remember when I be...
callstd MSG_LOCK ' Built-in lock command
release
end


#org @text1
= I remember when I became a trainer!\pOf course, back then no one bothered\nto ask if you weren't binary in the\pfirst place!\nThey all just assumed you were!
