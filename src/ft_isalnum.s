global _ft_isalnum
section .text

_ft_isalnum:
	cmp rdi, 122
	jg end_f
	cmp rdi, 48
	jl end_f
	cmp rdi, 57
	jle end_s
	cmp rdi, 97
	jge end_s
	cmp rdi, 65
	jl end_f
	cmp rdi, 90
	jg end_f
	jmp end_s

end_f:
	mov rax, 0
	ret
end_s:
	mov rax, 1
	ret