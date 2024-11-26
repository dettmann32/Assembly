section .data
    msg db "Hello World!", 0Ax ;string com quebra de linha

    tmn equ $- msg


section .text


global _start


_start:

    mov eax, 0x4 ;chamando writer do kernel
    mov ebx, 0x1 ;conficurando saida
    mov ecx, msg ;setando string
    mov edx, tmn ;setando tamanho da string
    int 0x80 ;comando de maquinas antigas para syscall 


    ;encerrando
    mov eax, 0x1 ;so escaneia e identifica o fim do programa
    xor ebx, ebx ;valor de retorno do programa
    int 0x80