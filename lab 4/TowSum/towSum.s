	.file	"towSum.c"
	.intel_syntax noprefix
	.text
	.globl	_twoSum
	.def	_twoSum;	.scl	2;	.type	32;	.endef
_twoSum:
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
L7:
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	mov	DWORD PTR [ebp-8], eax
	jmp	L3
L6:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	lea	ecx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, ecx
	mov	eax, DWORD PTR [eax]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp+16]
	jne	L4
	mov	eax, 1
	jmp	L5
L4:
	add	DWORD PTR [ebp-8], 1
L3:
	mov	eax, DWORD PTR [ebp-8]
	cmp	eax, DWORD PTR [ebp+12]
	jl	L6
	add	DWORD PTR [ebp-4], 1
L2:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp+12]
	jl	L7
	mov	eax, 0
L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "A pair with the given sum exists.\0"
	.align 4
LC1:
	.ascii "No pair with the given sum exists.\0"
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
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp+16], 1
	mov	DWORD PTR [esp+20], 2
	mov	DWORD PTR [esp+28], 1000
	mov	DWORD PTR [esp+24], 2
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+16]
	mov	DWORD PTR [esp], eax
	call	_twoSum
	test	eax, eax
	je	L9
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	jmp	L10
L9:
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_puts
L10:
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
