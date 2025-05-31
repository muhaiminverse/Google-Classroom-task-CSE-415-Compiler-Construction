	.file	"fibo.c"
	.intel_syntax noprefix
	.text
	.globl	_fibonacci
	.def	_fibonacci;	.scl	2;	.type	32;	.endef
_fibonacci:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	cmp	DWORD PTR [ebp+8], 1
	jg	L2
	mov	eax, DWORD PTR [ebp+8]
	jmp	L3
L2:
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 1
	mov	DWORD PTR [esp], eax
	call	_fibonacci
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 2
	mov	DWORD PTR [esp], eax
	call	_fibonacci
	add	eax, ebx
L3:
	add	esp, 20
	pop	ebx
	.cfi_restore 3
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter a number: \0"
LC1:
	.ascii "%d\0"
	.align 4
LC2:
	.ascii "Fibonacci is not defined for negative numbers.\0"
LC3:
	.ascii "Fibonacci of %d is %d\12\0"
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
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	eax, [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	eax, DWORD PTR [esp+28]
	test	eax, eax
	jns	L5
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
	jmp	L6
L5:
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	call	_fibonacci
	mov	edx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+8], edx
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
L6:
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
