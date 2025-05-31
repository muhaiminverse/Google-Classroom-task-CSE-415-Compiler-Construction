	.file	"even.c"
	.intel_syntax noprefix
	.text
	.globl	_even
	.def	_even;	.scl	2;	.type	32;	.endef
_even:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L2
L5:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	eax, DWORD PTR [eax]
	and	eax, 1
	test	eax, eax
	je	L3
	mov	eax, 0
	jmp	L4
L3:
	add	DWORD PTR [ebp-4], 1
L2:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp+12]
	jl	L5
	mov	eax, 1
L4:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "All numbers are even.\0"
LC1:
	.ascii "Not all numbers are even.\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 48
	call	___main
	mov	DWORD PTR [esp+24], 2
	mov	DWORD PTR [esp+28], 4
	mov	DWORD PTR [esp+32], 6
	mov	DWORD PTR [esp+36], 8
	mov	DWORD PTR [esp+40], 10
	mov	DWORD PTR [esp+44], 5
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+24]
	mov	DWORD PTR [esp], eax
	call	_even
	test	eax, eax
	je	L7
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	jmp	L8
L7:
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_puts
L8:
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
