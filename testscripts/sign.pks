#dynamic 0x740000
#org 0x165862
jump @start ' This redirects the script to your dynamic-offset version. Remove this line if you don't want this.

#org @start
'-----------------------------------
msgbox @text1 ' USE
callstd MSG_SIGN ' Signpost-style message
end


#org @text1
= become \pWhere you don't get to choose,\nbut you do get to choose[.]
