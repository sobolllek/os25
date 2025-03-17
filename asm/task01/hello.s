section .data
    msg db "Hello, world!", 0x0A
    len equ $-msg
    ;len equ 14 
 
section .text
    global _start
 
_start:
    mov      eax,   4
    mov      ebx,   1
    mov      ecx,   msg
    mov      edx,   len
    int      0x80
 
L_exit:
    mov      eax,   1
    mov      ebx,   0
;   xor      ebx,   ebx 
    int      80h
