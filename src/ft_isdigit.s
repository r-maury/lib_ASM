global _ft_isdigit
section .text

_ft_isdigit:
	cmp rdi, 48
	jl end_f
	cmp rdi, 57
	jg end_f
	jmp end_s

end_f:
	mov rax, 0
	ret
end_s:
	mov rax, 1
	ret