     1                                  section .data
     2 00000000 48656C6C6F2C20776F-         msg db "Hello, world!", 0x0A
     2 00000009 726C64210A         
     3                                      len equ $-msg
     4                                      ;len equ 14 
     5                                   
     6                                  section .text
     7                                      global _start
     8                                   
     9                                  _start:
    10 00000000 B804000000                  mov      eax,   4
    11 00000005 BB01000000                  mov      ebx,   1
    12 0000000A B9[00000000]                mov      ecx,   msg
    13 0000000F BA0E000000                  mov      edx,   len
    14 00000014 CD80                        int      0x80
    15                                   
    16                                  L_exit:
    17 00000016 B801000000                  mov      eax,   1
    18 0000001B BB00000000                  mov      ebx,   0
    19                                  ;   xor      ebx,   ebx 
    20 00000020 CD80                        int      80h
