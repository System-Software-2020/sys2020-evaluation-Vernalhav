//#include <unistd.h>

void write(int fd, char *string, int len);


int main(){
    write(1, "Hello\n", 6);
    return 0;
}

void _start(){
    main();
    __asm__("mov $1, %eax");
    __asm__("int $0x80");
}