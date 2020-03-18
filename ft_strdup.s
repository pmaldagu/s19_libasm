	global	_ft_strdup
	extern	_malloc
	extern	_ft_strcpy
	section	.text

_ft_strdup:
	push	rcx
	push	rbi	;garde en memoire la valeur initiale
	mov	rcx, -1
	xor	rax, rax
	cmp	rdi, 0
	je	_return

_while_lengh:
	inc	rcx
	cmp	byte [rdi + rcx], 0
	jne	_while_lengh

_str_malloc:
	inc	rcx		;pour le 0
	mov	rdi, rcx
	call	_malloc
	cmp	rax, 0
	je	_return

_str_copy:
	pop	rsi	;utilise rbi comme deuxieme registre pour strcpy
	mov	rbi, rax
	call	_ft_strcpy
	
_return:
	pop	rcx
	ret
	
