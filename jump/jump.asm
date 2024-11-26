section .data
    msg db "Hello World!", 0Ax ;string com quebra de linha
    tmn equ $- msg

    msg2 db "Hello World! 2", 0Ax ;string com quebra de linha
    tmn2 equ $- msg


section .text


global _start


_start:

    mov eax, 0x4 ;chamando writer do kernel
    mov ebx, 0x1 ;conficurando saida
    jmp msgDois ; pula para bloco de msg2, esse comando muda o endereço do pc
    mov ecx, msg ;setando string
    mov edx, tmn ;setando tamanho da string


    msgDois:  ;essas labels representam endereços de memoria, pois é praticamenete imposivel manusealos manualmente
        mov ecx, msg2 ;setando string
        mov edx, tmn2 ;setando tamanho da string

    int 0x80 ;comando de maquinas antigas para syscall 


    ;encerrando
    mov eax, 0x1 ;so escaneia e identifica o fim do programa
    xor ebx, ebx ;valor de retorno do programa
    int 0x80