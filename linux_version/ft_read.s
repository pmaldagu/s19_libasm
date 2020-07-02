	global	ft_read

ft_read:
	mov		rax, 0x2000003
	syscall
	jc		return
	ret

return:
	mov		rax, -1
	ret
