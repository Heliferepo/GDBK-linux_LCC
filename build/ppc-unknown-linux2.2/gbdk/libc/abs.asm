;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Wed Oct 23 21:17:29 2024

;--------------------------------------------------------
	.module abs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area _ISEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area _BSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area _XSEG
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;	abs.c 4
;	genLabel
;	genFunction
;	---------------------------------
; Function abs
; ---------------------------------
___abs_start:
_abs:
	
;	abs.c 6
;	genCmpLt
;	AOP_STK for 
	lda	hl,3(sp)
	ld	a,(hl)
	bit	7,a
	jp	z,00102$
;	abs.c 7
;	genUminus
;	AOP_STK for 
	xor	a,a
	dec	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	c,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	b,a
;	genRet
	ld	e,c
	ld	d,b
	jp	00104$
;	genLabel
00102$:
;	abs.c 9
;	genRet
;	AOP_STK for 
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00104$:
;	genEndFunction
	
	ret
___abs_end:
	.area _CODE
