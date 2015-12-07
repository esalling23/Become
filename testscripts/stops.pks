#dyn 0x740000
#org @start
lockall
message @text ' You wake up from a dream[.]
callstd MSG_STANDARD
releaseall
end

#org @text
= Something stops you[.]\lYou recall choosing your identity[.]\pWhat was it that you chose again[.]?\nSomehow, it seems to have not mattered at all[.]
