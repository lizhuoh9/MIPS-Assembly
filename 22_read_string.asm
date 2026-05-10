# ====================================================================
# Lesson 22 - Getting Text From The User
# syscall 8: read string into a buffer
#   $a0 = address of the buffer
#   $a1 = max bytes to read (includes the trailing newline + null)
# Reserve buffer space in .data with '.space N'.
# ====================================================================

.data
    prompt:   .asciiz "Enter your name: "
    greeting: .asciiz "Hello, "
    buffer:   .space 64      # 64 bytes of zero-initialized memory

.text
    # --- show prompt ---
    li   $v0, 4
    la   $a0, prompt
    syscall

    # --- read up to 63 chars + null into buffer ---
    li   $v0, 8
    la   $a0, buffer
    li   $a1, 64
    syscall

    # --- print "Hello, " ---
    li   $v0, 4
    la   $a0, greeting
    syscall

    # --- print the user's name (the buffer is null-terminated) ---
    li   $v0, 4
    la   $a0, buffer
    syscall

    li   $v0, 10
    syscall
