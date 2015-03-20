global _ft_isalpha
section .text

_ft_isalpha:
	cmp rdi, 122
	jg end_f
	cmp rdi, 65
	jl end_f
	cmp rdi, 90
	jle end_s
	cmp rdi, 97
	jge end_s
	jmp end_f

end_f:
	mov rax, 0
	ret
end_s:
	mov rax, 1
	ret