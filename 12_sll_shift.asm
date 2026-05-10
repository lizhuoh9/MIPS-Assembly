# ====================================================================
# Lesson 12 - Multiplying via Shift (sll)
# 'sll rd, rt, shamt' shifts rt LEFT by shamt bits.
# Each left shift multiplies by 2, so 'sll x, x, 3' = x * 8.
# Much faster than mul when the multiplier is a power of 2.
# ====================================================================

.data
    num: .word 5

.text
    lw   $t0, num            # $t0 = 5

    sll  $t1, $t0, 3         # $t1 = 5 << 3 = 5 * 2^3 = 40

    li   $v0, 1
    move $a0, $t1
    syscall

    li   $v0, 10
    syscall
