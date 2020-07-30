
CFLAGS= -O0 -fcf-protection=none -m32
PREFIX=.


all: ex1

install: libex2.so ex1
	mkdir -p $(PREFIX)/usr/lib && mv libex2.so $(PREFIX)/usr/lib
	mkdir -p $(PREFIX)/usr/bin && mv ex1 $(PREFIX)/usr/bin

uninstall:
	rm -f $(PREFIX)/usr/lib/libex2.so
	rm -f $(PREFIX)/usr/bin/ex1
	find $(PREFIX)/usr -type d -empty -delete		# Remove $PREFIX/usr/* if it is empty
	rm -f *.o

ex1: ex1.o libex2.so
	gcc $(CFLAGS) $< -L. -L$(PREFIX)/usr/lib -Wl,-rpath='$$ORIGIN' -Wl,-rpath=$(PREFIX)/usr/lib -lex2  -o $@

libex2.so: ex2.o
	gcc $(CFLAGS) $(C_FLAGS) --shared $^ -o $@

%.o: %.c
	gcc -fpic $(CFLAGS) $(C_FLAGS) -c $^ -o $@


.PHONY: clean all install uninstall

clean:
	rm -f *.o ex1 *.so