	global	_ft_strlen
	section .text

_ft_strlen:
	xor	rax, rax	;mov rax, 0 initialise aussi a 0
	cmp	rdi, 0
	je	return
	jmp	compare

incre:
	inc	rax

compare:
	cmp	byte [rdi + rax], 0
	jne	incre

return:
	ret
