.section .text.header_util::header_conversion::convert_to_wire_format_branched_2_assert,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branched_2_assert
	.p2align	4
.type	header_util::header_conversion::convert_to_wire_format_branched_2_assert,@function
header_util::header_conversion::convert_to_wire_format_branched_2_assert:
	.cfi_startproc
	cmp rdx, 11
	jbe .LBB6_2
	movzx eax, byte ptr [rdi + 10]
	movzx ecx, byte ptr [rdi + 12]
	movzx edx, byte ptr [rdi + 14]
	vmovd xmm0, dword ptr [rdi]
	shl eax, 11
	shl ecx, 15
	shl edx, 9
	or ecx, eax
	movzx eax, byte ptr [rdi + 13]
	vpmovzxwd xmm0, xmm0
	shl eax, 10
	or edx, eax
	movzx eax, byte ptr [rdi + 15]
	or edx, ecx
	movzx ecx, byte ptr [rdi + 16]
	shl eax, 8
	or eax, edx
	shl ecx, 7
	movzx edx, byte ptr [rdi + 11]
	or ecx, eax
	movzx eax, byte ptr [rdi + 17]
	shl eax, 5
	or eax, ecx
	movzx ecx, byte ptr [rdi + 18]
	shl ecx, 4
	or edx, ecx
	movzx ecx, word ptr [rdi + 8]
	or edx, eax
	movzx eax, word ptr [rdi + 6]
	vpinsrw xmm0, xmm0, edx, 1
	vpinsrw xmm0, xmm0, word ptr [rdi + 4], 3
	vpshufb xmm0, xmm0, xmmword ptr [rip + .LCPI6_0]
	vmovq qword ptr [rsi], xmm0
	movbe word ptr [rsi + 8], ax
	movbe word ptr [rsi + 10], cx
	ret
.LBB6_2:
	push rax
	.cfi_def_cfa_offset 16
	lea rdi, [rip + .Lanon.5e299148290f928aa31349fd49d67d9d.42]
	lea rdx, [rip + .Lanon.5e299148290f928aa31349fd49d67d9d.44]
	mov esi, 35
	call qword ptr [rip + core::panicking::panic@GOTPCREL]
