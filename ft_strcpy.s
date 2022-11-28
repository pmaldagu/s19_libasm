	global _ft_strcpy

_ft_strcpy:
    xor        rax, rax
    xor        rdx, rdx
    cmp        rdi, 0
    je        _return
    cmp        rsi, 0
    je        _return

_loop:
    mov        dl, byte [rsi + rax]
    mov        byte [rdi + rax], dl
    cmp        dl , 0
    je        _return
    inc        rax
    jmp        _loop

_return:
    mov        rax, rdi
    ret
