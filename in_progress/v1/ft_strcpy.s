	global	_ft_strcpy
	section	.text

_ft_strcpy:
	push	rcx
	mov	rdx, 0
	mov	rax, rdi
	cmp	rdi, 0
	je	return
	cmp	rsi, 0
	je	return
	mov	rcx, 0
	jmp	copy

incre:
	inc	rcx

copy:
	mov	dl, byte [rsi + rcx]
	mov	byte [rdi + rcx], dl
	cmp	dl, 0
	jnz	incre

return:
	mov	rax, rdi
	ret
