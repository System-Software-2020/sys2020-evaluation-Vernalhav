
CFLAGS= -O0 -fcf-protection=none -m32


ex1-c: ex1.o ex2.o
	gcc $(CFLAGS) $^ -o $@


%.o : %.c
	gcc $(CFLAGS) -c -fno-pic $< -o $@


.PHONY: clean

clean:
	rm *.o ex1-c