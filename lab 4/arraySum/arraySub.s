	.file	"arraySub.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "The sum of the array elements is: %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 48
	call	___main
	mov	DWORD PTR [esp+16], 1
	mov	DWORD PTR [esp+20], 2
	mov	DWORD PTR [esp+24], 3
	mov	DWORD PTR [esp+28], 4
	mov	DWORD PTR [esp+32], 5
	mov	DWORD PTR [esp+44], 0
	mov	DWORD PTR [esp+36], 5
	mov	DWORD PTR [esp+40], 0
	jmp	L2
L3:
	mov	eax, DWORD PTR [esp+40]
	mov	eax, DWORD PTR [esp+16+eax*4]
	add	DWORD PTR [esp+44], eax
	add	DWORD PTR [esp+40], 1
L2:
	mov	eax, DWORD PTR [esp+40]
	cmp	eax, DWORD PTR [esp+36]
	jl	L3
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
