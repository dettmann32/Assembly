%include 'lib.inc'
%include 'lib2.inc'
section .data

    x dd 1
    y dd 1


section .text

    global _start


    _start:
       

        mov eax, dword[x]
        mov ebx, dword[y]

        sub eax, ebx

        call chamaMensagem

        jz mensagem2
        jmp final



        mensagem2:
        call chamaMensagem2




        final:

        ;encerra 
        mov eax, 0x1
        xor ebx, ebx
        int 0x80