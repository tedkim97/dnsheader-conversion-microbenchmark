.section .text.header_util::header_conversion::convert_to_wire_format_branched_1_assert,"ax",@progbits
	.globl	header_util::header_conversion::convert_to_wire_format_branched_1_assert
	.p2align	4
.type	header_util::header_conversion::convert_to_wire_format_branched_1_assert,@function
header_util::header_conversion::convert_to_wire_format_branched_1_assert:
	.cfi_startproc
	cmp rdx, 11
	jbe .LBB5_2
	vmovd xmm0, dword ptr [rdi + 12]
	movzx ecx, byte ptr [rdi + 16]
	movzx edx, byte ptr [rdi + 17]
	movzx eax, byte ptr [rdi + 10]
	shl ecx, 7
	shl edx, 5
	shl eax, 11
	or edx, ecx
	movzx ecx, byte ptr [rdi + 11]
	or edx, eax
	movzx eax, byte ptr [rdi + 18]
	vpmovzxbw xmm0, xmm0
	vpmullw xmm0, xmm0, xmmword ptr [rip + .LCPI5_0]
	shl eax, 4
	or ecx, eax
	or ecx, edx
	vpshufd xmm1, xmm0, 85
	vpor xmm0, xmm0, xmm1
	vpsrld xmm1, xmm0, 16
	vpor xmm0, xmm1, xmm0
	vmovd eax, xmm0
	vmovd xmm0, dword ptr [rdi]
	or eax, ecx
	movzx ecx, word ptr [rdi + 8]
	vpmovzxwd xmm0, xmm0
	vpinsrw xmm0, xmm0, eax, 1
	vpinsrw xmm0, xmm0, word ptr [rdi + 4], 3
	movzx eax, word ptr [rdi + 6]
	vpshufb xmm0, xmm0, xmmword ptr [rip + .LCPI5_1]
	vmovq qword ptr [rsi], xmm0
	movbe word ptr [rsi + 8], ax
	movbe word ptr [rsi + 10], cx
	ret
.LBB5_2:
	push rax
	.cfi_def_cfa_offset 16
	lea rdi, [rip + .Lanon.5e299148290f928aa31349fd49d67d9d.42]
	lea rdx, [rip + .Lanon.5e299148290f928aa31349fd49d67d9d.43]
	mov esi, 35
	call qword ptr [rip + core::panicking::panic@GOTPCREL]
