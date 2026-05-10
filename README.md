# MIPS Assembly

Coursework for the **Computer Architecture** class at
**Hanyang University ERICA Campus — Department of Robotics**.

- **Instructor:** Prof. Bumjin Jang
- **Simulator:** [MARS — MIPS Assembler and Runtime Simulator](https://dpetersanderson.github.io/)

---

## About

This repository contains MIPS assembly programs written while working
through Amell Peralta's
[**MIPS Assembly Programming Simplified**](https://www.youtube.com/watch?v=u5Foo6mmW0I&list=PL5b07qlmA3P6zUdDf-o97ddfpvPFuNa5A)
tutorial series on YouTube. Each file corresponds to one lesson and is
self-contained, runnable in MARS without any external dependencies.

Lessons 1 and 2 of the playlist cover the MARS IDE itself and the MIPS
register conventions — they have no associated code, so this repo
starts at lesson 3.

---

## Files

| File | Lesson | Topic |
|---|---|---|
| `03_print_string.asm` | 3 | Print a string (`syscall 4`) |
| `04_print_character.asm` | 4 | Print a character (`syscall 11`) |
| `05_print_integer.asm` | 5 | Print an integer (`syscall 1`) |
| `06_print_float.asm` | 6 | Print a float (`syscall 2`, `lwc1`) |
| `07_print_double.asm` | 7 | Print a double (`syscall 3`, `l.d`) |
| `08_add_integers.asm` | 8 | Integer addition (`add`) |
| `09_subtract_integers.asm` | 9 | Integer subtraction (`sub`) |
| `10_mul_pseudo.asm` | 10 | Multiplication via `mul` pseudo-instruction |
| `11_mult_hilo.asm` | 11 | Multiplication via `mult` + `mflo` / `mfhi` |
| `12_sll_shift.asm` | 12 | Multiplication by power of two (`sll`) |
| `13_div_pseudo.asm` | 13 | Division via `div` pseudo (quotient only) |
| `14_div_hilo.asm` | 14 | Division via `div` + `mflo` / `mfhi` (quotient + remainder) |
| `15_call_function.asm` | 15 | Function call with `jal` / `jr` |
| `16_function_args_return.asm` | 16 | Function arguments (`$a0`-`$a3`) and return values (`$v0`) |
| `17_save_to_stack.asm` | 17 | Saving callee-saved registers to the stack |
| `18_recursive_factorial.asm` | 18 | Nested procedures and recursion (factorial) |
| `19_read_integer.asm` | 19 | Read integer from user (`syscall 5`) |
| `20_read_float.asm` | 20 | Read float from user (`syscall 6`) |
| `21_read_double.asm` | 21 | Read double from user (`syscall 7`) |
| `22_read_string.asm` | 22 | Read string from user (`syscall 8`) |

---

## How to Run

All programs are simulated in **MARS** (download from
<https://dpetersanderson.github.io/> — requires Java).

1. Launch MARS (`Mars4_5.jar`).
2. `File → Open` and pick any `.asm` file from this repository.
3. Click **Assemble** (the wrench icon, or `F3`).
4. Click **Run** (the green arrow, or `F5`).
5. Output appears in the bottom **Run I/O** pane; for the input
   lessons (19-22) type your input there and press **Enter**.

Each program ends with `syscall 10` (exit), so MARS will report a clean
program termination.

---

## Reference

- **Playlist:** Amell Peralta — *MIPS Assembly Programming Simplified*
  <https://www.youtube.com/watch?v=u5Foo6mmW0I&list=PL5b07qlmA3P6zUdDf-o97ddfpvPFuNa5A>
- **MARS simulator:** Kenneth Vollmar & Pete Sanderson
  <https://dpetersanderson.github.io/>

---

## License

See [`LICENSE`](LICENSE).
