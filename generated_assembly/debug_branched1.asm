.section .text.header_util::header_conversion::convert_to_wire_format_branched_1,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branched_1
	.p2align	4, 0x90
	.type	header_util::header_conversion::convert_to_wire_format_branched_1,@function
header_util::header_conversion::convert_to_wire_format_branched_1:
	.cfi_startproc
	sub rsp, 120
	.cfi_def_cfa_offset 128
	mov qword ptr [rsp + 24], rdi
	mov qword ptr [rsp + 32], rsi
	mov qword ptr [rsp + 40], rdx
	mov qword ptr [rsp + 64], rdi
	mov qword ptr [rsp + 72], rsi
	mov qword ptr [rsp + 80], rdx
	movzx edi, word ptr [rdi]
	call core::num::<impl u16>::to_be_bytes
	mov rdx, qword ptr [rsp + 40]
	mov word ptr [rsp + 94], ax
	mov ax, word ptr [rsp + 94]
	mov word ptr [rsp + 50], ax
	mov al, byte ptr [rsp + 50]
	mov byte ptr [rsp + 48], al
	mov byte ptr [rsp + 96], al
	mov al, byte ptr [rsp + 51]
	mov byte ptr [rsp + 49], al
	mov byte ptr [rsp + 97], al
	xor eax, eax
	cmp rax, rdx
	setb al
	test al, 1
	jne .LBB44_1
	jmp .LBB44_2
.LBB44_1:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 48]
	mov byte ptr [rax], dl
	mov eax, 1
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_3
	jmp .LBB44_4
.LBB44_2:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_32]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	xor ecx, ecx
	mov edi, ecx
	call rax
.LBB44_3:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 49]
	mov byte ptr [rcx + 1], dl
	mov word ptr [rsp + 52], 0
	test byte ptr [rax + 12], 1
	jne .LBB44_6
	jmp .LBB44_5
.LBB44_4:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_33]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 1
	call rax
.LBB44_5:
	mov rax, qword ptr [rsp + 24]
	mov cl, byte ptr [rax + 10]
	mov byte ptr [rsp + 119], cl
	movzx ecx, cl
	shl cx, 11
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	test byte ptr [rax + 13], 1
	jne .LBB44_8
	jmp .LBB44_7
.LBB44_6:
	mov ax, word ptr [rsp + 52]
	or ax, -32768
	mov word ptr [rsp + 52], ax
	jmp .LBB44_5
.LBB44_7:
	mov rax, qword ptr [rsp + 24]
	test byte ptr [rax + 14], 1
	jne .LBB44_10
	jmp .LBB44_9
.LBB44_8:
	mov ax, word ptr [rsp + 52]
	or ax, 1024
	mov word ptr [rsp + 52], ax
	jmp .LBB44_7
.LBB44_9:
	mov rax, qword ptr [rsp + 24]
	test byte ptr [rax + 15], 1
	jne .LBB44_12
	jmp .LBB44_11
.LBB44_10:
	mov ax, word ptr [rsp + 52]
	or ax, 512
	mov word ptr [rsp + 52], ax
	jmp .LBB44_9
.LBB44_11:
	mov rax, qword ptr [rsp + 24]
	test byte ptr [rax + 16], 1
	jne .LBB44_14
	jmp .LBB44_13
.LBB44_12:
	mov ax, word ptr [rsp + 52]
	or ax, 256
	mov word ptr [rsp + 52], ax
	jmp .LBB44_11
.LBB44_13:
	mov rax, qword ptr [rsp + 24]
	test byte ptr [rax + 17], 1
	jne .LBB44_16
	jmp .LBB44_15
.LBB44_14:
	mov ax, word ptr [rsp + 52]
	or ax, 128
	mov word ptr [rsp + 52], ax
	jmp .LBB44_13
.LBB44_15:
	mov rax, qword ptr [rsp + 24]
	test byte ptr [rax + 18], 1
	jne .LBB44_18
	jmp .LBB44_17
.LBB44_16:
	mov ax, word ptr [rsp + 52]
	or ax, 32
	mov word ptr [rsp + 52], ax
	jmp .LBB44_15
.LBB44_17:
	mov rax, qword ptr [rsp + 24]
	mov al, byte ptr [rax + 11]
	mov byte ptr [rsp + 118], al
	movzx eax, al
	or ax, word ptr [rsp + 52]
	mov word ptr [rsp + 52], ax
	movzx edi, word ptr [rsp + 52]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 98], ax
	mov ax, word ptr [rsp + 98]
	mov word ptr [rsp + 54], ax
	mov al, byte ptr [rsp + 54]
	mov byte ptr [rsp + 22], al
	mov byte ptr [rsp + 100], al
	mov al, byte ptr [rsp + 55]
	mov byte ptr [rsp + 23], al
	mov byte ptr [rsp + 101], al
	mov eax, 2
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_19
	jmp .LBB44_20
.LBB44_18:
	mov ax, word ptr [rsp + 52]
	or ax, 16
	mov word ptr [rsp + 52], ax
	jmp .LBB44_17
.LBB44_19:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 22]
	mov byte ptr [rax + 2], dl
	mov eax, 3
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_21
	jmp .LBB44_22
.LBB44_20:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_34]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 2
	call rax
.LBB44_21:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 23]
	mov byte ptr [rcx + 3], dl
	movzx edi, word ptr [rax + 2]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 102], ax
	mov ax, word ptr [rsp + 102]
	mov word ptr [rsp + 56], ax
	mov al, byte ptr [rsp + 56]
	mov byte ptr [rsp + 20], al
	mov byte ptr [rsp + 104], al
	mov al, byte ptr [rsp + 57]
	mov byte ptr [rsp + 21], al
	mov byte ptr [rsp + 105], al
	mov eax, 4
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_23
	jmp .LBB44_24
.LBB44_22:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_35]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 3
	call rax
.LBB44_23:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 20]
	mov byte ptr [rax + 4], dl
	mov eax, 5
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_25
	jmp .LBB44_26
.LBB44_24:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_36]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 4
	call rax
.LBB44_25:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 21]
	mov byte ptr [rcx + 5], dl
	movzx edi, word ptr [rax + 4]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 106], ax
	mov ax, word ptr [rsp + 106]
	mov word ptr [rsp + 58], ax
	mov al, byte ptr [rsp + 58]
	mov byte ptr [rsp + 18], al
	mov byte ptr [rsp + 108], al
	mov al, byte ptr [rsp + 59]
	mov byte ptr [rsp + 19], al
	mov byte ptr [rsp + 109], al
	mov eax, 6
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_27
	jmp .LBB44_28
.LBB44_26:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_37]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 5
	call rax
.LBB44_27:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 18]
	mov byte ptr [rax + 6], dl
	mov eax, 7
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_29
	jmp .LBB44_30
.LBB44_28:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_38]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 6
	call rax
.LBB44_29:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 19]
	mov byte ptr [rcx + 7], dl
	movzx edi, word ptr [rax + 6]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 110], ax
	mov ax, word ptr [rsp + 110]
	mov word ptr [rsp + 60], ax
	mov al, byte ptr [rsp + 60]
	mov byte ptr [rsp + 16], al
	mov byte ptr [rsp + 112], al
	mov al, byte ptr [rsp + 61]
	mov byte ptr [rsp + 17], al
	mov byte ptr [rsp + 113], al
	mov eax, 8
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_31
	jmp .LBB44_32
.LBB44_30:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_39]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 7
	call rax
.LBB44_31:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 16]
	mov byte ptr [rax + 8], dl
	mov eax, 9
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_33
	jmp .LBB44_34
.LBB44_32:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_40]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 8
	call rax
.LBB44_33:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 17]
	mov byte ptr [rcx + 9], dl
	movzx edi, word ptr [rax + 8]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 114], ax
	mov ax, word ptr [rsp + 114]
	mov word ptr [rsp + 62], ax
	mov al, byte ptr [rsp + 62]
	mov byte ptr [rsp + 14], al
	mov byte ptr [rsp + 116], al
	mov al, byte ptr [rsp + 63]
	mov byte ptr [rsp + 15], al
	mov byte ptr [rsp + 117], al
	mov eax, 10
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_35
	jmp .LBB44_36
.LBB44_34:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_41]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 9
	call rax
.LBB44_35:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 14]
	mov byte ptr [rax + 10], dl
	mov eax, 11
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB44_37
	jmp .LBB44_38
.LBB44_36:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_42]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 10
	call rax
.LBB44_37:
	mov rax, qword ptr [rsp + 32]
	mov cl, byte ptr [rsp + 15]
	mov byte ptr [rax + 11], cl
	add rsp, 120
	.cfi_def_cfa_offset 8
	ret
.LBB44_38:
	.cfi_def_cfa_offset 128
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_43]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 11
	call rax
