#dyn 0x740000
#org @start
lock
faceplayer
msgbox @text ' Do you want to read about\nBOTH MAN AND WOMAN?
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @read
release
end

#org @read
msgbox @readtext
callstd MSG_NOCLOSE
release
end

#org @text
= Do you want to read about\nBOTH MAN AND WOMAN?

#org @readtext
= BOTH MAN AND WOMAN\nTo be both genders.\pExample: androgyne\nSomeone who is between the two binary\ngenders, or rejects gender completely.
