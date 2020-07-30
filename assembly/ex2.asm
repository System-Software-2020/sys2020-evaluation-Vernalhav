    ;; Program ex1.asm
    ;; nasm -f elf32 ex1.asm -o ex1.o
    ;; ld -m elf_i386 ex1.o -o ex1
     
    
        global write        
    
        section .text

write:
        ;; Prologue: saving stack pointer
        push ebp                
        mov ebp, esp

        push ebx
        
        mov ebx, [esp+12]                 
        mov ecx, [esp+16]                 
        mov edx, [esp+20]                 
        mov eax, 4              
        int 0x80

        pop ebx                
        
        ;; Epilogue: returning stack pointer and backup pointer
        mov esp, ebp            
        pop ebp
        ret
