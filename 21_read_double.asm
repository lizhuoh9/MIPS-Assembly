# ====================================================================
# Lesson 21 - Getting User's Input (doubles)
# syscall 7: read double; result lands in the $f0/$f1 pair.
# Doubles ALWAYS occupy an even/odd FP register pair.
# Move to $f12/$f13 before calling print-double (syscall 3).
# ====================================================================

.data
    prompt: .asciiz "Enter a double: "
    result: .asciiz "\nYou entered: "

.text
    li   $v0, 4
    la   $a0, prompt
    syscall

    # --- read double ---
    li   $v0, 7
    syscall
    mov.d $f20, $f0          # stash in the $f20/$f21 pair

    li   $v0, 4
    la   $a0, result
    syscall

    # --- print the double (must be in $f12/$f13) ---
    li   $v0, 3
    mov.d $f12, $f20
    syscall

    li   $v0, 10
    syscall
