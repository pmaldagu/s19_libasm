	global ft_strcpy

ft_strcpy:
    xor        rax, rax
    xor        rdx, rdx
    cmp        rdi, 0
    je        return
    cmp        rsi, 0
    je        return

loop:
    mov        dl, byte [rsi + rax]
    mov        byte [rdi + rax], dl
    cmp        dl , 0
    je		   return
    inc        rax
    jmp        loop

return:
    mov        rax, rdi
    ret
