global _ft_memset
section .text

_ft_memset:
	mov rax, rsi
	mov rcx, rdx
	push rdi
	cld
	rep stosb
	pop rax

end:
	ret