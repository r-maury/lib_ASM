global _ft_strlen
section .text

_ft_strlen:
	mov rax, 0
	cmp rdi, 0
	je end
	push rbp
	mov rbp, rsp
	sub rcx, rcx
	not rcx
	CLD
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	jmp end

end:
	mov rsp, rbp
	pop rbp
	ret