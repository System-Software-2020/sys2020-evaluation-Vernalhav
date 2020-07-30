    
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
