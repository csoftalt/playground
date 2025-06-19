section .data
    msg db 'Sema, Wantam', 10
    len equ $ - msg
section .text
global _start

_start:
    ; write syscall
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 is stdout
    mov ecx, msg        ; pointer to the message
    mov edx, len        ; length of the message
    int 0x80            ; invoke the kernel

    ; exit syscall
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; return status 0
    int 0x80            ; invoke the kernel