	global	ft_strcmp

ft_strcmp:
	xor	rax, rax
	xor	rcx, rcx
	xor	rdx, rdx
	cmp	rdi, 0

while_loop:
	mov	dl, byte [rsi + rcx]
	cmp	byte [rdi + rcx], dl
	jne	compare
	cmp	dl, 0
	je	compare
	cmp	byte [rdi + rcx], 0
	je	compare
	inc	rcx
	jmp	while_loop

compare:
	cmp	byte [rdi + rcx], dl
	jl	inferior
	jg	superior
	ret

inferior:
	mov	rax, -1
	ret

superior:
	mov	rax, 1
	ret
