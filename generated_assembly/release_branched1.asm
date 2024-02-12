.section .text.header_util::header_conversion::convert_to_wire_format_branched_1,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branched_1
	.p2align	4, 0x90
	.type	header_util::header_conversion::convert_to_wire_format_branched_1,@function
header_util::header_conversion::convert_to_wire_format_branched_1:
	.cfi_startproc
	push rax
	.cfi_def_cfa_offset 16
	test rdx, rdx
	je .LBB6_13
	movbe ax, word ptr [rdi]
	mov byte ptr [rsi], al
	cmp rdx, 1
	je .LBB6_14
	vpmovzxbd xmm0, dword ptr [rdi + 12]
	movzx ecx, byte ptr [rdi + 10]
	vpxor xmm1, xmm1, xmm1
	shr eax, 8
	xor r9d, r9d
	mov r10d, -32768
	mov byte ptr [rsi + 1], al
	shl ecx, 11
	vpcmpeqd xmm0, xmm0, xmm1
	vmovmskps r8d, xmm0
	test r8b, 1
	cmovne r10d, r9d
	or r10d, ecx
	test r8b, 2
	lea ecx, [r10 + 1024]
	cmovne ecx, r10d
	test r8b, 4
	lea r9d, [rcx + 512]
	cmovne r9d, ecx
	test r8b, 8
	lea ecx, [r9 + 256]
	cmovne ecx, r9d
	mov r8d, ecx
	or r8d, 128
	cmp byte ptr [rdi + 16], 0
	cmove r8d, ecx
	mov ecx, r8d
	or ecx, 32
	cmp byte ptr [rdi + 17], 0
	cmove ecx, r8d
	mov eax, ecx
	or eax, 16
	cmp byte ptr [rdi + 18], 0
	cmove eax, ecx
	cmp rdx, 2
	jbe .LBB6_15
	movzx ecx, byte ptr [rdi + 11]
	or eax, ecx
	rol ax, 8
	mov byte ptr [rsi + 2], al
	cmp rdx, 3
	je .LBB6_16
	shr eax, 8
	mov byte ptr [rsi + 3], al
	cmp rdx, 4
	jbe .LBB6_17
	movbe ax, word ptr [rdi + 2]
	mov byte ptr [rsi + 4], al
	cmp rdx, 5
	je .LBB6_18
	shr eax, 8
	mov byte ptr [rsi + 5], al
	cmp rdx, 6
	jbe .LBB6_19
	movbe ax, word ptr [rdi + 4]
	mov byte ptr [rsi + 6], al
	cmp rdx, 7
	je .LBB6_20
	shr eax, 8
	mov byte ptr [rsi + 7], al
	cmp rdx, 8
	jbe .LBB6_21
	movbe ax, word ptr [rdi + 6]
	mov byte ptr [rsi + 8], al
	cmp rdx, 9
	je .LBB6_22
	shr eax, 8
	mov byte ptr [rsi + 9], al
	cmp rdx, 10
	jbe .LBB6_23
	movbe ax, word ptr [rdi + 8]
	mov byte ptr [rsi + 10], al
	cmp rdx, 11
	je .LBB6_12
	mov byte ptr [rsi + 11], ah
	pop rax
	.cfi_def_cfa_offset 8
	ret
.LBB6_13:
	.cfi_def_cfa_offset 16
	lea rdx, [rip + .L__unnamed_14]
	xor edi, edi
	xor esi, esi
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_14:
	lea rdx, [rip + .L__unnamed_15]
	mov edi, 1
	mov esi, 1
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_15:
	lea rdx, [rip + .L__unnamed_16]
	mov edi, 2
	mov esi, 2
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_16:
	lea rdx, [rip + .L__unnamed_17]
	mov edi, 3
	mov esi, 3
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_17:
	lea rdx, [rip + .L__unnamed_18]
	mov edi, 4
	mov esi, 4
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_18:
	lea rdx, [rip + .L__unnamed_19]
	mov edi, 5
	mov esi, 5
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_19:
	lea rdx, [rip + .L__unnamed_20]
	mov edi, 6
	mov esi, 6
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_20:
	lea rdx, [rip + .L__unnamed_21]
	mov edi, 7
	mov esi, 7
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_21:
	lea rdx, [rip + .L__unnamed_22]
	mov edi, 8
	mov esi, 8
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_22:
	lea rdx, [rip + .L__unnamed_23]
	mov edi, 9
	mov esi, 9
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_23:
	lea rdx, [rip + .L__unnamed_24]
	mov edi, 10
	mov esi, 10
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
.LBB6_12:
	lea rdx, [rip + .L__unnamed_25]
	mov edi, 11
	mov esi, 11
	call qword ptr [rip + core::panicking::panic_bounds_check@GOTPCREL]
