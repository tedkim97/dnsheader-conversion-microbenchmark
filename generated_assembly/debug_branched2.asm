.section .text.header_util::header_conversion::convert_to_wire_format_branched_2,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branched_2
	.p2align	4, 0x90
	.type	header_util::header_conversion::convert_to_wire_format_branched_2,@function
header_util::header_conversion::convert_to_wire_format_branched_2:
	.cfi_startproc
	sub rsp, 136
	.cfi_def_cfa_offset 144
	mov qword ptr [rsp + 24], rdi
	mov qword ptr [rsp + 32], rsi
	mov qword ptr [rsp + 40], rdx
	mov qword ptr [rsp + 80], rdi
	mov qword ptr [rsp + 88], rsi
	mov qword ptr [rsp + 96], rdx
	movzx edi, word ptr [rdi]
	call core::num::<impl u16>::to_be_bytes
	mov rdx, qword ptr [rsp + 40]
	mov word ptr [rsp + 110], ax
	mov ax, word ptr [rsp + 110]
	mov word ptr [rsp + 52], ax
	mov al, byte ptr [rsp + 52]
	mov byte ptr [rsp + 50], al
	mov byte ptr [rsp + 112], al
	mov al, byte ptr [rsp + 53]
	mov byte ptr [rsp + 51], al
	mov byte ptr [rsp + 113], al
	xor eax, eax
	cmp rax, rdx
	setb al
	test al, 1
	jne .LBB45_1
	jmp .LBB45_2
.LBB45_1:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 50]
	mov byte ptr [rax], dl
	mov eax, 1
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_3
	jmp .LBB45_4
.LBB45_2:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_44]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	xor ecx, ecx
	mov edi, ecx
	call rax
.LBB45_3:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 51]
	mov byte ptr [rcx + 1], dl
	mov word ptr [rsp + 54], 0
	mov cl, byte ptr [rax + 10]
	mov byte ptr [rsp + 135], cl
	movzx ecx, cl
	shl cx, 11
	or cx, word ptr [rsp + 54]
	mov word ptr [rsp + 54], cx
	test byte ptr [rax + 12], 1
	jne .LBB45_6
	jmp .LBB45_5
.LBB45_4:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_45]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 1
	call rax
.LBB45_5:
	mov word ptr [rsp + 56], 0
	jmp .LBB45_7
.LBB45_6:
	mov word ptr [rsp + 56], -32768
.LBB45_7:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 54]
	or cx, word ptr [rsp + 56]
	mov word ptr [rsp + 54], cx
	test byte ptr [rax + 13], 1
	jne .LBB45_9
	mov word ptr [rsp + 58], 0
	jmp .LBB45_10
.LBB45_9:
	mov word ptr [rsp + 58], 1024
.LBB45_10:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 54]
	or cx, word ptr [rsp + 58]
	mov word ptr [rsp + 54], cx
	test byte ptr [rax + 14], 1
	jne .LBB45_12
	mov word ptr [rsp + 60], 0
	jmp .LBB45_13
.LBB45_12:
	mov word ptr [rsp + 60], 512
.LBB45_13:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 54]
	or cx, word ptr [rsp + 60]
	mov word ptr [rsp + 54], cx
	test byte ptr [rax + 15], 1
	jne .LBB45_15
	mov word ptr [rsp + 62], 0
	jmp .LBB45_16
.LBB45_15:
	mov word ptr [rsp + 62], 256
.LBB45_16:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 54]
	or cx, word ptr [rsp + 62]
	mov word ptr [rsp + 54], cx
	test byte ptr [rax + 16], 1
	jne .LBB45_18
	mov word ptr [rsp + 64], 0
	jmp .LBB45_19
.LBB45_18:
	mov word ptr [rsp + 64], 128
.LBB45_19:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 54]
	or cx, word ptr [rsp + 64]
	mov word ptr [rsp + 54], cx
	test byte ptr [rax + 17], 1
	jne .LBB45_21
	mov word ptr [rsp + 66], 0
	jmp .LBB45_22
.LBB45_21:
	mov word ptr [rsp + 66], 32
.LBB45_22:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 54]
	or cx, word ptr [rsp + 66]
	mov word ptr [rsp + 54], cx
	test byte ptr [rax + 18], 1
	jne .LBB45_24
	mov word ptr [rsp + 68], 0
	jmp .LBB45_25
.LBB45_24:
	mov word ptr [rsp + 68], 16
.LBB45_25:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 54]
	or cx, word ptr [rsp + 68]
	mov word ptr [rsp + 54], cx
	mov al, byte ptr [rax + 11]
	mov byte ptr [rsp + 134], al
	movzx eax, al
	or ax, word ptr [rsp + 54]
	mov word ptr [rsp + 54], ax
	movzx edi, word ptr [rsp + 54]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 114], ax
	mov ax, word ptr [rsp + 114]
	mov word ptr [rsp + 70], ax
	mov al, byte ptr [rsp + 70]
	mov byte ptr [rsp + 22], al
	mov byte ptr [rsp + 116], al
	mov al, byte ptr [rsp + 71]
	mov byte ptr [rsp + 23], al
	mov byte ptr [rsp + 117], al
	mov eax, 2
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_26
	jmp .LBB45_27
.LBB45_26:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 22]
	mov byte ptr [rax + 2], dl
	mov eax, 3
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_28
	jmp .LBB45_29
.LBB45_27:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_46]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 2
	call rax
.LBB45_28:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 23]
	mov byte ptr [rcx + 3], dl
	movzx edi, word ptr [rax + 2]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 118], ax
	mov ax, word ptr [rsp + 118]
	mov word ptr [rsp + 72], ax
	mov al, byte ptr [rsp + 72]
	mov byte ptr [rsp + 20], al
	mov byte ptr [rsp + 120], al
	mov al, byte ptr [rsp + 73]
	mov byte ptr [rsp + 21], al
	mov byte ptr [rsp + 121], al
	mov eax, 4
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_30
	jmp .LBB45_31
.LBB45_29:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_47]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 3
	call rax
.LBB45_30:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 20]
	mov byte ptr [rax + 4], dl
	mov eax, 5
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_32
	jmp .LBB45_33
.LBB45_31:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_48]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 4
	call rax
.LBB45_32:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 21]
	mov byte ptr [rcx + 5], dl
	movzx edi, word ptr [rax + 4]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 122], ax
	mov ax, word ptr [rsp + 122]
	mov word ptr [rsp + 74], ax
	mov al, byte ptr [rsp + 74]
	mov byte ptr [rsp + 18], al
	mov byte ptr [rsp + 124], al
	mov al, byte ptr [rsp + 75]
	mov byte ptr [rsp + 19], al
	mov byte ptr [rsp + 125], al
	mov eax, 6
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_34
	jmp .LBB45_35
.LBB45_33:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_49]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 5
	call rax
.LBB45_34:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 18]
	mov byte ptr [rax + 6], dl
	mov eax, 7
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_36
	jmp .LBB45_37
.LBB45_35:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_50]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 6
	call rax
.LBB45_36:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 19]
	mov byte ptr [rcx + 7], dl
	movzx edi, word ptr [rax + 6]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 126], ax
	mov ax, word ptr [rsp + 126]
	mov word ptr [rsp + 76], ax
	mov al, byte ptr [rsp + 76]
	mov byte ptr [rsp + 16], al
	mov byte ptr [rsp + 128], al
	mov al, byte ptr [rsp + 77]
	mov byte ptr [rsp + 17], al
	mov byte ptr [rsp + 129], al
	mov eax, 8
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_38
	jmp .LBB45_39
.LBB45_37:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_51]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 7
	call rax
.LBB45_38:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 16]
	mov byte ptr [rax + 8], dl
	mov eax, 9
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_40
	jmp .LBB45_41
.LBB45_39:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_52]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 8
	call rax
.LBB45_40:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 17]
	mov byte ptr [rcx + 9], dl
	movzx edi, word ptr [rax + 8]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 130], ax
	mov ax, word ptr [rsp + 130]
	mov word ptr [rsp + 78], ax
	mov al, byte ptr [rsp + 78]
	mov byte ptr [rsp + 14], al
	mov byte ptr [rsp + 132], al
	mov al, byte ptr [rsp + 79]
	mov byte ptr [rsp + 15], al
	mov byte ptr [rsp + 133], al
	mov eax, 10
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_42
	jmp .LBB45_43
.LBB45_41:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_53]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 9
	call rax
.LBB45_42:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 14]
	mov byte ptr [rax + 10], dl
	mov eax, 11
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB45_44
	jmp .LBB45_45
.LBB45_43:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_54]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 10
	call rax
.LBB45_44:
	mov rax, qword ptr [rsp + 32]
	mov cl, byte ptr [rsp + 15]
	mov byte ptr [rax + 11], cl
	add rsp, 136
	.cfi_def_cfa_offset 8
	ret
.LBB45_45:
	.cfi_def_cfa_offset 144
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_55]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 11
	call rax
