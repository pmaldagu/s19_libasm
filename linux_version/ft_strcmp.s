	global ft_strcmp

ft_strcmp:
	xor		rax, rax
	xor 	rdx, rdx
	cmp		rdi, 0
	je		return
	cmp		rsi, 0
	je		return

while:
	mov		dl, byte [rdi + rax]
	cmp		byte [rsi + rax], dl
	jne		return
	cmp		dl, 0
	je		return
	cmp		byte [rsi + rax], 0
	je		return
	inc		rax
	jmp		while

return:
	cmp		dl, byte [rsi + rax]
	jl		inferior
	jg		superior
	mov		rax, 0
	ret

inferior
	mov		rax, -1
	ret

superior:
	mov		rax, 1
	ret

