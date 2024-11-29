segment .data
    msg2 dd "mensagem dois", 0xa
    tam2 equ $- msg

segment .text


    chamaMensagem2:
        mov eax, 0x4
        mov ebx, 0x1
        mov ecx, msg2 
        mov edx, tam2
        int 0x80
        ret