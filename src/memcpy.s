global memcpy
SECTION .text

memcpy:
    push    rbp
    mov     rbp, rsp

    xor     rcx, rcx

loop:
    cmp     rcx, rdx
    je      end
    mov     rax, [rsi + rcx]
    mov     byte [rdi + rcx], al
    inc     rcx
    jmp     loop

end:
    mov     rax, rdi
    mov     rsp, rbp
    pop     rbp
    ret