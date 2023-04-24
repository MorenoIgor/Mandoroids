;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module mandoroids
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ScrollBackgroundToTheLeft
	.globl _chance
	.globl _Math_GetRandom8
	.globl _Math_SetRandomSeed8
	.globl _Print_SetColor
	.globl _Print_DrawInt
	.globl _Print_DrawText
	.globl _Print_SetTextFont
	.globl _VDP_SetSpritePattern
	.globl _VDP_SetSpritePositionY
	.globl _VDP_SetSpritePosition
	.globl _VDP_SetSpriteSM1
	.globl _VDP_LoadSpritePattern
	.globl _VDP_Peek_16K
	.globl _VDP_ReadVRAM_16K
	.globl _VDP_FillVRAM_16K
	.globl _VDP_WriteVRAM_16K
	.globl _VDP_RegWriteBakMask
	.globl _VDP_RegWrite
	.globl _VDP_SetMode
	.globl _VDP_ClearVRAM
	.globl _Bios_Exit
	.globl _Keyboard_IsKeyPressed
	.globl _Joystick_Update
	.globl _shot_active
	.globl _shot_pos_tile
	.globl _shot_pos
	.globl _can_reset
	.globl _button_down
	.globl _asteroid_destroyed
	.globl _joystick_used
	.globl _asteroids_shot
	.globl _speed_up_timer
	.globl _difficulty_timer
	.globl _can_shoot_timer
	.globl _can_shoot
	.globl _game_ended
	.globl _game_started
	.globl _asteroid_chance
	.globl _scroll_rate
	.globl _update_rate
	.globl _input_rate
	.globl _vy
	.globl _asteroid_arrangements
	.globl _hundred
	.globl _count
	.globl _new_column_buffer
	.globl _pattern_buffer
	.globl _py
	.globl _px
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_Font_MGL_Sample6
	.globl _blank
	.globl _shot_pattern
	.globl _asteroid
	.globl _jetpack_f1
	.globl _jetpack_f0
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _GetRandomColumn
	.globl _CreateColumn
	.globl _Shoot
	.globl _UpdateShots
	.globl _UpdateCollision
	.globl _ResetGame
	.globl _FinalScreen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
_px::
	.ds 1
_py::
	.ds 1
_pattern_buffer::
	.ds 744
_new_column_buffer::
	.ds 3
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_count::
	.ds 1
_hundred::
	.ds 1
_asteroid_arrangements::
	.ds 8
_vy::
	.ds 1
_input_rate::
	.ds 1
_update_rate::
	.ds 1
_scroll_rate::
	.ds 1
_asteroid_chance::
	.ds 1
_game_started::
	.ds 1
_game_ended::
	.ds 1
_can_shoot::
	.ds 1
_can_shoot_timer::
	.ds 2
_difficulty_timer::
	.ds 2
_speed_up_timer::
	.ds 2
_asteroids_shot::
	.ds 2
_joystick_used::
	.ds 1
_asteroid_destroyed::
	.ds 1
_button_down::
	.ds 1
_can_reset::
	.ds 1
_shot_pos::
	.ds 2
_shot_pos_tile::
	.ds 2
_shot_active::
	.ds 1
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
;./random.c:1: unsigned char chance(unsigned char prcntg) {
;	---------------------------------
; Function chance
; ---------------------------------
_chance::
;./random.c:2: char rs = hundred <= prcntg;
	ld	iy, #_hundred
	sub	a, 0 (iy)
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	c, a
;./random.c:3: hundred += 255; 
	ld	a, (_hundred+0)
	dec	a
	ld	(_hundred+0), a
;./random.c:4: return rs;
	ld	a, c
;./random.c:5: }
	ret
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
_jetpack_f0:
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0xf8	; 248
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
_jetpack_f1:
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x03	; 3
	.db #0x1b	; 27
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0xf8	; 248
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
_asteroid:
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x51	; 81	'Q'
	.db #0x8a	; 138
	.db #0xa1	; 161
	.db #0x89	; 137
	.db #0x51	; 81	'Q'
	.db #0x2e	; 46
_shot_pattern:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_blank:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
;./mandoroids.c:100: void ScrollBackgroundToTheLeft() {
;	---------------------------------
; Function ScrollBackgroundToTheLeft
; ---------------------------------
_ScrollBackgroundToTheLeft::
;./mandoroids.c:102: VDP_ReadVRAM_16K(g_ScreenLayoutLow + 1,pattern_buffer,768);
	ld	bc, #_pattern_buffer
	ld	hl, (_g_ScreenLayoutLow)
	inc	hl
	ld	de, #0x0300
	push	de
	push	bc
	push	hl
	call	_VDP_ReadVRAM_16K
	pop	af
	pop	af
;./mandoroids.c:103: VDP_WriteVRAM_16K(pattern_buffer,g_ScreenLayoutLow,768);
	ld	hl, #0x0300
	ex	(sp),hl
	ld	hl, (_g_ScreenLayoutLow)
	push	hl
	ld	hl, #_pattern_buffer
	push	hl
	call	_VDP_WriteVRAM_16K
	pop	af
	pop	af
	pop	af
;./mandoroids.c:105: GetRandomColumn();
	call	_GetRandomColumn
;./mandoroids.c:106: CreateColumn(31);
	ld	a, #0x1f
;./mandoroids.c:107: }
	jp	_CreateColumn
_g_Font_MGL_Sample6:
	.db #0x88	; 136
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0x94	; 148
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x70	; 112	'p'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x64	; 100	'd'
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xc8	; 200
	.db #0x88	; 136
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x88	; 136
	.db #0xc8	; 200
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x88	; 136
	.db #0xa8	; 168
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xb4	; 180
	.db #0xb4	; 180
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0xd4	; 212
	.db #0xd4	; 212
	.db #0xd4	; 212
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xd4	; 212
	.db #0xc8	; 200
	.db #0xd4	; 212
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x7c	; 124
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x7c	; 124
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x50	; 80	'P'
	.db #0x38	; 56	'8'
	.db #0x14	; 20
	.db #0x54	; 84	'T'
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x64	; 100	'd'
	.db #0x68	; 104	'h'
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x2c	; 44
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x54	; 84	'T'
	.db #0x64	; 100	'd'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x48	; 72	'H'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x04	; 4
	.db #0x34	; 52	'4'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x50	; 80	'P'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x6c	; 108	'l'
	.db #0x54	; 84	'T'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x04	; 4
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x64	; 100	'd'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x64	; 100	'd'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x78	; 120	'x'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x38	; 56	'8'
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x24	; 36
	.db #0x64	; 100	'd'
	.db #0xfc	; 252
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x64	; 100	'd'
	.db #0xfc	; 252
	.db #0x64	; 100	'd'
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x6c	; 108	'l'
	.db #0x6c	; 108	'l'
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0xe8	; 232
	.db #0x08	; 8
	.db #0xe8	; 232
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x5f	; 95
	.db #0x40	; 64
	.db #0x5f	; 95
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x2f	; 47
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xe8	; 232
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x2f	; 47
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0xe8	; 232
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x88	; 136
	.db #0x22	; 34
	.db #0x88	; 136
	.db #0x22	; 34
	.db #0x88	; 136
	.db #0x22	; 34
	.db #0x88	; 136
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xee	; 238
	.db #0xbb	; 187
	.db #0xee	; 238
	.db #0xbb	; 187
	.db #0xee	; 238
	.db #0xbb	; 187
	.db #0xee	; 238
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x44	; 68	'D'
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x44	; 68	'D'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xd8	; 216
	.db #0x88	; 136
	.db #0xd8	; 216
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xd8	; 216
	.db #0x88	; 136
	.db #0x98	; 152
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xd8	; 216
	.db #0x08	; 8
	.db #0xd8	; 216
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x98	; 152
	.db #0x88	; 136
	.db #0xd8	; 216
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0xd8	; 216
	.db #0x88	; 136
	.db #0xd8	; 216
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xc8	; 200
	.db #0x88	; 136
	.db #0xd8	; 216
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xd8	; 216
	.db #0x80	; 128
	.db #0xd8	; 216
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xd8	; 216
	.db #0x88	; 136
	.db #0xc8	; 200
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0xc8	; 200
	.db #0xe8	; 232
	.db #0xc8	; 200
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x98	; 152
	.db #0xb8	; 184
	.db #0x98	; 152
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0xd8	; 216
	.db #0xfc	; 252
	.db #0xd8	; 216
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x6c	; 108	'l'
	.db #0xfc	; 252
	.db #0x6c	; 108	'l'
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x7c	; 124
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x28	; 40
	.db #0x9c	; 156
	.db #0x08	; 8
	.db #0x00	; 0
;./mandoroids.c:109: void GetRandomColumn() {
;	---------------------------------
; Function GetRandomColumn
; ---------------------------------
_GetRandomColumn::
;./mandoroids.c:113: new_column_buffer[0] = 0;
	ld	hl, #_new_column_buffer
	ld	(hl), #0x00
;./mandoroids.c:114: new_column_buffer[1] = 0;
	ld	hl, #(_new_column_buffer + 1)
	ld	(hl), #0x00
;./mandoroids.c:115: new_column_buffer[2] = 0;
	ld	hl, #(_new_column_buffer + 2)
	ld	(hl), #0x00
;C:/MSXgl-main/MSXgl-main/engine/src/math.h:264: inline u8 Math_GetRandomRange8(u8 min, u8 max) { return min + Math_GetRandom8() % (max - min); }
	call	_Math_GetRandom8
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0065
	call	__modsint
;./mandoroids.c:118: if (chnc<=asteroid_chance) {
	ld	a, (#_asteroid_chance)
	sub	a, e
	jr	C, 00102$
;./mandoroids.c:119: new_column_buffer[0] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
;C:/MSXgl-main/MSXgl-main/engine/src/math.h:264: inline u8 Math_GetRandomRange8(u8 min, u8 max) { return min + Math_GetRandom8() % (max - min); }
	call	_Math_GetRandom8
	and	a, #0x07
	ld	c, a
;./mandoroids.c:119: new_column_buffer[0] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
	ld	hl, #_asteroid_arrangements
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(#_new_column_buffer),a
00102$:
;C:/MSXgl-main/MSXgl-main/engine/src/math.h:264: inline u8 Math_GetRandomRange8(u8 min, u8 max) { return min + Math_GetRandom8() % (max - min); }
	call	_Math_GetRandom8
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0065
	call	__modsint
;./mandoroids.c:122: if (chnc<=asteroid_chance) {
	ld	a, (#_asteroid_chance)
	sub	a, e
	jr	C, 00104$
;./mandoroids.c:123: new_column_buffer[1] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
;C:/MSXgl-main/MSXgl-main/engine/src/math.h:264: inline u8 Math_GetRandomRange8(u8 min, u8 max) { return min + Math_GetRandom8() % (max - min); }
	call	_Math_GetRandom8
	and	a, #0x07
	ld	c, a
;./mandoroids.c:123: new_column_buffer[1] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
	ld	hl, #_asteroid_arrangements
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(#(_new_column_buffer + 1)),a
00104$:
;C:/MSXgl-main/MSXgl-main/engine/src/math.h:264: inline u8 Math_GetRandomRange8(u8 min, u8 max) { return min + Math_GetRandom8() % (max - min); }
	call	_Math_GetRandom8
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0065
	call	__modsint
;./mandoroids.c:126: if (chnc<=asteroid_chance) {
	ld	a, (#_asteroid_chance)
	sub	a, e
	ret	C
;./mandoroids.c:127: new_column_buffer[2] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
;C:/MSXgl-main/MSXgl-main/engine/src/math.h:264: inline u8 Math_GetRandomRange8(u8 min, u8 max) { return min + Math_GetRandom8() % (max - min); }
	call	_Math_GetRandom8
	and	a, #0x07
	ld	c, a
;./mandoroids.c:127: new_column_buffer[2] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
	ld	hl, #_asteroid_arrangements
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(#(_new_column_buffer + 2)),a
;./mandoroids.c:129: }
	ret
;./mandoroids.c:131: void CreateColumn(char x) {
;	---------------------------------
; Function CreateColumn
; ---------------------------------
_CreateColumn::
	ld	c, a
;./mandoroids.c:133: SetTileAtXY(x,0,new_column_buffer[0] & 1 << 1);
	ld	b, #0x00
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	and	a, #0x02
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:134: SetTileAtXY(x,1,new_column_buffer[0]>>1 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0020
	add	hl, de
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	srl	a
	and	a, #0x02
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:135: SetTileAtXY(x,2,new_column_buffer[0]>>2 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0040
	add	hl, de
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	rrca
	rrca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:136: SetTileAtXY(x,3,new_column_buffer[0]>>3 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	rrca
	rrca
	rrca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:137: SetTileAtXY(x,4,new_column_buffer[0]>>4 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0080
	add	hl, de
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:138: SetTileAtXY(x,5,new_column_buffer[0]>>5 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x00a0
	add	hl, de
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	rlca
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:139: SetTileAtXY(x,6,new_column_buffer[0]>>6 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x00c0
	add	hl, de
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:140: SetTileAtXY(x,7,new_column_buffer[0]>>7 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x00e0
	add	hl, de
	ex	de, hl
	ld	a, (#_new_column_buffer + 0)
	rlca
	and	a, #0x0
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:142: SetTileAtXY(x,8,new_column_buffer[1] & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	e, l
	ld	a, h
	inc	a
	ld	d, a
	ld	a, (#(_new_column_buffer + 1) + 0)
	and	a, #0x02
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:143: SetTileAtXY(x,9,new_column_buffer[1]>>1 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0120
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 1) + 0)
	srl	a
	and	a, #0x02
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:144: SetTileAtXY(x,10,new_column_buffer[1]>>2 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0140
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 1) + 0)
	rrca
	rrca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:145: SetTileAtXY(x,11,new_column_buffer[1]>>3 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0160
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 1) + 0)
	rrca
	rrca
	rrca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:146: SetTileAtXY(x,12,new_column_buffer[1]>>4 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0180
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 1) + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:147: SetTileAtXY(x,13,new_column_buffer[1]>>5 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x01a0
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 1) + 0)
	rlca
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:148: SetTileAtXY(x,14,new_column_buffer[1]>>6 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x01c0
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 1) + 0)
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:149: SetTileAtXY(x,15,new_column_buffer[1]>>7 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x01e0
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 1) + 0)
	rlca
	and	a, #0x0
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:151: SetTileAtXY(x,16,new_column_buffer[2] & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	e, l
	ld	a, h
	add	a, #0x02
	ld	d, a
	ld	a, (#(_new_column_buffer + 2) + 0)
	and	a, #0x02
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:152: SetTileAtXY(x,17,new_column_buffer[2]>>1 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0220
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 2) + 0)
	srl	a
	and	a, #0x02
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:153: SetTileAtXY(x,18,new_column_buffer[2]>>2 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0240
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 2) + 0)
	rrca
	rrca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:154: SetTileAtXY(x,19,new_column_buffer[2]>>3 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0260
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 2) + 0)
	rrca
	rrca
	rrca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:155: SetTileAtXY(x,20,new_column_buffer[2]>>4 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x0280
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 2) + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:156: SetTileAtXY(x,21,new_column_buffer[2]>>5 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x02a0
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 2) + 0)
	rlca
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:157: SetTileAtXY(x,22,new_column_buffer[2]>>6 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	de, #0x02c0
	add	hl, de
	ex	de, hl
	ld	a, (#(_new_column_buffer + 2) + 0)
	rlca
	rlca
	and	a, #0x2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	a, l
	call	_VDP_FillVRAM_16K
	pop	bc
;./mandoroids.c:158: SetTileAtXY(x,23,new_column_buffer[2]>>7 & 1 << 1);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	bc, #0x02e0
	add	hl, bc
	ex	de, hl
	ld	a, (#(_new_column_buffer + 2) + 0)
	rlca
	and	a, #0x0
	ld	c, a
	ld	hl, #0x0001
	push	hl
	ld	a, c
	call	_VDP_FillVRAM_16K
;./mandoroids.c:160: }
	ret
;./mandoroids.c:162: void Shoot() {
;	---------------------------------
; Function Shoot
; ---------------------------------
_Shoot::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;./mandoroids.c:164: if (shot_active==FALSE) {
	ld	a, (_shot_active+0)
	or	a, a
	jp	NZ, 00103$
;./mandoroids.c:165: shot_active = TRUE;
	ld	hl, #_shot_active
	ld	(hl), #0x01
;./mandoroids.c:167: shot_pos[0] = px-4;
	ld	de, #_shot_pos+0
	ld	a, (_px+0)
	add	a, #0xfc
	ld	(de), a
;./mandoroids.c:168: shot_pos[1] = py-4;
	ld	c, e
	ld	b, d
	inc	bc
	ld	a, (_py+0)
	add	a, #0xfc
	ld	(bc), a
;./mandoroids.c:170: shot_pos_tile[0] = (shot_pos[0]+32)/8;
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	add	a, #0x20
	ld	-2 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-1 (ix), a
	pop	de
	push	de
	bit	7, -1 (ix)
	jr	Z, 00105$
	ld	de, #0x27
	add	hl, de
	ex	de,hl
00105$:
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	hl, #_shot_pos_tile
	ld	(hl), e
;./mandoroids.c:171: shot_pos_tile[1] = (shot_pos[1]+16)/8;
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0010
	add	hl, bc
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z, 00106$
	ld	hl, #0x0017
	add	hl, bc
	ex	de, hl
00106$:
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	hl, #(_shot_pos_tile + 1)
	ld	(hl), e
;./mandoroids.c:173: VDP_SetSpritePosition(1,px-4,py-4);
	ld	a, (_py+0)
	add	a, #0xfc
	ld	b, a
	ld	a, (_px+0)
	add	a, #0xfc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	inc	sp
	ld	a, #0x01
	call	_VDP_SetSpritePosition
;./mandoroids.c:174: can_shoot = FALSE;
	ld	hl, #_can_shoot
	ld	(hl), #0x00
00103$:
;./mandoroids.c:178: }
	ld	sp, ix
	pop	ix
	ret
;./mandoroids.c:180: void UpdateShots() {
;	---------------------------------
; Function UpdateShots
; ---------------------------------
_UpdateShots::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;./mandoroids.c:182: if (shot_active==TRUE) {
	ld	a, (_shot_active+0)
	dec	a
	jp	NZ,00109$
;./mandoroids.c:183: shot_pos[0]+=2;
	ld	bc, #_shot_pos+0
	ld	a, (bc)
	add	a, #0x02
	ld	(bc), a
;./mandoroids.c:184: VDP_SetSpritePosition(1,shot_pos[0],shot_pos[1]);
	ld	hl, #(_shot_pos + 1)
	ld	d, (hl)
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	push	de
	inc	sp
	ld	a, #0x01
	call	_VDP_SetSpritePosition
	pop	bc
;./mandoroids.c:185: if (shot_pos[0]>=250) {
	ld	a, (bc)
	sub	a, #0xfa
	jr	C, 00102$
;./mandoroids.c:186: shot_active = FALSE;
	ld	hl, #_shot_active
	ld	(hl), #0x00
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:1121: inline void VDP_HideSprite(u8 index) { VDP_SetSpritePositionY(index, VDP_SPRITE_HIDE); }
	push	bc
	ld	l, #0xd5
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_SetSpritePositionY
	pop	bc
;./mandoroids.c:187: VDP_HideSprite(1);
00102$:
;./mandoroids.c:190: char tlx = ((shot_pos[0]+32)/8)-2;
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0020
	add	hl, bc
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z, 00111$
	ld	hl, #0x0027
	add	hl, bc
	ex	de, hl
00111$:
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	add	a, #0xfe
	ld	-1 (ix), a
;./mandoroids.c:191: char tly = (shot_pos[1]+16)/8;
	ld	a, (#(_shot_pos + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0010
	add	hl, bc
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z, 00112$
	ld	hl, #0x0017
	add	hl, bc
	ex	de, hl
00112$:
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;./mandoroids.c:193: char tl = GetTileAtXY(tlx,tly);
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	add	hl, de
	call	_VDP_Peek_16K
;./mandoroids.c:194: if (tl==2) {
	sub	a, #0x02
	jr	NZ, 00109$
;./mandoroids.c:195: SetTileAtXY(tlx,tly,0);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	add	hl, de
	ex	de, hl
	ld	hl, #0x0001
	push	hl
	xor	a, a
	call	_VDP_FillVRAM_16K
;./mandoroids.c:196: shot_active = FALSE;
	ld	hl, #_shot_active
	ld	(hl), #0x00
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:1121: inline void VDP_HideSprite(u8 index) { VDP_SetSpritePositionY(index, VDP_SPRITE_HIDE); }
	ld	l, #0xd5
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_SetSpritePositionY
;./mandoroids.c:199: asteroids_shot++;
	ld	hl, (_asteroids_shot)
	inc	hl
	ld	(_asteroids_shot), hl
;./mandoroids.c:200: asteroid_destroyed = TRUE;
	ld	hl, #_asteroid_destroyed
	ld	(hl), #0x01
00109$:
;./mandoroids.c:204: }
	inc	sp
	pop	ix
	ret
;./mandoroids.c:206: void UpdateCollision() {
;	---------------------------------
; Function UpdateCollision
; ---------------------------------
_UpdateCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;./mandoroids.c:208: char cx = (px + 16)/8;
	ld	a, (_px+0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0010
	add	hl, bc
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z, 00107$
	ld	hl, #0x0017
	add	hl, bc
	ex	de, hl
00107$:
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	-1 (ix), e
;./mandoroids.c:209: char cy = (py + 16)/8;
	ld	a, (_py+0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0010
	add	hl, bc
;	spillPairReg hl
;	spillPairReg hl
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	bit	7, d
	jr	Z, 00108$
	ld	hl, #0x0017
	add	hl, bc
00108$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;./mandoroids.c:210: char cy2 = cy+1;
	ld	a, l
	ld	e, a
	inc	e
;./mandoroids.c:211: char cy3 = cy-1;
	dec	a
	ld	-2 (ix), a
;./mandoroids.c:213: char tl = GetTileAtXY(cx,cy);
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	iy, (_g_ScreenLayoutLow)
	add	iy, bc
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	push	iy
	pop	hl
	call	_VDP_Peek_16K
	ld	-1 (ix), a
;./mandoroids.c:214: char tl2 = GetTileAtXY(cx,cy2);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	add	hl, de
	call	_VDP_Peek_16K
	ld	e, a
;./mandoroids.c:215: char tl3 = GetTileAtXY(cx,cy3);
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	call	_VDP_Peek_16K
	ld	c, a
;./mandoroids.c:217: if (tl==2 || tl2==2 || tl3==2) {
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	Z, 00101$
	ld	a, e
	sub	a, #0x02
	jr	Z, 00101$
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00105$
00101$:
;./mandoroids.c:218: FinalScreen();
	call	_FinalScreen
00105$:
;./mandoroids.c:221: }
	ld	sp, ix
	pop	ix
	ret
;./mandoroids.c:223: void ResetGame() {
;	---------------------------------
; Function ResetGame
; ---------------------------------
_ResetGame::
;./mandoroids.c:225: asteroids_shot = 0;
	ld	hl, #0x0000
	ld	(_asteroids_shot), hl
;./mandoroids.c:227: difficulty_timer = 0;
	ld	(_difficulty_timer), hl
;./mandoroids.c:229: speed_up_timer = 0;
	ld	(_speed_up_timer), hl
;./mandoroids.c:231: asteroid_chance = 10;
	ld	hl, #_asteroid_chance
	ld	(hl), #0x0a
;./mandoroids.c:233: scroll_rate = 128;
	ld	hl, #_scroll_rate
	ld	(hl), #0x80
;./mandoroids.c:235: can_reset = FALSE;
	ld	hl, #_can_reset
	ld	(hl), #0x00
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:629: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:239: VDP_ClearVRAM();
	call	_VDP_ClearVRAM
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:643: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x07
	call	_VDP_RegWrite
;./mandoroids.c:243: Print_SetTextFont(g_Font_MGL_Sample6, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_g_Font_MGL_Sample6
	call	_Print_SetTextFont
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x0b
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x02
;./mandoroids.c:246: Print_DrawText("MANDOROIDS");
	ld	hl, #___str_0
	call	_Print_DrawText
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x06
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x05
;./mandoroids.c:249: Print_DrawText("Atire nos asteroides");
	ld	hl, #___str_1
	call	_Print_DrawText
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x03
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x08
;./mandoroids.c:252: Print_DrawText("SETAS movem, ESPACO atira");
	ld	hl, #___str_2
	call	_Print_DrawText
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x07
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x09
;./mandoroids.c:254: Print_DrawText("OU use o joystick");
	ld	hl, #___str_3
	call	_Print_DrawText
;./mandoroids.c:257: Print_DrawTextAt(14,22,"2023");
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x0e
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x16
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:462: Print_DrawText(str);
	ld	hl, #___str_4
	call	_Print_DrawText
;./mandoroids.c:258: Print_DrawTextAt(10,23,"IGOR MORENO");
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x0a
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x17
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:462: Print_DrawText(str);
	ld	hl, #___str_5
	call	_Print_DrawText
;./mandoroids.c:262: SetPatternSM1(asteroid,2,1);
	ld	hl, (_g_ScreenPatternLow)
	ld	bc, #0x0010
	add	hl, bc
	ld	bc, #_asteroid+0
	ld	de, #0x0008
	push	de
	push	hl
	push	bc
	call	_VDP_WriteVRAM_16K
	pop	af
	pop	af
	pop	af
;./mandoroids.c:263: Print_SetColor(0xF, 0x1);
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_Print_SetColor
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:964: inline void VDP_SetSpriteFlag(u8 flag) { VDP_RegWriteBakMask(1, (u8)~(R01_ST|R01_MAG), flag); }
	ld	a, #0x03
	push	af
	inc	sp
	ld	l, #0xfc
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:269: px = 112;
	ld	hl, #_px
	ld	(hl), #0x70
;./mandoroids.c:270: py = 112;
	ld	hl, #_py
	ld	(hl), #0x70
;./mandoroids.c:272: game_started = FALSE;
	ld	hl, #_game_started
	ld	(hl), #0x00
;./mandoroids.c:273: game_ended = FALSE;
	ld	hl, #_game_ended
	ld	(hl), #0x00
;./mandoroids.c:275: VDP_LoadSpritePattern(jetpack_f0,0,8);
	ld	hl, #0x800
	push	hl
	ld	hl, #_jetpack_f0
	call	_VDP_LoadSpritePattern
;./mandoroids.c:276: VDP_SetSpriteSM1(0,px,py,0,15);
	ld	a, #0x0f
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	a, (_py+0)
	push	af
	inc	sp
	ld	a, (_px+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_VDP_SetSpriteSM1
;./mandoroids.c:279: VDP_LoadSpritePattern(shot_pattern,12,4);
	ld	hl, #0x40c
	push	hl
	ld	hl, #_shot_pattern
	call	_VDP_LoadSpritePattern
;./mandoroids.c:280: VDP_SetSpriteSM1(1,0,208,12,11);
	ld	hl, #0xb0c
	push	hl
	ld	a, #0xd0
	push	af
	inc	sp
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_SetSpriteSM1
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:629: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	ld	a, #0x40
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:281: VDP_EnableDisplay(TRUE);
;./mandoroids.c:282: }
	ret
___str_0:
	.ascii "MANDOROIDS"
	.db 0x00
___str_1:
	.ascii "Atire nos asteroides"
	.db 0x00
___str_2:
	.ascii "SETAS movem, ESPACO atira"
	.db 0x00
___str_3:
	.ascii "OU use o joystick"
	.db 0x00
___str_4:
	.ascii "2023"
	.db 0x00
___str_5:
	.ascii "IGOR MORENO"
	.db 0x00
;./mandoroids.c:284: void FinalScreen() {
;	---------------------------------
; Function FinalScreen
; ---------------------------------
_FinalScreen::
;./mandoroids.c:286: game_ended = TRUE;
	ld	hl, #_game_ended
	ld	(hl), #0x01
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:1121: inline void VDP_HideSprite(u8 index) { VDP_SetSpritePositionY(index, VDP_SPRITE_HIDE); }
	ld	l, #0xd5
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_VDP_SetSpritePositionY
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:629: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:292: VDP_ClearVRAM();
	call	_VDP_ClearVRAM
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:643: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x07
	call	_VDP_RegWrite
;./mandoroids.c:296: Print_SetColor(0xF, 0x1);
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_Print_SetColor
;./mandoroids.c:298: Print_SetTextFont(g_Font_MGL_Sample6, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_g_Font_MGL_Sample6
	call	_Print_SetTextFont
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x02
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x09
;./mandoroids.c:301: Print_DrawText("ASTEROIDES DESTRUIDOS:");
	ld	hl, #___str_6
	call	_Print_DrawText
;./mandoroids.c:303: Print_DrawIntAt(25,9,asteroids_shot);
	ld	de, (_asteroids_shot)
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x19
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x09
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:532: Print_DrawInt(val);
	ld	a, d
	rlca
	sbc	hl, hl
	call	_Print_DrawInt
;./mandoroids.c:305: Print_DrawTextAt(2,12,"ESPACO OU TIRO PARA JOGAR");
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:203: g_PrintData.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x02
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:204: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x0c
;C:/MSXgl-main/MSXgl-main/engine/src/print.h:462: Print_DrawText(str);
	ld	hl, #___str_7
	call	_Print_DrawText
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:629: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	ld	a, #0x40
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:307: VDP_EnableDisplay(TRUE);
;./mandoroids.c:308: }
	ret
___str_6:
	.ascii "ASTEROIDES DESTRUIDOS:"
	.db 0x00
___str_7:
	.ascii "ESPACO OU TIRO PARA JOGAR"
	.db 0x00
;./mandoroids.c:310: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;./mandoroids.c:314: Math_SetRandomSeed8(0x20);
	ld	a, #0x20
	call	_Math_SetRandomSeed8
;./mandoroids.c:316: VDP_SetMode(VDP_MODE_SCREEN1);
	ld	a, #0x02
	call	_VDP_SetMode
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:636: inline void VDP_EnableVBlank(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_IE0, enable ? R01_IE0 : 0); }
	ld	a, #0x20
	push	af
	inc	sp
	ld	l, #0xdf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:319: ResetGame();
	call	_ResetGame
;./mandoroids.c:321: while(!Keyboard_IsKeyPressed(KEY_ESC))
00167$:
	ld	a, #0x27
	call	_Keyboard_IsKeyPressed
	or	a, a
	jp	NZ, 00169$
;./mandoroids.c:324: Joystick_Update();
	call	_Joystick_Update
;./mandoroids.c:326: char dir = Joystick_GetDirection(JOY_PORT_1);
	ld	a, (#_g_JoyStats + 0)
	push	af
	and	a, #0x0f
	ld	c, a
	pop	af
;./mandoroids.c:327: char jb = Joystick_IsButtonPressed(JOY_PORT_1,JOY_INPUT_TRIGGER_A);
	and	a, #0x10
	sub	a,#0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	-4 (ix), a
;./mandoroids.c:328: button_down = jb;
;./mandoroids.c:330: if (button_down>0) {
	ld	(_button_down+0), a
	or	a, a
	jr	Z, 00102$
;./mandoroids.c:331: joystick_used = TRUE;
	ld	hl, #_joystick_used
	ld	(hl), #0x01
00102$:
;./mandoroids.c:334: char jl = dir & JOY_INPUT_DIR_LEFT;
	ld	a, c
	and	a, #0x04
	ld	-3 (ix), a
;./mandoroids.c:335: char jr = dir & JOY_INPUT_DIR_RIGHT;
	ld	a, c
	and	a, #0x08
	ld	-2 (ix), a
;./mandoroids.c:336: char ju = dir & JOY_INPUT_DIR_UP;
	ld	a, c
	and	a, #0x01
	ld	-1 (ix), a
;./mandoroids.c:338: count++;
	ld	hl, #_count
	inc	(hl)
;./mandoroids.c:339: can_shoot_timer++;
	ld	hl, (_can_shoot_timer)
	inc	hl
	ld	(_can_shoot_timer), hl
;./mandoroids.c:340: difficulty_timer++;
	ld	hl, (_difficulty_timer)
	inc	hl
	ld	(_difficulty_timer), hl
;./mandoroids.c:341: speed_up_timer++;
	ld	hl, (_speed_up_timer)
	inc	hl
	ld	(_speed_up_timer), hl
;./mandoroids.c:343: hundred = count%100;
	ld	a, (_count+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x0064
	call	__modsint
	pop	hl
	ld	a, e
	ld	(#_hundred), a
;./mandoroids.c:345: if (count%2==0 && (vy<0 || !game_started)) {
	bit	0, l
	jr	NZ, 00104$
	ld	a, (_vy+0)
	bit	7, a
	jr	NZ, 00103$
	ld	a, (_game_started+0)
	or	a, a
	jr	NZ, 00104$
00103$:
;./mandoroids.c:346: VDP_SetSpritePattern(0,4);
	ld	l, #0x04
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_VDP_SetSpritePattern
	jr	00105$
00104$:
;./mandoroids.c:348: VDP_SetSpritePattern(0,0);
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	l, a
	call	_VDP_SetSpritePattern
00105$:
;./mandoroids.c:351: if (game_started==FALSE) {
	ld	a, (_game_started+0)
	or	a, a
	jr	NZ, 00113$
;./mandoroids.c:352: if (Keyboard_IsKeyPressed(KEY_UP) || jb || ju) {
	ld	a, #0x58
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00108$
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00108$
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00166$
00108$:
;./mandoroids.c:353: game_started = TRUE;
	ld	hl, #_game_started
	ld	(hl), #0x01
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:629: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:355: VDP_FillVRAM_16K(0,g_ScreenLayoutLow,768);
	ld	hl, #0x0300
	push	hl
	ld	de, (_g_ScreenLayoutLow)
	xor	a, a
	call	_VDP_FillVRAM_16K
;C:/MSXgl-main/MSXgl-main/engine/src/vdp.h:629: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	ld	a, #0x40
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./mandoroids.c:358: goto FRAME_END;
	jp	00166$
00113$:
;./mandoroids.c:361: if (game_ended==TRUE) {
	ld	a, (_game_ended+0)
	dec	a
	jr	NZ, 00122$
;./mandoroids.c:362: if (!button_down || !Keyboard_IsKeyPressed(KEY_SPACE)) {
	ld	a, (_button_down+0)
	or	a, a
	jr	Z, 00114$
	ld	a, #0x08
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00115$
00114$:
;./mandoroids.c:363: can_reset = TRUE;
	ld	hl, #_can_reset
	ld	(hl), #0x01
00115$:
;./mandoroids.c:365: if ((Keyboard_IsKeyPressed(KEY_SPACE) || jb) && can_reset) {
	ld	a, #0x08
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00120$
	ld	a, -4 (ix)
	or	a, a
	jp	Z, 00166$
00120$:
	ld	a, (_can_reset+0)
	or	a, a
	jp	Z, 00166$
;./mandoroids.c:366: ResetGame();
	call	_ResetGame
;./mandoroids.c:368: goto FRAME_END;
	jp	00166$
00122$:
;./mandoroids.c:372: if (count%input_rate==0){
	ld	a, (_input_rate+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_count+0)
	call	__moduchar
	ld	a, e
	or	a, a
	jr	NZ, 00135$
;./mandoroids.c:374: if ((Keyboard_IsKeyPressed(KEY_LEFT) || jl) && px > 8) {
	ld	a, #0x48
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00126$
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00124$
00126$:
	ld	a, #0x08
	ld	iy, #_px
	sub	a, 0 (iy)
	jr	NC, 00124$
;./mandoroids.c:375: px--;
	dec	0 (iy)
00124$:
;./mandoroids.c:377: if ((Keyboard_IsKeyPressed(KEY_RIGHT) || jr) && px < 200) {
	ld	a, #0x78
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00130$
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00128$
00130$:
	ld	a, (_px+0)
	sub	a, #0xc8
	jr	NC, 00128$
;./mandoroids.c:378: px++;
	ld	hl, #_px
	inc	(hl)
00128$:
;./mandoroids.c:380: if ((Keyboard_IsKeyPressed(KEY_UP) || ju)) {
	ld	a, #0x58
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00131$
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00135$
00131$:
;./mandoroids.c:381: vy = vy-- > -3 ? vy : -3;
	ld	a, (_vy+0)
	ld	c, a
	ld	hl, #_vy
	dec	(hl)
	ld	a, #0xfd
	sub	a, c
	jp	PO, 00369$
	xor	a, #0x80
00369$:
	jp	P, 00183$
	ld	a, (_vy+0)
	jr	00184$
00183$:
	ld	a, #0xfd
00184$:
	ld	(_vy+0), a
00135$:
;./mandoroids.c:385: if (can_shoot==TRUE && (Keyboard_IsKeyPressed(KEY_SPACE) || jb)) {
	ld	a, (_can_shoot+0)
	dec	a
	jr	NZ, 00137$
	ld	a, #0x08
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00136$
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00137$
00136$:
;./mandoroids.c:386: Shoot();
	call	_Shoot
00137$:
;./mandoroids.c:389: if (count%update_rate==0) {
	ld	a, (_update_rate+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_count+0)
	call	__moduchar
	ld	a, e
	or	a, a
	jr	NZ, 00144$
;./mandoroids.c:391: vy = vy++ > 2 ? 2 : vy;
	ld	a, (_vy+0)
	ld	c, a
	ld	hl, #_vy
	inc	(hl)
	ld	a, #0x02
	sub	a, c
	jp	PO, 00372$
	xor	a, #0x80
00372$:
	jp	P, 00185$
	ld	a, #0x02
	jr	00186$
00185$:
	ld	a, (_vy+0)
	push	af
	rlca
	pop	af
00186$:
	ld	(_vy+0), a
;./mandoroids.c:392: py += vy;
	ld	a, (_py+0)
	ld	hl, #_vy
	add	a, (hl)
	ld	(_py+0), a
;./mandoroids.c:393: if (vy<0 && py>230) {
	ld	a, (_vy+0)
	bit	7, a
	jr	Z, 00144$
	ld	a, #0xe6
	ld	iy, #_py
	sub	a, 0 (iy)
	jr	NC, 00144$
;./mandoroids.c:394: py = 0;
	ld	0 (iy), #0x00
00144$:
;./mandoroids.c:398: if (count%scroll_rate==0) {
	ld	a, (_scroll_rate+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_count+0)
	call	__moduchar
	ld	a, e
	or	a, a
	jr	NZ, 00148$
;./mandoroids.c:399: UpdateCollision();
	call	_UpdateCollision
;./mandoroids.c:400: if (!game_ended) {
	ld	a, (_game_ended+0)
	or	a, a
	jr	NZ, 00146$
;./mandoroids.c:401: ScrollBackgroundToTheLeft();
	call	_ScrollBackgroundToTheLeft
00146$:
;./mandoroids.c:403: UpdateCollision();
	call	_UpdateCollision
00148$:
;./mandoroids.c:406: if (can_shoot_timer>=350 || asteroid_destroyed) {
	ld	a, (_can_shoot_timer+0)
	sub	a, #0x5e
	ld	a, (_can_shoot_timer+1)
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	NC, 00157$
	ld	a, (_asteroid_destroyed+0)
	or	a, a
	jr	Z, 00158$
00157$:
;./mandoroids.c:407: if (!button_down && joystick_used) {
	ld	a, (_button_down+0)
	or	a, a
	jr	NZ, 00154$
	ld	a, (_joystick_used+0)
	or	a, a
	jr	Z, 00154$
;./mandoroids.c:408: can_shoot = TRUE;
	ld	hl, #_can_shoot
	ld	(hl), #0x01
;./mandoroids.c:409: can_shoot_timer = 0;
	ld	hl, #0x0000
	ld	(_can_shoot_timer), hl
;./mandoroids.c:410: asteroid_destroyed = FALSE;
	ld	hl, #_asteroid_destroyed
	ld	(hl), #0x00
;./mandoroids.c:411: joystick_used = FALSE;
	ld	hl, #_joystick_used
	ld	(hl), #0x00
	jr	00158$
00154$:
;./mandoroids.c:412: } else if (!Keyboard_IsKeyPressed(KEY_SPACE) && !joystick_used) {
	ld	a, #0x08
	call	_Keyboard_IsKeyPressed
	or	a, a
	jr	NZ, 00150$
	ld	a, (_joystick_used+0)
	or	a, a
	jr	NZ, 00150$
;./mandoroids.c:413: can_shoot = TRUE;
	ld	hl, #_can_shoot
	ld	(hl), #0x01
;./mandoroids.c:414: can_shoot_timer = 0;
	ld	hl, #0x0000
	ld	(_can_shoot_timer), hl
;./mandoroids.c:415: asteroid_destroyed = FALSE;
	ld	hl, #_asteroid_destroyed
	ld	(hl), #0x00
	jr	00158$
00150$:
;./mandoroids.c:417: can_shoot_timer = 349;
	ld	hl, #0x015d
	ld	(_can_shoot_timer), hl
00158$:
;./mandoroids.c:421: if (difficulty_timer>=1400) {
	ld	a, (_difficulty_timer+0)
	sub	a, #0x78
	ld	a, (_difficulty_timer+1)
	rla
	ccf
	rra
	sbc	a, #0x85
	jr	C, 00161$
;./mandoroids.c:422: difficulty_timer = 0;
	ld	hl, #0x0000
	ld	(_difficulty_timer), hl
;./mandoroids.c:423: asteroid_chance += 1;
	ld	a, (_asteroid_chance+0)
	inc	a
	ld	(_asteroid_chance+0), a
00161$:
;./mandoroids.c:426: if (speed_up_timer>=2044) {
	ld	a, (_speed_up_timer+0)
	sub	a, #0xfc
	ld	a, (_speed_up_timer+1)
	rla
	ccf
	rra
	sbc	a, #0x87
	jr	C, 00163$
;./mandoroids.c:427: speed_up_timer = 0;
	ld	hl, #0x0000
	ld	(_speed_up_timer), hl
;./mandoroids.c:428: scroll_rate -= 4;
	ld	a, (_scroll_rate+0)
	ld	hl, #_scroll_rate
	add	a, #0xfc
	ld	(hl), a
00163$:
;./mandoroids.c:431: if (py>192) {
	ld	a, #0xc0
	ld	hl, #_py
	sub	a, (hl)
	jr	NC, 00165$
;./mandoroids.c:432: FinalScreen();
	call	_FinalScreen
00165$:
;./mandoroids.c:435: UpdateShots();
	call	_UpdateShots
;./mandoroids.c:437: FRAME_END:
00166$:
;./mandoroids.c:438: VDP_SetSpritePosition(0,px,py);
	ld	a, (_py+0)
	push	af
	inc	sp
	ld	a, (_px+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_VDP_SetSpritePosition
	jp	00167$
00169$:
;./mandoroids.c:442: Bios_Exit(0);
	xor	a, a
	call	_Bios_Exit
;./mandoroids.c:443: }
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__count:
	.db #0x00	; 0
__xinit__hundred:
	.db #0x00	; 0
__xinit__asteroid_arrangements:
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
__xinit__vy:
	.db #0x00	;  0
__xinit__input_rate:
	.db #0x08	; 8
__xinit__update_rate:
	.db #0x0c	; 12
__xinit__scroll_rate:
	.db #0x80	; 128
__xinit__asteroid_chance:
	.db #0x0a	; 10
__xinit__game_started:
	.db #0x00	; 0
__xinit__game_ended:
	.db #0x00	; 0
__xinit__can_shoot:
	.db #0x01	; 1
__xinit__can_shoot_timer:
	.dw #0x0000
__xinit__difficulty_timer:
	.dw #0x0000
__xinit__speed_up_timer:
	.dw #0x0000
__xinit__asteroids_shot:
	.dw #0x0000
__xinit__joystick_used:
	.db #0x00	; 0
__xinit__asteroid_destroyed:
	.db #0x00	; 0
__xinit__button_down:
	.db #0x00	; 0
__xinit__can_reset:
	.db #0x00	; 0
__xinit__shot_pos:
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__shot_pos_tile:
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__shot_active:
	.db #0x00	; 0
	.area _CABS (ABS)
