# ====================================================================
# Lesson 19 - Getting User's Input (integers)
# syscall 5: read int from console; result placed in $v0.
# Always save the value to another register IMMEDIATELY,
# because the next syscall will overwrite $v0.
# ====================================================================

.data
    prompt: .asciiz "Enter an integer: "
    result: .asciiz "\nYou entered: "

.text
    # --- show prompt ---
    li   $v0, 4
    la   $a0, prompt
    syscall

    # --- read an integer from the user ---
    li   $v0, 5
    syscall
    move $t0, $v0            # SAVE input before next syscall touches $v0

    # --- show "You entered: " ---
    li   $v0, 4
    la   $a0, result
    syscall

    # --- echo the integer back ---
    li   $v0, 1
    move $a0, $t0
    syscall

    li   $v0, 10
    syscall
