#org 0x8740095
'-----------------------------------
lock
checkflag 0x200
if true jump 0x87400CF ' Flag is set
setflag FR_POKEMON
countpokemon
compare LASTRESULT 0x6
if == jump 0x87400D1 ' Equal To
addpokemon DITTO 5 NONE 0x0 0x0 0x0
setflag 0x200
storepokemon 0x0 DITTO
message 0x8740105 ' You got a \v\h02!
fanfare 0x101
showmsg
waitfanfare
waitbutton
release
end

#org 0x87400CF
'-----------------------------------
release
end

#org 0x87400D1
'-----------------------------------
msgbox 0x87400DB ' You don't have enoug...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end


#org 0x8740105
= You got a \v\h02!

#org 0x87400DB
= You don't have enough room in your party.
