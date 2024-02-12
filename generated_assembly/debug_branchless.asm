.section .text.header_util::header_conversion::convert_to_wire_format_branchless,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branchless
	.p2align	4, 0x90
	.type	header_util::header_conversion::convert_to_wire_format_branchless,@function
header_util::header_conversion::convert_to_wire_format_branchless:
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
	jne .LBB43_1
	jmp .LBB43_2
.LBB43_1:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 48]
	mov byte ptr [rax], dl
	mov eax, 1
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_3
	jmp .LBB43_4
.LBB43_2:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_13]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	xor ecx, ecx
	mov edi, ecx
	call rax
.LBB43_3:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 49]
	mov byte ptr [rcx + 1], dl
	mov word ptr [rsp + 52], 0
	mov al, byte ptr [rax + 12]
	and al, 1
	movzx eax, al
	mov cx, 32768
	mul cx
	mov word ptr [rsp + 22], ax
	seto al
	test al, 1
	jne .LBB43_6
	jmp .LBB43_5
.LBB43_4:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_14]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 1
	call rax
.LBB43_5:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 22]
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	mov cl, byte ptr [rax + 10]
	mov byte ptr [rsp + 119], cl
	movzx ecx, cl
	shl cx, 11
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	mov al, byte ptr [rax + 13]
	and al, 1
	movzx eax, al
	mov cx, 1024
	mul cx
	mov word ptr [rsp + 20], ax
	seto al
	test al, 1
	jne .LBB43_8
	jmp .LBB43_7
.LBB43_6:
	lea rdi, [rip + str.5]
	lea rdx, [rip + .L__unnamed_15]
	mov rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
	mov esi, 33
	call rax
.LBB43_7:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 20]
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	mov al, byte ptr [rax + 14]
	and al, 1
	movzx eax, al
	mov cx, 512
	mul cx
	mov word ptr [rsp + 18], ax
	seto al
	test al, 1
	jne .LBB43_10
	jmp .LBB43_9
.LBB43_8:
	lea rdi, [rip + str.5]
	lea rdx, [rip + .L__unnamed_16]
	mov rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
	mov esi, 33
	call rax
.LBB43_9:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 18]
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	mov al, byte ptr [rax + 15]
	and al, 1
	movzx eax, al
	mov cx, 256
	mul cx
	mov word ptr [rsp + 16], ax
	seto al
	test al, 1
	jne .LBB43_12
	jmp .LBB43_11
.LBB43_10:
	lea rdi, [rip + str.5]
	lea rdx, [rip + .L__unnamed_17]
	mov rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
	mov esi, 33
	call rax
.LBB43_11:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 16]
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	mov al, byte ptr [rax + 16]
	and al, 1
	movzx eax, al
	mov cx, 128
	mul cx
	mov word ptr [rsp + 14], ax
	seto al
	test al, 1
	jne .LBB43_14
	jmp .LBB43_13
.LBB43_12:
	lea rdi, [rip + str.5]
	lea rdx, [rip + .L__unnamed_18]
	mov rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
	mov esi, 33
	call rax
.LBB43_13:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 14]
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	mov al, byte ptr [rax + 17]
	and al, 1
	movzx eax, al
	mov cx, 32
	mul cx
	mov word ptr [rsp + 12], ax
	seto al
	test al, 1
	jne .LBB43_16
	jmp .LBB43_15
.LBB43_14:
	lea rdi, [rip + str.5]
	lea rdx, [rip + .L__unnamed_19]
	mov rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
	mov esi, 33
	call rax
.LBB43_15:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 12]
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
	mov al, byte ptr [rax + 18]
	and al, 1
	movzx eax, al
	mov cx, 16
	mul cx
	mov word ptr [rsp + 10], ax
	seto al
	test al, 1
	jne .LBB43_18
	jmp .LBB43_17
.LBB43_16:
	lea rdi, [rip + str.5]
	lea rdx, [rip + .L__unnamed_20]
	mov rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
	mov esi, 33
	call rax
.LBB43_17:
	mov rax, qword ptr [rsp + 24]
	mov cx, word ptr [rsp + 10]
	or cx, word ptr [rsp + 52]
	mov word ptr [rsp + 52], cx
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
	mov byte ptr [rsp + 8], al
	mov byte ptr [rsp + 100], al
	mov al, byte ptr [rsp + 55]
	mov byte ptr [rsp + 9], al
	mov byte ptr [rsp + 101], al
	mov eax, 2
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_19
	jmp .LBB43_20
.LBB43_18:
	lea rdi, [rip + str.5]
	lea rdx, [rip + .L__unnamed_21]
	mov rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
	mov esi, 33
	call rax
.LBB43_19:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 8]
	mov byte ptr [rax + 2], dl
	mov eax, 3
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_21
	jmp .LBB43_22
.LBB43_20:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_22]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 2
	call rax
.LBB43_21:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 9]
	mov byte ptr [rcx + 3], dl
	movzx edi, word ptr [rax + 2]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 102], ax
	mov ax, word ptr [rsp + 102]
	mov word ptr [rsp + 56], ax
	mov al, byte ptr [rsp + 56]
	mov byte ptr [rsp + 6], al
	mov byte ptr [rsp + 104], al
	mov al, byte ptr [rsp + 57]
	mov byte ptr [rsp + 7], al
	mov byte ptr [rsp + 105], al
	mov eax, 4
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_23
	jmp .LBB43_24
.LBB43_22:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_23]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 3
	call rax
.LBB43_23:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 6]
	mov byte ptr [rax + 4], dl
	mov eax, 5
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_25
	jmp .LBB43_26
.LBB43_24:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_24]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 4
	call rax
.LBB43_25:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 7]
	mov byte ptr [rcx + 5], dl
	movzx edi, word ptr [rax + 4]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 106], ax
	mov ax, word ptr [rsp + 106]
	mov word ptr [rsp + 58], ax
	mov al, byte ptr [rsp + 58]
	mov byte ptr [rsp + 4], al
	mov byte ptr [rsp + 108], al
	mov al, byte ptr [rsp + 59]
	mov byte ptr [rsp + 5], al
	mov byte ptr [rsp + 109], al
	mov eax, 6
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_27
	jmp .LBB43_28
.LBB43_26:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_25]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 5
	call rax
.LBB43_27:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 4]
	mov byte ptr [rax + 6], dl
	mov eax, 7
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_29
	jmp .LBB43_30
.LBB43_28:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_26]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 6
	call rax
.LBB43_29:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 5]
	mov byte ptr [rcx + 7], dl
	movzx edi, word ptr [rax + 6]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 110], ax
	mov ax, word ptr [rsp + 110]
	mov word ptr [rsp + 60], ax
	mov al, byte ptr [rsp + 60]
	mov byte ptr [rsp + 2], al
	mov byte ptr [rsp + 112], al
	mov al, byte ptr [rsp + 61]
	mov byte ptr [rsp + 3], al
	mov byte ptr [rsp + 113], al
	mov eax, 8
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_31
	jmp .LBB43_32
.LBB43_30:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_27]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 7
	call rax
.LBB43_31:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 2]
	mov byte ptr [rax + 8], dl
	mov eax, 9
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_33
	jmp .LBB43_34
.LBB43_32:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_28]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 8
	call rax
.LBB43_33:
	mov rax, qword ptr [rsp + 24]
	mov rcx, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp + 3]
	mov byte ptr [rcx + 9], dl
	movzx edi, word ptr [rax + 8]
	call core::num::<impl u16>::to_be_bytes
	mov rcx, qword ptr [rsp + 40]
	mov word ptr [rsp + 114], ax
	mov ax, word ptr [rsp + 114]
	mov word ptr [rsp + 62], ax
	mov al, byte ptr [rsp + 62]
	mov byte ptr [rsp], al
	mov byte ptr [rsp + 116], al
	mov al, byte ptr [rsp + 63]
	mov byte ptr [rsp + 1], al
	mov byte ptr [rsp + 117], al
	mov eax, 10
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_35
	jmp .LBB43_36
.LBB43_34:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_29]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 9
	call rax
.LBB43_35:
	mov rcx, qword ptr [rsp + 40]
	mov rax, qword ptr [rsp + 32]
	mov dl, byte ptr [rsp]
	mov byte ptr [rax + 10], dl
	mov eax, 11
	cmp rax, rcx
	setb al
	test al, 1
	jne .LBB43_37
	jmp .LBB43_38
.LBB43_36:
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_30]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 10
	call rax
.LBB43_37:
	mov rax, qword ptr [rsp + 32]
	mov cl, byte ptr [rsp + 1]
	mov byte ptr [rax + 11], cl
	add rsp, 120
	.cfi_def_cfa_offset 8
	ret
.LBB43_38:
	.cfi_def_cfa_offset 128
	mov rsi, qword ptr [rsp + 40]
	lea rdx, [rip + .L__unnamed_31]
	mov rax, qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
	mov edi, 11
	call rax
