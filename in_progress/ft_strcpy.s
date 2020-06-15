	global _ft_strcpy
	section	.text

_ft_strcpy:
	push	rcx
	;push	rbx	pour ne pas changer rsi ?
	mov	rax, rbi
	xor	rcx, rcx
	cmp	rsi, 0
	je 	_return
	cmp	rdi, 0
	je	_return

_while_loop:
	mov	dl, byte [rsi + rcx]
	mov	byte [rax + rcx], dl
	cmp	dl, 0
	je	_return
	inc	rcx
	jmp	_while_loop

_return:
	pop	rcx
	ret
