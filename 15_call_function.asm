# ====================================================================
# Lesson 15 - Introduction to Functions
# 'jal label'  = Jump And Link: jump to label, store return addr in $ra
# 'jr   $ra'   = Jump Register: jump to whatever address is in $ra
# Together they make function call & return possible.
# ====================================================================

.data
    msg: .asciiz "Hello from a function!"

.text
main:
    jal  greet               # call greet(); $ra <- next instr address

    li   $v0, 10             # exit when we come back
    syscall

# --- greet(): prints msg, then returns ---
greet:
    li   $v0, 4              # print string
    la   $a0, msg
    syscall
    jr   $ra                 # return to caller (main)
