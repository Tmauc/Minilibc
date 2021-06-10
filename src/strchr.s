global strchr
SECTION .text

strchr:
	xor rax, rax
	xor rcx, rcx

find:
	mov r11b, [rdi + rcx]
	cmp r11b, 0
	je result_null
	cmp r11b, sil
	je result
	inc rcx
    jmp find

result_null:
	cmp sil, 0
	jne end_null
	jmp result

result:
	cmp rcx, 0
	je end
	inc rdi
	dec rcx
	jmp result

end_null:
	ret

end:
	mov rax, rdi
	ret