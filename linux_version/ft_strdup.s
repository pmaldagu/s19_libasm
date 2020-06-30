	global	ft_strdup
	extern	malloc
	extern	ft_strcpy
	extern	ft_strlen

ft_strdup:
	xor	rax, rax
	xor	rsi, rsi

	push	rdi
	call	ft_strlen
	mov	rdi, rax
	inc	rdi
	call	malloc
	cmp	rax, 0
	je	error
	pop	rsi
	mov	rdi, rax
	call	ft_strcpy

return:
	ret

error:
	mov	rax, 0
	ret
