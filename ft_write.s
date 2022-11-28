	global _ft_write

_ft_write:
	mov	rax, 0x2000004
	syscall
	jc	_error  ; if doesn't work, write set flags carry to 1 so jmp exit error
	ret

_error:
	mov	rax, -1
	ret
