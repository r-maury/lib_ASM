global _ft_isprint
section .text

_ft_isprint:
	cmp rdi, 32
	jl end_f
	cmp rdi, 126
	jg end_f
	jmp end_s

end_f:
	mov rax, 0
	ret
end_s:
	mov rax, 1
	ret