global _ft_memcpy
section .text

_ft_memcpy:
	push rdi
	mov rcx, rdx
	cld
	rep movsb

end:
	pop rax
	ret
