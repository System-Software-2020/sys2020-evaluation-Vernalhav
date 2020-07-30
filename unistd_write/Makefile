
CFLAGS = -O0 -fcf-protection=none -m32
C_FLAGS = 

# Relocatable code
ex1-c: ex1.o
	gcc -m32 -fno-pie  $^ -o $@

# Position independent code
ex1-c2: ex1.o
	gcc -m32 -fpie $^ -o $@


%.o : %.c
	gcc $(CFLAGS) $(C_FLAGS) -c $< -o $@



.PHONY: clean

clean:
	rm *.o ex1-c