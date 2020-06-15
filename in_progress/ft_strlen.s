	global _ft_strlen
	section	.text

_ft_strlen:
	xor	rax, rax
	cmp	rdi, 0
	je	return

_while_loop:
	cmp	byte [rdi + rax], 0
	je	_return
	inc	rax
	jmp	_while_loop

_return:
	ret
