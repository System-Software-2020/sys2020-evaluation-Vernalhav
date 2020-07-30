# Folder structure  
`./assembly`:       Implementation of `write` in assembly, with a C program calling it.
`./nostdlib`:       Implementation of `write` in C without linking with libc.  
`./stdlib`:         Implementation of `write` in C linking with libc, without `<unistd.h>`.
`./unistd_write`:   Implementation of `ex1.asm` in C, using `<unistd.h>`'s `write`. Both relocatable and position independent can be built. `make ex1-c C_FLAGS=-fno-pic` and `make ex1-c2 C_FLAGS=-fpic` to build them.
`./shared_lib`:     Implementing exercises 4, 5, 6 and 7 of INSTRUCTIONS.


# Programing exercise

Copyright 2020 - Monaco F. J. <monaco@usp.br>
This is Free Software distributed under GNU GPL v3 as detailed in
https://www.gnu.org/licenses/gpl-3.0.txt

## Quick info

For the 2020 course on System Software.

Please, refer to file INSTRUCTIONS.

