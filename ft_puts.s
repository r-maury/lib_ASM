%define MACH_SYSCALL(nb)    0x2000000 | nb
%define WRITE                4

global _ft_puts
extern _ft_strlen

section .data
buff: db "(null)", 10
size equ $ - buff

section .text

_ft_puts:
	cmp rdi, 0
	je null
	mov rsi, rdi
	call _ft_strlen
	mov rdx, rax
	mov rdi, 1
	mov rax, MACH_SYSCALL(WRITE)
	push 10
	pop rax
	syscall
	jmp end

null:
	lea rsi, [rel buff]
	mov rdi, 1
	mov rdx, size
	mov rax, MACH_SYSCALL(WRITE)
	syscall

end:
	ret