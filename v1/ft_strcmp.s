	global _ft_strcmp
	section .text

_ft_strcmp:
	mov	rax, 5
	cmp	rdi, 0
	je	return
	cmp	rsi, 0
	je 	return
	mov	rcx, 0		;xor rdx, rdx initialise aussi
	mov	r13, rdi
	mov	r12, rsi
	jmp	compare

inferior:
	mov	rax, -1
	jmp	return

superior:
	mov	rax, 1
	jmp	return

compare:
	cmp	byte [r13 + rcx], 0
	je	return
	cmp	byte [r12 + rcx], 0
	je	return
	mov	dl, byte [r13 + rcx]
	cmp	byte [r12 + rcx], dl
	inc	rcx
	jl	inferior
	jg	superior
	jmp	compare

return:
	pop	rcx
	pop	r13
	pop	r12
	ret
