global _ft_strcat
section .text

_ft_strcat:
	mov rbx, 0
	cmp rsi, 0
	je end
	loop_1:
		cmp [rdi + rbx], byte 0
		je loop_2
		inc rbx
		jmp loop_1
	loop_2:
		cmp [rsi], byte 0
		je end
		mov r11, [rsi]
		mov [rdi + rbx], r11
		inc rsi
		inc rbx
		jmp loop_2
end:
	mov rax, rdi
	ret