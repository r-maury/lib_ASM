extern _malloc
extern _ft_memcpy
extern _ft_strlen
global _ft_strdup

section .text

_ft_strdup:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je end
	push rdi
	call _ft_strlen
	mov rdi, rax
	push rax
	call _malloc
	mov rdi, rax
	pop rdx
	pop rsi
	call _ft_memcpy

end:
	mov rsp, rbp
	pop rbp
	ret
