	global ft_read

ft_read:
	mov	rax, 0
	syscall
	jc	error
	ret

error:
	mov	rax, -1
	ret
