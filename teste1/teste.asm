section .data
    msg db 'Hello wold!'
    tam equ $- msg


section .bss

section .text

global _start

_start:

    mov EAX, 0x4 ;saida padrão
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80



    ;destino, origen
    mov eax, 0x1          ;terminando o programa
    mov ebx, 0x0          ;valor de retorno
    int 0x80              ;essa parte serve para processar o bloco de cima