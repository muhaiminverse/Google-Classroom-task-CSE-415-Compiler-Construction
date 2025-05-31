	.file	"sort.c"
	.intel_syntax noprefix
	.text
	.globl	_sort
	.def	_sort;	.scl	2;	.type	32;	.endef
_sort:
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
L6:
	mov	DWORD PTR [ebp-8], 0
	jmp	L3
L5:
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 1
	lea	ecx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, ecx
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jle	L4
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	edx, eax
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 1
	lea	ecx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 1
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [edx], eax
L4:
	add	DWORD PTR [ebp-8], 1
L3:
	mov	eax, DWORD PTR [ebp+12]
	sub	eax, DWORD PTR [ebp-4]
	sub	eax, 1
	cmp	eax, DWORD PTR [ebp-8]
	jg	L5
	add	DWORD PTR [ebp-4], 1
L2:
	mov	eax, DWORD PTR [ebp+12]
	sub	eax, 1
	cmp	eax, DWORD PTR [ebp-4]
	jg	L6
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Sorted array: \0"
LC1:
	.ascii "%d \0"
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
	sub	esp, 64
	call	___main
	mov	DWORD PTR [esp+28], 64
	mov	DWORD PTR [esp+32], 34
	mov	DWORD PTR [esp+36], 25
	mov	DWORD PTR [esp+40], 12
	mov	DWORD PTR [esp+44], 22
	mov	DWORD PTR [esp+48], 11
	mov	DWORD PTR [esp+52], 90
	mov	DWORD PTR [esp+56], 7
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+28]
	mov	DWORD PTR [esp], eax
	call	_sort
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	mov	DWORD PTR [esp+60], 0
	jmp	L9
L10:
	mov	eax, DWORD PTR [esp+60]
	mov	eax, DWORD PTR [esp+28+eax*4]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	add	DWORD PTR [esp+60], 1
L9:
	mov	eax, DWORD PTR [esp+60]
	cmp	eax, DWORD PTR [esp+56]
	jl	L10
	mov	DWORD PTR [esp], 10
	call	_putchar
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
