BITS 64

global _start

section .rodata
	hello_world db "Hello World", 10, 0
	hello_world_len equ $-hello_world

section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, hello_world
	mov rdx, hello_world_len
	syscall

_exit:
	mov rax, 60
	mov rdi, 0
	syscall