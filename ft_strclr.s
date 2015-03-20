extern _ft_strlen
extern _ft_bzero
global _ft_strclr

section .text

_ft_strclr:
	cmp rdi, 0
	je end
	push rdi
	call _ft_strlen
	mov rsi, rax
	pop rdi
	call _ft_bzero

end:
	ret
