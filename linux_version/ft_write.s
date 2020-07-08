	global	ft_write
	extern	__errno_location

ft_write:
	xor		rax, rax
	xor		rcx, rcx
	push	rsi
	mov		rsi, 1		;Value of the cmd F_GETFD, return fd flags, for fcntl
	mov		rax, 72		;syscall fctnl
	syscall
	pop		rsi
	cmp		rax, 0
	jne		error
	mov		rax, 1		;syscall write
	syscall
	cmp		rsi, 0
	je		error
	ret

error:
	mov		rcx, rax
	neg		rcx
	push	rcx
	call	__errno_location
	pop		rcx
	mov		[rax], rcx
	mov		rax, -1
	ret
