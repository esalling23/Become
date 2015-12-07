#org 0x8740001
'-----------------------------------
lockall
msgbox 0x874000B ' Something stops you[...
callstd MSG_NORMAL ' Built-in lock command
releaseall
end


#org 0x874000B
= Something stops you[.]\lYou recall choosing your identity[.]\pWhat was it that you chose again[.]?\nSomehow, it seems to have not mattered at all[.]
