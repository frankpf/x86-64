; Program: exit
;
; Executes the exit syscall
;
; No input
; Output: only the exit status ($? in the shell)

segment .text ; Indicates to the assembler that the data/code below is to be placed in the .text section
global _start

_start:
	mov eax,1 ; 1 is the exit syscall number
	mov ebx,5 ; the status value to return
	int 0x80  ; execute the syscall
