
CFLAGS= -O0 -fcf-protection=none -m32


ex1-c-asm: ex1.o ex2.o
	gcc $(CFLAGS) $^ -o $@


ex1.o : ex1.c
	gcc $(CFLAGS) -c -fno-pic $< -o $@


ex2.o : ex2.asm
	nasm -f elf32 ex2.asm -o ex2.o

.PHONY: clean

clean:
	rm -f *.o ex1-c ex1-c-asm