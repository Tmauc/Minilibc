global memset
SECTION .text

memset:
    push    rbp
    mov     rbp, rsp

    xor     rcx, rcx

loop:
    cmp     rcx, rdx
    je      end
    mov     byte [rdi + rcx], sil
    inc     rcx
    jmp     loop

end:
    mov     rax, rdi
    mov     rsp, rbp
    pop     rbp
    ret