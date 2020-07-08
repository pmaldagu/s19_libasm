	global	ft_write
	extern	__errno_location

ft_write:
	;cmp		rsi, 0
	;je		return
	push	rsi
	mov		rsi, 1		;Value of the cmd F_GETFD, return fd flags, for fcntl
	mov		rax, 72		;syscall fctnl
	syscall
	pop		rsi
	cmp		rax, 0
	jne		return
	mov		rax, 1		;syscall write
	syscall
	ret

return:
	mov		rax, -1
	ret
