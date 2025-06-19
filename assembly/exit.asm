; PURPOSE: Simple program that exits and returns a
;          status code back to the Linux kernel
;
; INPUT: None
; OUTPUT: returns a status code. This can be viewed
;         by typing:
;
;         echo $?
;
;         after running the program
;
; VARIABLES:
;    eax holds the system call number
;    ebx holds the return status

section .data 

section .text
global _start

_start:
    mov eax, 1       ; syscall number for exit
    mov ebx, 0       ; the status number to return to the OS
    int 0x80         ; invoke the kernel
