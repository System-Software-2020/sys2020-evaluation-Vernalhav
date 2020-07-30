

void write(int fd, char *string, int len){

    register int eax __asm__("eax");
    register int ebx __asm__("ebx");
    register int ecx __asm__("ecx");
    register int edx __asm__("edx");

    ebx = fd;
    ecx = (int)string;
    edx = len;
    eax = 4;

    __asm__("int $0x80");
}