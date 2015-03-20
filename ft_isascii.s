global _ft_isascii
section .text

_ft_isascii:
	cmp rdi, 0
	jl end_f
	cmp rdi, 127
	jg end_f
	jmp end_s

end_f:
	mov rax, 0
	ret
end_s:
	mov rax, 1
	ret