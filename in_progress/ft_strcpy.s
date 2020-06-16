	global _ft_strcpy

_ft_strcpy:
	xor	rdx, rdx
	xor	rcx, rcx
	mov	rax, rdi
	ret

_while_loop:
	mov	dl, byte [rsi + rcx]
	mov	byte [rax + rcx], dl
	cmp	dl, 0
	je	_return
	inc	rcx
	jmp	_while_loop

_return:
	ret
