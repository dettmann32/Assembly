%include 'lib.inc'

section .text

    global _start

    _start:

        lea esi, [buffer] ;associa esi ao endereço de buffer, que esta em lib.inc
        add esi, 0x9
        mov byte[esi], 0xA

        dec esi
        mov dh, 0x11
        add dh, '0'
        mov [esi], dh

        call saidRedultado; da lib.inc

        mov eax, 0x1
        xor ebx, ebx
        int 0x80

