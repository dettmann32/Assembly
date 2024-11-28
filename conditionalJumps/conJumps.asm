section .data
    MSG1 db "X e maior que Y",0XA
    TAM1 EQU $- MSG1

    MSG2 DB "X E MENOR QUE Y",0XA
    TAM2 EQU $- MSG2


SECTION .text

    GLOBAL _start

    _start:
        
        MOV EAX, 0X2 ;X
        MOV EBX, 0X3 ;Y 

        ;AQUI ELE COMPARA OS REGISTRADORES E SALTA PARA FINAL SE FOR MAIOR 
        CMP EAX, EBX
        JG MAIOR

        ;AQUI ELE CARREGA A MENSAGEM DE QUE X É MENOR
        MOV ECX, MSG2
        MOV EDX, TAM2

        ;AQUI ELE PULA PARA O FINAL, CASO A CONDIÇÃO DO JG NÃO SEJA SATISFEITA
        JMP FINAL

        MAIOR:
            MOV ECX, MSG1
            MOV EDX, TAM1
            

        FINAL: 
        ;CONFIGURA SAIDA PADRÃO E CHAMA A KERNEL PARA ENVIAR A MENSAGEM
            MOV EAX, 0X4
            MOV EBX, 0X1
            INT 0X80

        ;ENCERRA O PROGRAMA
            MOV EAX, 0X1
            XOR EBX, EBX
            INT 0X80

