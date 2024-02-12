.section .text.header_util::header_conversion::convert_to_wire_format_branched_2,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branched_2
	.p2align	4, 0x90
	.type	header_util::header_conversion::convert_to_wire_format_branched_2,@function
header_util::header_conversion::convert_to_wire_format_branched_2:
	.cfi_startproc
	push rbp
	.cfi_def_cfa_offset 16
	push rbx
	.cfi_def_cfa_offset 24
	push rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	test rdx, rdx
	je .LBB7_13
	movbe ax, word ptr [rdi]
	mov byte ptr [rsi], al
	cmp rdx, 1
	je .LBB7_14
	vpmovzxbd xmm0, dword ptr [rdi + 12]
	vpxor xmm1, xmm1, xmm1
	shr eax, 8
	mov byte ptr [rsi + 1], al
	xor eax, eax
	vpcmpeqd xmm0, xmm0, xmm1
	vmovmskps r11d, xmm0
	test r11b, 8
	sete r9b
	xor ecx, ecx
	test r11b, 4
	sete r10b
	xor r8d, r8d
	test r11b, 2
	sete bl
	xor ebp, ebp
	test r11b, 1
	mov r11d, -32768
	cmovne r11d, ebp
	cmp rdx, 2
	jbe .LBB7_15
	mov cl, r10b
	mov al, r9b
	movzx r10d, byte ptr [rdi + 17]
	movzx ebp, byte ptr [rdi + 10]
	movzx r9d, byte ptr [rdi + 18]
	mov r8b, bl
	shl ecx, 9
	shl eax, 8
	shl r8d, 10
	or eax, ecx
	movzx ecx, byte ptr [rdi + 16]
	shl r10d, 5
	shl ebp, 11
	shl r9d, 4
	or r11d, ebp
	shl ecx, 7
	or r8d, r11d
	or r10d, ecx
	movzx ecx, byte ptr [rdi + 11]
	or eax, r8d
	or r9d, r10d
	or ecx, r9d
	or ecx, eax
	rol cx, 8
	mov byte ptr [rsi + 2], cl
	cmp rdx, 3
	je .LBB7_16
	shr ecx, 8
	mov byte ptr [rsi + 3], cl
	cmp rdx, 4
	jbe .LBB7_17
	movbe ax, word ptr [rdi + 2]
	mov byte ptr [rsi + 4], al
	cmp rdx, 5
	je .LBB7_18
	shr eax, 8
	mov byte ptr [rsi + 5], al
	cmp rdx, 6
	jbe .LBB7_19
	movbe ax, word ptr [rdi + 4]
	mov byte ptr [rsi + 6], al
	cmp rdx, 7
	je .LBB7_20
	shr eax, 8
	mov byte ptr [rsi + 7], al
	cmp rdx, 8
	jbe .LBB7_21
	movbe ax, word ptr [rdi + 6]
	mov byte ptr [rsi + 8], al
	cmp rdx, 9
	je .LBB7_22
	shr eax, 8
	mov byte ptr [rsi + 9], al
	cmp rdx, 10
	jbe .LBB7_23
	movbe ax, word ptr [rdi + 8]
	mov byte ptr [rsi + 10], al
	cmp rdx, 11
	je .LBB7_12
	mov byte ptr [rsi + 11], ah
	add rsp, 8
	.cfi_def_cfa_offset 24
	pop rbx
	.cfi_def_cfa_offset 16
	pop rbp
	.cfi_def_cfa_offset 8
	ret
.LBB7_13:
	.cfi_def_cfa_offset 32
	lea rdx, [rip + .L__unnamed_26]
	xor edi, edi
	xor esi, esi
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_14:
	lea rdx, [rip + .L__unnamed_27]
	mov edi, 1
	mov esi, 1
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_15:
	lea rdx, [rip + .L__unnamed_28]
	mov edi, 2
	mov esi, 2
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_16:
	lea rdx, [rip + .L__unnamed_29]
	mov edi, 3
	mov esi, 3
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_17:
	lea rdx, [rip + .L__unnamed_30]
	mov edi, 4
	mov esi, 4
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_18:
	lea rdx, [rip + .L__unnamed_31]
	mov edi, 5
	mov esi, 5
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_19:
	lea rdx, [rip + .L__unnamed_32]
	mov edi, 6
	mov esi, 6
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_20:
	lea rdx, [rip + .L__unnamed_33]
	mov edi, 7
	mov esi, 7
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_21:
	lea rdx, [rip + .L__unnamed_34]
	mov edi, 8
	mov esi, 8
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_22:
	lea rdx, [rip + .L__unnamed_35]
	mov edi, 9
	mov esi, 9
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_23:
	lea rdx, [rip + .L__unnamed_36]
	mov edi, 10
	mov esi, 10
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB7_12:
	lea rdx, [rip + .L__unnamed_37]
	mov edi, 11
	mov esi, 11
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
