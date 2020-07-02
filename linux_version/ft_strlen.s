	global ft_strlen

ft_strlen:
	xor		rax, rax
	cmp		rdi, 0
	je		return

while:
	cmp		byte [rdi + rax], 0
	je		return
	inc		rax
	jmp		while

return:
	ret
