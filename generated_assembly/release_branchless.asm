.section .text.header_util::header_conversion::convert_to_wire_format_branchless,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branchless
	.p2align	4, 0x90
	.type	header_util::header_conversion::convert_to_wire_format_branchless,@function
header_util::header_conversion::convert_to_wire_format_branchless:
	.cfi_startproc
	push rax
	.cfi_def_cfa_offset 16
	test rdx, rdx
	je .LBB5_13
	movbe ax, word ptr [rdi]
	mov byte ptr [rsi], al
	cmp rdx, 1
	je .LBB5_14
	shr eax, 8
	mov byte ptr [rsi + 1], al
	cmp rdx, 2
	jbe .LBB5_15
	movzx eax, byte ptr [rdi + 12]
	movzx ecx, byte ptr [rdi + 10]
	movzx r8d, byte ptr [rdi + 14]
	movzx r10d, byte ptr [rdi + 16]
	movzx r9d, byte ptr [rdi + 17]
	shl eax, 15
	shl ecx, 11
	shl r8d, 9
	shl r10d, 7
	shl r9d, 5
	or ecx, eax
	movzx eax, byte ptr [rdi + 13]
	shl eax, 10
	or r8d, eax
	movzx eax, byte ptr [rdi + 15]
	or r8d, ecx
	shl eax, 8
	or r10d, eax
	movzx eax, byte ptr [rdi + 11]
	or r9d, r10d
	or r9d, r8d
	movzx r8d, byte ptr [rdi + 18]
	shl r8d, 4
	or eax, r8d
	or eax, r9d
	rol ax, 8
	mov byte ptr [rsi + 2], al
	cmp rdx, 3
	je .LBB5_16
	shr eax, 8
	mov byte ptr [rsi + 3], al
	cmp rdx, 4
	jbe .LBB5_17
	movbe ax, word ptr [rdi + 2]
	mov byte ptr [rsi + 4], al
	cmp rdx, 5
	je .LBB5_18
	shr eax, 8
	mov byte ptr [rsi + 5], al
	cmp rdx, 6
	jbe .LBB5_19
	movbe ax, word ptr [rdi + 4]
	mov byte ptr [rsi + 6], al
	cmp rdx, 7
	je .LBB5_20
	shr eax, 8
	mov byte ptr [rsi + 7], al
	cmp rdx, 8
	jbe .LBB5_21
	movbe ax, word ptr [rdi + 6]
	mov byte ptr [rsi + 8], al
	cmp rdx, 9
	je .LBB5_22
	shr eax, 8
	mov byte ptr [rsi + 9], al
	cmp rdx, 10
	jbe .LBB5_23
	movbe ax, word ptr [rdi + 8]
	mov byte ptr [rsi + 10], al
	cmp rdx, 11
	je .LBB5_12
	mov byte ptr [rsi + 11], ah
	pop rax
	.cfi_def_cfa_offset 8
	ret
.LBB5_13:
	.cfi_def_cfa_offset 16
	lea rdx, [rip + .L__unnamed_2]
	xor edi, edi
	xor esi, esi
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_14:
	lea rdx, [rip + .L__unnamed_3]
	mov edi, 1
	mov esi, 1
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_15:
	lea rdx, [rip + .L__unnamed_4]
	mov edi, 2
	mov esi, 2
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_16:
	lea rdx, [rip + .L__unnamed_5]
	mov edi, 3
	mov esi, 3
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_17:
	lea rdx, [rip + .L__unnamed_6]
	mov edi, 4
	mov esi, 4
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_18:
	lea rdx, [rip + .L__unnamed_7]
	mov edi, 5
	mov esi, 5
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_19:
	lea rdx, [rip + .L__unnamed_8]
	mov edi, 6
	mov esi, 6
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_20:
	lea rdx, [rip + .L__unnamed_9]
	mov edi, 7
	mov esi, 7
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_21:
	lea rdx, [rip + .L__unnamed_10]
	mov edi, 8
	mov esi, 8
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_22:
	lea rdx, [rip + .L__unnamed_11]
	mov edi, 9
	mov esi, 9
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_23:
	lea rdx, [rip + .L__unnamed_12]
	mov edi, 10
	mov esi, 10
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB5_12:
	lea rdx, [rip + .L__unnamed_13]
	mov edi, 11
	mov esi, 11
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
