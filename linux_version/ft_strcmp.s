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
	mov		rdi, [rdi + rax]
	and		rdi, 255
	mov		rsi, [rsi + rax]
	and		rsi, 255
	mov		rax, rdi
	sub		rax, rsi
	ret
