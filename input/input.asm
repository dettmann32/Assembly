segment .data

    LF equ 0xA
    NULL equ 0xD ; final da string
    SYS_EXIT equ 0x1
    STD_IN  equ 0x0
    STD_OUT equ 0x1
    SYS_READ equ 0x3
    SYS_WRITE equ 0x4
    SYS_CALL equ 0x80

section .data
    msg db "Entre com seu nome: ", LF, NULL
    tam equ $- msg

section .bss
    nome resb 1
    nomeTam equ $- nome

section .text

global _start

_start:
    mov eax, SYS_WRITE ;seta o tipo de opp como output
    mov ebx, STD_OUT ;seta a saida padrão
    mov ecx, msg ;mensagem
    mov edx, tam ;tamanho
    int SYS_CALL

;recebe input do terminal 
    mov eax, SYS_READ
    mov ebx, STD_IN
    mov ecx, nome
    mov edx, 0xA
    int SYS_CALL

;retorna o nome pra o usuario
    mov eax, SYS_WRITE ;seta o tipo de opp como output
    mov ebx, STD_OUT ;seta a saida padrão
    mov ecx, nome ;mensage
    mov edx, 0xA;tamanho
    int SYS_CALL


    mov eax, SYS_EXIT
    xor ebx, ebx
    int SYS_CALL