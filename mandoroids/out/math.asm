;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module math
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Math_SignedDiv_ASM
	.globl _g_RandomSeed16
	.globl _g_RandomSeed8
	.globl _Math_Div10
	.globl _Math_Div10_16b
	.globl _Math_Mod10
	.globl _Math_Mod10_16b
	.globl _Math_Flip
	.globl _Math_Flip_16b
	.globl _Math_Negative16
	.globl _Math_Swap
	.globl _Math_SetRandomSeed8
	.globl _Math_GetRandom8
	.globl _Math_SetRandomSeed16
	.globl _Math_GetRandom16
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_RandomSeed8::
	.ds 2
_g_RandomSeed16::
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:26: i8 Math_Div10(i8 val) __FASTCALL __PRESERVES(a, b, c, iyl, iyh)
;	---------------------------------
; Function Math_Div10
; ---------------------------------
_Math_Div10::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:40: __endasm;
	ld	d, #0
	ld	h, d
	ld	e, l
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	l, h
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:41: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:45: i16 Math_Div10_16b(i16 val) __FASTCALL __PRESERVES(b, d, e, iyl, iyh)
;	---------------------------------
; Function Math_Div10_16b
; ---------------------------------
_Math_Div10_16b::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:66: __endasm;
	ld	bc, #0x0D0A
	xor	a
	add	hl, hl
	rla
	add	hl, hl
	rla
	add	hl, hl
	rla
	add	hl, hl
	rla
	cp	c
	 label_0:
	jr	c, label_0 + #4
	sub	c
	inc	l
	 label_1:
	djnz	label_1 - #7
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:67: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:79: u8 Math_Mod10(u8 val) __PRESERVES(b, c, d, e, iyl, iyh)
;	---------------------------------
; Function Math_Mod10
; ---------------------------------
_Math_Mod10::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:99: __endasm;
	ld	h, a
	rrca
	rrca
	rrca
	rrca
	add	a, h
	adc	a, #0
	daa
	ld	l, a
	sub	h
	rra
	sbc	a, a
	and	#5
	add	a, l
	daa
	and	#0x0F
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:100: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:108: u8 Math_Mod10_16b(u16 val) __FASTCALL __PRESERVES(b, c, d, e, iyl, iyh)
;	---------------------------------
; Function Math_Mod10_16b
; ---------------------------------
_Math_Mod10_16b::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:132: __endasm;
	ld	a, h
	add	a, l
	adc	a, #0
	ld	h, a
	rrca
	rrca
	rrca
	rrca
	add	a, h
	adc	a, #0
	daa
	ld	h, a
	sub	l
	rra
	sbc	a, a
	and	#5
	add	a, h
	daa
	and	#0x0F
	ld	l, a
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:133: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:144: u8 Math_Flip(u8 val) __PRESERVES(c, d, e, h, l, iyl, iyh)
;	---------------------------------
; Function Math_Flip
; ---------------------------------
_Math_Flip::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:164: __endasm;
	ld	b, a
	rlca
	rlca
	xor	b
	and	#0xAA
	xor	b
	ld	b, a
	rlca
	rlca
	rlca
	rrc	b
	xor	b
	and	#0x66
	xor	b
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:165: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:169: u16 Math_Flip_16b(u16 val) __PRESERVES(c, iyl, iyh)
;	---------------------------------
; Function Math_Flip_16b
; ---------------------------------
_Math_Flip_16b::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:179: __endasm;
	ld	a, h
	call	_Math_Flip
	ld	e, a
	ld	a, l
	call	_Math_Flip
	ld	d, a
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:180: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:184: i16 Math_Negative16(i16 val) __FASTCALL __PRESERVES(b, c, d, e, iyl, iyh)
;	---------------------------------
; Function Math_Negative16
; ---------------------------------
_Math_Negative16::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:194: __endasm;
	xor	a
	sub	l
	ld	l, a
	sbc	a, a
	sub	h
	ld	h, a
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:195: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:199: u16 Math_Swap(u16 val) __PRESERVES(a, b, c, iyl, iyh)
;	---------------------------------
; Function Math_Swap
; ---------------------------------
_Math_Swap::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:205: __endasm;
	ld	e, h
	ld	d, l
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:206: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:214: void Math_SignedDiv_ASM() __naked __PRESERVES(b, c, d, e, h, l, iyl, iyh)
;	---------------------------------
; Function Math_SignedDiv_ASM
; ---------------------------------
_Math_SignedDiv_ASM::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:233: __endasm;
	 _Math_SignedDiv64::
	sra	a
	 _Math_SignedDiv32::
	sra	a
	 _Math_SignedDiv16::
	sra	a
	 _Math_SignedDiv8::
	sra	a
	 _Math_SignedDiv4::
	sra	a
	 _Math_SignedDiv2::
	sra	a
	ret	p
	inc	a
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:234: }
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:303: void Math_SetRandomSeed8(u8 seed) { g_RandomSeed8 = (u16)seed; }
;	---------------------------------
; Function Math_SetRandomSeed8
; ---------------------------------
_Math_SetRandomSeed8::
	ld	c, a
	ld	iy, #_g_RandomSeed8
	ld	0 (iy), c
	ld	1 (iy), #0x00
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:308: u8 Math_GetRandom8()
;	---------------------------------
; Function Math_GetRandom8
; ---------------------------------
_Math_GetRandom8::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:332: __endasm;
	ld	hl, (_g_RandomSeed8)
	ld	a, r
	ld	d, a
	ld	e, a
	add	hl, de
	xor	l
	add	a
	xor	h
	ld	l, a
	ld	(_g_RandomSeed8), hl
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:333: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:396: void Math_SetRandomSeed16(u16 seed)
;	---------------------------------
; Function Math_SetRandomSeed16
; ---------------------------------
_Math_SetRandomSeed16::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:398: if(seed)
	ld	a, h
	or	a, l
	jr	Z, 00102$
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:399: g_RandomSeed16 = seed;
	ld	(_g_RandomSeed16), hl
	ret
00102$:
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:401: g_RandomSeed16 = 0x7FFF;
	ld	hl, #0x7fff
	ld	(_g_RandomSeed16), hl
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:402: }
	ret
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:415: u16 Math_GetRandom16() __FASTCALL
;	---------------------------------
; Function Math_GetRandom16
; ---------------------------------
_Math_GetRandom16::
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:435: __endasm;
	 xrnd:
	ld	hl, (_g_RandomSeed16)
	ld	a, h
	rra
	ld	a, l
	rra
	xor	h
	ld	h, a
	ld	a, l
	rra
	ld	a, h
	rra
	xor	l
	ld	l, a
	xor	h
	ld	h, a
	ld	(_g_RandomSeed16), hl
;C:\MSXgl-main\MSXgl-main\engine/src/math.c:441: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__g_RandomSeed8:
	.dw #0x0001
__xinit__g_RandomSeed16:
	.dw #0x0001
	.area _CABS (ABS)
