segment .data
    msg dd "mensagem um", 0xa
    tam equ $- msg

segment .text


    chamaMensagem:
        mov eax, 0x4
        mov ebx, 0x1
        mov ecx, msg 
        mov edx, tam
        int 0x80
        ret