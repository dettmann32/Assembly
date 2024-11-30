segment .data


    bufferTam equ 0xA
segment .bss

    buffer resb 0x1

segment .text


    saidRedultado:
        mov eax, 0x4
        mov ebx, 0x1
        mov ecx, buffer
        mov edx, bufferTam
        int 0x80
        ret