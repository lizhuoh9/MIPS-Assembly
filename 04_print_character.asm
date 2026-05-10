# ====================================================================
# Lesson 4 - Printing a Character
# Demonstrates: syscall 11 (print one character from low byte of $a0)
# ====================================================================

.text
    # --- print one character ---
    li   $v0, 11             # service code 11 = print char
    li   $a0, 'A'            # ASCII 65 - the character to print
    syscall

    # --- clean exit ---
    li   $v0, 10
    syscall
