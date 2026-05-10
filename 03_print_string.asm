# ====================================================================
# Lesson 3 - Hello Assembly!
# Demonstrates: syscall 4 (print string), syscall 10 (exit)
# ====================================================================

.data
    msg: .asciiz "Hello World!"   # null-terminated string in memory

.text
    # --- print the string ---
    li   $v0, 4              # service code 4 = print null-terminated string
    la   $a0, msg            # load address of the string into $a0
    syscall                  # invoke OS service

    # --- clean exit ---
    li   $v0, 10             # service code 10 = terminate program
    syscall
