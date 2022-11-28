	global	_ft_strdup
	extern	_malloc
	extern	_ft_strcpy
	extern	_ft_strlen

_ft_strdup:
	xor	rax, rax
	xor	rsi, rsi

	push	rdi
	call	_ft_strlen
	mov	rdi, rax
	inc	rdi
	call	_malloc
	cmp	rax, 0
	je	_error
	pop	rsi
	mov	rdi, rax
	call	_ft_strcpy

_return:
	ret

_error:
	mov	rax, 0
	ret
