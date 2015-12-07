#org 0x874097E
'-----------------------------------
lock
faceplayer
msgbox 0x87409CE ' Are you here to regi...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump 0x8740998 ' Equal To
jump 0x87409C4
release
end

#org 0x8740998
'-----------------------------------
checkgender
compare LASTRESULT BOY
if == call 0x87409B0 ' Equal To
compare LASTRESULT 0x1
if == call 0x87409BA ' Equal To
closemsg
msgbox 0x8740A26 ' You're no boy traine...
callstd MSG_LOCK ' Built-in lock command
release
end

#org 0x87409B0
'-----------------------------------
msgbox 0x8740A26 ' You're no boy traine...
callstd MSG_LOCK ' Built-in lock command
release
end

#org 0x87409C4
'-----------------------------------
msgbox 0x8740A72 ' Then go away.
callstd MSG_LOCK ' Built-in lock command
release
end

#org 0x87409BA
'-----------------------------------
msgbox 0x87409F9 ' Here is your boy's t...
callstd MSG_LOCK ' Built-in lock command
release
end


#org 0x87409CE
= Are you here to register as a boy trainer?

#org 0x8740A26
= You're no boy trainer!\nI'm afraid you must be a REAL boy\l to register here.

#org 0x8740A72
= Then go away.

#org 0x87409F9
= Here is your boy's trainer card. It's blue. 
