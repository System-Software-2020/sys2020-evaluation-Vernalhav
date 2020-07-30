
void write(int fd, char *string, int len);


int main(){
    write(1, "Hello\n", 6);
    return 0;
}