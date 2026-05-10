# ====================================================================
# Lesson 8 - Adding Integers
# Demonstrates: lw (load word from memory), add, move
# ====================================================================

.data
    num1: .word 10           # 32-bit integers in memory
    num2: .word 20

.text
    # --- load operands from memory into registers ---
    lw   $t0, num1           # $t0 = 10
    lw   $t1, num2           # $t1 = 20

    # --- add ---
    add  $t2, $t0, $t1       # $t2 = $t0 + $t1 = 30

    # --- print the result ---
    li   $v0, 1              # print int
    move $a0, $t2            # move = "add $a0, $t2, $zero"
    syscall

    # --- clean exit ---
    li   $v0, 10
    syscall
