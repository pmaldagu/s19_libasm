	global	_ft_strcmp
	section	.text

_ft_strcmp:
	push	rdx
	push	rcx
	xor	rax, rax
	cmp	rdi, 0
	je	_return
	camp	rsi, 0
	je	_return

_while_loop:
	mov	dl, byte [rsi + rcx]
	cmp	byte [rdi + rcx], dl
	jne	_return
	cmp	dl, 0
	je	_return
	cmp	byte [rdi + rcx], 0
	je	_return
	inc	rcx
	jmp	_while_loop

_return:
	sub	dl, byte [rdi + rcx]
	mov	rax, rdx
	pop	rcx
	pop	rdx
	ret
