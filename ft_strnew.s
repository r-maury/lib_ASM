extern _malloc
extern _ft_memset
global _ft_strnew
section .text

_ft_strnew:
	push rdi
	call _malloc
	mov rdi, rax
	mov rsi, 0
	pop rdx
	call _ft_memset

end:
	ret