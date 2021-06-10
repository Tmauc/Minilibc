global strncmp
SECTION .text

strcmp:
    push    rbp
    mov     rbp, rsp

    xor     rcx, rcx

loop:
    mov     al, [rsi + rcx]
    mov     bl, [rdi + rcx]
    cmp     bl, al
    jne     return
    cmp     al, 0
    je      return
    cmp     bl, 0
    je      return
    inc     rcx
    jmp     loop

return:
    sub     bl, al
    movsx   rax, bl
    mov     rsp, rbp
    pop     rbp
    ret