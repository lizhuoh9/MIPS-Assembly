# ====================================================================
# Lesson 10 - Multiplying Integers (mul)
# 'mul rd, rs, rt' is a PSEUDO-instruction provided by MARS.
# It computes rd = rs * rt directly into a register (low 32 bits).
# Convenient when you trust the result fits in 32 bits.
# ====================================================================

.data
    num1: .word 6
    num2: .word 7

.text
    lw   $t0, num1
    lw   $t1, num2

    mul  $t2, $t0, $t1       # $t2 = 6 * 7 = 42

    li   $v0, 1
    move $a0, $t2
    syscall

    li   $v0, 10
    syscall
