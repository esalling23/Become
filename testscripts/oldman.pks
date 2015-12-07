#dyn 0x740000
#org @start
lock
faceplayer
msgbox @text ' I remember when I became a trainer!\pOf course, back then no one bothered\nto ask if you weren't binary in the\pfirst place!\nThey all just assumed you were!
callstd MSG_NORMAL
release
end

#org @text
= I remember when I became a trainer!\pOf course, I wouldn't have known\nthe first thing about all these identities!\pSeems like an awful bunch of worry\nover something like that[.]
