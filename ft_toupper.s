global _ft_toupper
section .text

_ft_toupper:
	cmp rdi, 97
	jl end_f
	cmp rdi, 122
	jg end_f
	sub rdi, 32
	mov rax, rdi
	jmp end

end_f:
	mov rax, rdi
	ret
end:
	ret