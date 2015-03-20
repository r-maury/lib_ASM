global _ft_tolower
section .text

_ft_tolower:
	cmp rdi, 65
	jl end_f
	cmp rdi, 90
	jg end_f
	add rdi, 32
	mov rax, rdi
	jmp end

end_f:
	mov rax, rdi
	ret
end:
	ret