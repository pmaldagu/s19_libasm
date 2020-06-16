	global	_ft_strcmp

_ft_strcmp:
	xor	rax, rax
	xor	rcx, rcx
	xor	rdx, rdx
	cmp	rdi, 0

_while_loop:
	mov	dl, byte [rsi + rcx]
	cmp	byte [rdi + rcx], dl
	jne	_compare
	cmp	dl, 0
	je	_compare
	cmp	byte [rdi + rcx], 0
	je	_compare
	inc	rcx
	jmp	_while_loop

_compare:
	cmp	byte [rdi + rcx], dl
	jl	_inferior
	jg	_superior
	ret

_inferior:
	mov	rax, -1
	ret

_superior:
	mov	rax, 1
	ret
