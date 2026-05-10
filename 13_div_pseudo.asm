# ====================================================================
# Lesson 13 - Dividing Integers part 1
# 'div rd, rs, rt' (3-operand) is a PSEUDO form.
# Stores ONLY the quotient in rd, discarding the remainder.
# Use this when you don't care about the remainder.
# ====================================================================

.data
    num1: .word 17
    num2: .word 5

.text
    lw   $t0, num1
    lw   $t1, num2

    div  $t2, $t0, $t1       # $t2 = 17 / 5 = 3 (remainder discarded)

    li   $v0, 1
    move $a0, $t2
    syscall

    li   $v0, 10
    syscall
