	global ft_strdup
	extern	malloc
	extern	ft_strlen
	extern	ft_strcpy

ft_strdup:
	xor		rax, rax
	xor		rsi, rsi
	cmp		rdi, 0
	je		return

dup:
	push	rdi
	call	ft_strlen
	mov		rdi, rax
	inc		rdi
	call	malloc
	cmp  	rax, 0
	je		return
	pop		rsi
	mov		rdi, rax
	call	ft_strcpy
	ret

return:
	mov		rax, -1
	ret
