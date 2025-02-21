	.file	"TEST2.c"
	.text
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	_flex_can_setup
	.section	FlexCANStruct,"a",@progbits
	.align 2
	.type	_flex_can_setup, @object
	.size	_flex_can_setup, 16
_flex_can_setup:
	.long	1365
	.byte	1
	.byte	34
	.byte	8
	.byte	0
	.long	-17680
	.long	16777216
	.global	_ethanol_content_sample_thresh_rpm
	.section	RomHole_calibrations,"a",@progbits
	.align 2
	.type	_ethanol_content_sample_thresh_rpm, @object
	.size	_ethanol_content_sample_thresh_rpm, 4
_ethanol_content_sample_thresh_rpm:
	.long	1161936896
	.global	_ethanol_content_sample_thresh_load
	.align 2
	.type	_ethanol_content_sample_thresh_load, @object
	.size	_ethanol_content_sample_thresh_load, 4
_ethanol_content_sample_thresh_load:
	.long	1061158912
	.global	_i
	.section	RAMHole_forVariables,"aw",@progbits
	.align 1
	.type	_i, @object
	.size	_i, 2
_i:
	.zero	2
	.global	_fuel_air_ratio
	.align 2
	.type	_fuel_air_ratio, @object
	.size	_fuel_air_ratio, 4
_fuel_air_ratio:
	.zero	4
	.global	_timing_mult
	.align 2
	.type	_timing_mult, @object
	.size	_timing_mult, 4
_timing_mult:
	.zero	4
	.global	_timing_adder_trailing
	.align 2
	.type	_timing_adder_trailing, @object
	.size	_timing_adder_trailing, 4
_timing_adder_trailing:
	.zero	4
	.global	_timing_adder_leading
	.align 2
	.type	_timing_adder_leading, @object
	.size	_timing_adder_leading, 4
_timing_adder_leading:
	.zero	4
	.global	_ethanol_content_pcnt
	.align 2
	.type	_ethanol_content_pcnt, @object
	.size	_ethanol_content_pcnt, 4
_ethanol_content_pcnt:
	.zero	4
	.global	_timing_adder_trailing_ptr
	.section	TrailingPointerPatch,"aw",@progbits
	.align 2
	.type	_timing_adder_trailing_ptr, @object
	.size	_timing_adder_trailing_ptr, 4
_timing_adder_trailing_ptr:
	.long	_timing_adder_trailing
	.global	_timing_adder_leading_ptr
	.section	LeadingPointerPatch,"aw",@progbits
	.align 2
	.type	_timing_adder_leading_ptr, @object
	.size	_timing_adder_leading_ptr, 4
_timing_adder_leading_ptr:
	.long	_timing_adder_leading
	.section	RomHole_ForCode,"ax",@progbits
	.align 1
	.global	_func
	.type	_func, @function
_func:
.LFB0:
	.file 1 "C:\\WorkSpace\\TEST2\\TEST2\\TEST2.c"
	.loc 1 73 0
	.cfi_startproc
	mov.l	r14,@-r15
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
.LCFI1:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	mov	r15,r14
.LCFI2:
	.cfi_def_cfa_register 14
	.loc 1 76 0
	mov.l	.L5,r1
	jsr/n	@r1
	bra	.L3
	nop
	.align 1
.L4:
	.loc 1 87 0
	nop
.L3:
.LBB2:
	.loc 1 79 0
	mov.l	.L6,r1
	jsr/n	@r1
	.loc 1 80 0
	mov.l	.L7,r1
	jsr/n	@r1
	.loc 1 82 0
	mov.l	.L12,r1
	mov.w	@r1,r1
	extu.w	r1,r1
	add	#1,r1
	extu.w	r1,r2
	mov.l	.L12,r1
	mov.w	r2,@r1
	.loc 1 83 0
	mov.l	.L12,r1
	mov.w	@r1,r1
	extu.w	r1,r2
	movi20	#254,r1
	cmp/hi	r1,r2
	bf	.L4
	.loc 1 83 0 is_stmt 0 discriminator 1
	mov.l	.L12,r1
	mov.w	@r1,r1
	extu.w	r1,r2
	movi20	#255,r1
	cmp/hi	r1,r2
	bt	.L4
	.loc 1 84 0 is_stmt 1
	mov.l	.L12,r1
	mov	#0,r2
	mov.w	r2,@r1
.LBE2:
	.loc 1 87 0
	bra	.L4
	nop
.L13:
	.align 2
.L5:
	.long	_highLevelInit
.L6:
	.long	_flexCANUnpack
.L7:
	.long	_engineControlCalculateTiming
.L12:
	.long	_i
	.cfi_endproc
.LFE0:
	.size	_func, .-_func
	.align 1
	.global	_runFlexFuelCalcs
	.type	_runFlexFuelCalcs, @function
_runFlexFuelCalcs:
.LFB1:
	.loc 1 96 0
	.cfi_startproc
	mov.l	r14,@-r15
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	mov	r15,r14
.LCFI5:
	.cfi_def_cfa_register 14
	.loc 1 98 0
	mov.l	.L15,r1
	jsr/n	@r1
	.loc 1 99 0
	mov.l	.L16,r1
	jsr/n	@r1
	.loc 1 101 0
	mov	r14,r15
	lds.l   @r15+,pr
	mov.l   @r15+,r14
	rts/n
.L17:
	.align 2
.L15:
	.long	_getFlexMetrics
.L16:
	.long	_calcTimingAdders
	.cfi_endproc
.LFE1:
	.size	_runFlexFuelCalcs, .-_runFlexFuelCalcs
	.align 1
	.global	_initFlexFuelCalcs
	.type	_initFlexFuelCalcs, @function
_initFlexFuelCalcs:
.LFB2:
	.loc 1 104 0
	.cfi_startproc
	mov.l	r14,@-r15
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r15,r14
.LCFI7:
	.cfi_def_cfa_register 14
	.loc 1 106 0
	mov.l	.L19,r1
	mov.l	.L20,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	mova	.L21,r0
	fmov.s	@r0,fr1
	fmov.s	fr1,@r1
	.loc 1 107 0
	mov.l	.L22,r1
	fldi0	fr1
	fmov.s	fr1,@r1
	.loc 1 108 0
	mov.l	.L23,r1
	fldi0	fr1
	fmov.s	fr1,@r1
	.loc 1 109 0
	mov.l	.L24,r1
	fldi0	fr1
	fmov.s	fr1,@r1
	.loc 1 110 0
	mov.l	.L25,r1
	mova	.L26,r0
	fmov.s	@r0,fr1
	fmov.s	fr1,@r1
	mov.l	.L27,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	.loc 1 112 0
	mov	r14,r15
	mov.l   @r15+,r14
	rts/n
.L28:
	.align 2
.L19:
	.long	_fuel_air_ratio
.L20:
	.long	___fpscr_values
.L21:
	.long	1033068484
.L22:
	.long	_timing_mult
.L23:
	.long	_timing_adder_trailing
.L24:
	.long	_timing_adder_leading
.L25:
	.long	_ethanol_content_pcnt
.L26:
	.long	1097859072
.L27:
	.long	___fpscr_values+4
	.cfi_endproc
.LFE2:
	.size	_initFlexFuelCalcs, .-_initFlexFuelCalcs
	.align 1
	.global	_getFlexMetrics
	.type	_getFlexMetrics, @function
_getFlexMetrics:
.LFB3:
	.loc 1 114 0
	.cfi_startproc
	mov.l	r14,@-r15
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	mov	r15,r14
.LCFI10:
	.cfi_def_cfa_register 14
	.loc 1 117 0
	movi20	#-17652,r1
	mov.b	@r1,r1
	lds	r1,fpul
	fsts	fpul,fr1
	mov.l	.L62,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	fldi1	fr3
	fldi0	fr2
	fmov	fr3,fr4
	fmov	fr2,fr5
	flds	fr1,fpul
	sts	fpul,r4
	mov.l	.L40,r1
	mov.l	.L64,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	jsr/n	@r1
	mov.l	.L62,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	fmov	fr0,fr1
	mov.l	.L58,r1
	fmov.s	fr1,@r1
	.loc 1 120 0
	mov.l	.L58,r1
	fmov.s	@r1,fr1
	fldi0	fr2
	fcmp/gt	fr1,fr2
	bf	.L37
	.loc 1 121 0
	mov.l	.L58,r1
	fldi0	fr1
	fmov.s	fr1,@r1
	bra	.L32
	nop
	.align 1
.L37:
	.loc 1 123 0
	mov.l	.L58,r1
	fmov.s	@r1,fr1
	mova	.L49,r0
	fmov.s	@r0,fr2
	fcmp/gt	fr2,fr1
	bf	.L32
	.loc 1 124 0
	mov.l	.L58,r1
	mova	.L49,r0
	fmov.s	@r0,fr1
	fmov.s	fr1,@r1
.L32:
	.loc 1 127 0
	movi20	#-19052,r1
	fmov.s	@r1,fr2
	mov.l	.L50,r1
	fmov.s	@r1,fr1
	fcmp/gt	fr1,fr2
	bt	.L38
	.loc 1 127 0 is_stmt 0 discriminator 1
	movi20	#-16168,r1
	fmov.s	@r1,fr2
	mov.l	.L51,r1
	fmov.s	@r1,fr1
	fcmp/gt	fr1,fr2
	bt	.L38
	.loc 1 130 0 is_stmt 1
	mov.l	.L58,r1
	fmov.s	@r1,fr1
	mov.l	.L53,r1
	mov	r1,r4
	fmov	fr1,fr4
	mov.l	.L60,r1
	mov.l	.L64,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	jsr/n	@r1
	mov.l	.L62,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	fmov	fr0,fr1
	mov.l	.L57,r1
	fmov.s	fr1,@r1
	.loc 1 131 0
	mov.l	.L58,r1
	fmov.s	@r1,fr1
	mov.l	.L59,r1
	mov	r1,r4
	fmov	fr1,fr4
	mov.l	.L60,r1
	mov.l	.L64,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	jsr/n	@r1
	mov.l	.L62,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	fmov	fr0,fr1
	mov.l	.L63,r1
	fmov.s	fr1,@r1
.L38:
	mov.l	.L64,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	.loc 1 138 0
	mov	r14,r15
	lds.l   @r15+,pr
	mov.l   @r15+,r14
	rts/n
.L65:
	.align 2
.L62:
	.long	___fpscr_values
.L40:
	.long	_fixedPointToFloat_8bit_MULT_OFF_SIG
.L64:
	.long	___fpscr_values+4
.L58:
	.long	_ethanol_content_pcnt
.L49:
	.long	1120403456
.L50:
	.long	_ethanol_content_sample_thresh_rpm
.L51:
	.long	_ethanol_content_sample_thresh_load
.L53:
	.long	_ethanol_content_to_fuel_air_ratio_table_2d
.L60:
	.long	_Lookup2d
.L57:
	.long	_fuel_air_ratio
.L59:
	.long	_ethanol_content_to_timing_mult
.L63:
	.long	_timing_mult
	.cfi_endproc
.LFE3:
	.size	_getFlexMetrics, .-_getFlexMetrics
	.section	Flex_CAN_Unpack_Address,"ax",@progbits
	.align 1
	.global	_flexCANUnpack
	.type	_flexCANUnpack, @function
_flexCANUnpack:
.LFB4:
	.loc 1 141 0
	.cfi_startproc
	mov.l	r14,@-r15
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r15,r14
.LCFI12:
	.cfi_def_cfa_register 14
	.loc 1 145 0
	movi20	#-17652,r1
	movi20	#-17680,r2
	mov.b	@r2,r2
	mov.b	r2,@r1
	.loc 1 146 0
	movi20	#-17651,r1
	movi20	#-17679,r2
	mov.b	@r2,r2
	mov.b	r2,@r1
	.loc 1 149 0
! 149 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 150 0
! 150 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 151 0
! 151 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 152 0
! 152 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 153 0
! 153 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 154 0
! 154 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 155 0
! 155 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 156 0
! 156 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 157 0
! 157 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 158 0
! 158 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 159 0
! 159 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 160 0
! 160 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 161 0
! 161 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 162 0
! 162 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 163 0
! 163 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 164 0
! 164 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 165 0
! 165 "C:\WorkSpace\TEST2\TEST2\TEST2.c" 1
	nop
! 0 "" 2
	.loc 1 166 0
	mov	r14,r15
	mov.l   @r15+,r14
	rts/n
	.cfi_endproc
.LFE4:
	.size	_flexCANUnpack, .-_flexCANUnpack
	.section	RomHole_ForCode
	.align 1
	.global	_calcTimingAdders
	.type	_calcTimingAdders, @function
_calcTimingAdders:
.LFB5:
	.loc 1 168 0
	.cfi_startproc
	mov.l	r14,@-r15
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	mov	r15,r14
.LCFI15:
	.cfi_def_cfa_register 14
	.loc 1 171 0
	movi20	#-16168,r1
	mov.l	.L80,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	fmov.s	@r1,fr2
	movi20	#-19052,r1
	fmov.s	@r1,fr1
	mov.l	.L69,r1
	fmov	fr2,fr4
	fmov	fr1,fr5
	mov	r1,r4
	mov.l	.L78,r1
	mov.l	.L86,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	jsr/n	@r1
	mov.l	.L80,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	fmov	fr0,fr1
	mov.l	.L76,r1
	fmov.s	fr1,@r1
	.loc 1 172 0
	mov.l	.L76,r1
	fmov.s	@r1,fr2
	mov.l	.L83,r1
	fmov.s	@r1,fr1
	fmul	fr2,fr1
	mov.l	.L76,r1
	fmov.s	fr1,@r1
	.loc 1 175 0
	movi20	#-16168,r1
	fmov.s	@r1,fr2
	movi20	#-19052,r1
	fmov.s	@r1,fr1
	mov.l	.L77,r1
	fmov	fr2,fr4
	fmov	fr1,fr5
	mov	r1,r4
	mov.l	.L78,r1
	mov.l	.L86,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	jsr/n	@r1
	mov.l	.L80,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	fmov	fr0,fr1
	mov.l	.L84,r1
	fmov.s	fr1,@r1
	.loc 1 176 0
	mov.l	.L84,r1
	fmov.s	@r1,fr2
	mov.l	.L83,r1
	fmov.s	@r1,fr1
	fmul	fr2,fr1
	mov.l	.L84,r1
	fmov.s	fr1,@r1
	.loc 1 178 0
	mov.l	.L85,r1
	mov.l	.L86,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	jsr/n	@r1
	.loc 1 180 0
	mov	r14,r15
	lds.l   @r15+,pr
	mov.l   @r15+,r14
	rts/n
.L87:
	.align 2
.L80:
	.long	___fpscr_values
.L69:
	.long	_timing_ethanol_adder_trailing
.L78:
	.long	_Lookup3d
.L86:
	.long	___fpscr_values+4
.L76:
	.long	_timing_adder_trailing
.L83:
	.long	_timing_mult
.L77:
	.long	_timing_ethanol_adder_leading
.L84:
	.long	_timing_adder_leading
.L85:
	.long	_calculateLeadingTimingBase
	.cfi_endproc
.LFE5:
	.size	_calcTimingAdders, .-_calcTimingAdders
	.section	Misc,"ax",@progbits
	.align 1
	.global	_SetValues
	.type	_SetValues, @function
_SetValues:
.LFB6:
	.loc 1 186 0
	.cfi_startproc
	mov.l	r14,@-r15
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r15,r14
.LCFI17:
	.cfi_def_cfa_register 14
	.loc 1 188 0
	movi20	#-16168,r1
	mov.l	.L89,r2
	lds.l	@r2+,fpscr
	add	#-4,r2
	mova	.L90,r0
	fmov.s	@r0+,fr1
	fmov.s	fr1,@r1
	.loc 1 189 0
	movi20	#-19052,r1
	fmov.s	@r0+,fr1
	fmov.s	fr1,@r1
	.loc 1 190 0
	movi20	#-22020,r1
	fldi1	fr1
	fmov.s	fr1,@r1
	.loc 1 192 0
	movi20	#-22020,r1
	fmov.s	@r0,fr1
	fmov.s	fr1,@r1
	.loc 1 193 0
	movi20	#-17680,r1
	mov	#18,r2
	mov.b	r2,@r1
	mov.l	.L91,r1
	lds.l	@r1+,fpscr
	add	#-4,r1
	.loc 1 195 0
	mov	r14,r15
	mov.l   @r15+,r14
	rts/n
.L92:
	.align 2
.L89:
	.long	___fpscr_values
.L90:
	.long	1017370378
	.long	1148846080
	.long	1118437376
.L91:
	.long	___fpscr_values+4
	.cfi_endproc
.LFE6:
	.size	_SetValues, .-_SetValues
	.text
.Letext0:
	.file 2 "C:\\WorkSpace\\TEST2\\TEST2\\vars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.ualong	0x368
	.uaword	0x2
	.ualong	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ualong	.LASF42
	.byte	0x1
	.ualong	.LASF43
	.ualong	.Ldebug_ranges0+0
	.ualong	0
	.ualong	0
	.ualong	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x2
	.byte	0x2d
	.ualong	0x90
	.uleb128 0x3
	.ualong	.LASF0
	.byte	0x2
	.byte	0x2e
	.ualong	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.ualong	.LASF1
	.byte	0x2
	.byte	0x2f
	.ualong	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.ualong	.LASF2
	.byte	0x2
	.byte	0x30
	.ualong	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x4
	.string	"dlc"
	.byte	0x2
	.byte	0x31
	.ualong	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x3
	.ualong	.LASF3
	.byte	0x2
	.byte	0x32
	.ualong	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x3
	.ualong	.LASF4
	.byte	0x2
	.byte	0x33
	.ualong	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3
	.ualong	.LASF5
	.byte	0x2
	.byte	0x34
	.ualong	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ualong	.LASF6
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.ualong	.LASF7
	.uleb128 0x6
	.ualong	.LASF18
	.byte	0x2
	.byte	0x35
	.ualong	0x25
	.uleb128 0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x39
	.ualong	0x122
	.uleb128 0x3
	.ualong	.LASF8
	.byte	0x2
	.byte	0x3a
	.ualong	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.ualong	.LASF9
	.byte	0x2
	.byte	0x3b
	.ualong	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x3
	.ualong	.LASF10
	.byte	0x2
	.byte	0x3c
	.ualong	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.ualong	.LASF11
	.byte	0x2
	.byte	0x3d
	.ualong	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3
	.ualong	.LASF12
	.byte	0x2
	.byte	0x3e
	.ualong	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x3
	.ualong	.LASF13
	.byte	0x2
	.byte	0x3f
	.ualong	0x136
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x3
	.ualong	.LASF14
	.byte	0x2
	.byte	0x40
	.ualong	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x3
	.ualong	.LASF15
	.byte	0x2
	.byte	0x41
	.ualong	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.ualong	.LASF16
	.uleb128 0x7
	.byte	0x4
	.ualong	0x12f
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ualong	.LASF17
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.ualong	.LASF19
	.byte	0x2
	.byte	0x42
	.ualong	0xa9
	.uleb128 0x2
	.byte	0xc
	.byte	0x2
	.byte	0x44
	.ualong	0x189
	.uleb128 0x3
	.ualong	.LASF9
	.byte	0x2
	.byte	0x45
	.ualong	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.ualong	.LASF20
	.byte	0x2
	.byte	0x46
	.ualong	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x3
	.ualong	.LASF11
	.byte	0x2
	.byte	0x47
	.ualong	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.ualong	.LASF12
	.byte	0x2
	.byte	0x48
	.ualong	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.ualong	.LASF21
	.byte	0x2
	.byte	0x49
	.ualong	0x148
	.uleb128 0x9
	.byte	0x1
	.ualong	.LASF44
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.ualong	0x12f
	.ualong	.LFB0
	.ualong	.LFE0
	.ualong	.LLST0
	.byte	0x1
	.ualong	0x1df
	.uleb128 0xa
	.byte	0x1
	.ualong	.LASF45
	.byte	0x1
	.byte	0x4c
	.ualong	0x136
	.byte	0x1
	.ualong	0x1c5
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.ualong	.LBB2
	.ualong	.LBE2
	.uleb128 0xd
	.byte	0x1
	.ualong	.LASF46
	.byte	0x1
	.byte	0x50
	.ualong	0x136
	.byte	0x1
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ualong	.LASF22
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.ualong	.LFB1
	.ualong	.LFE1
	.ualong	.LLST1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.ualong	.LASF23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.ualong	.LFB2
	.ualong	.LFE2
	.ualong	.LLST2
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ualong	.LASF24
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.ualong	.LFB3
	.ualong	.LFE3
	.ualong	.LLST3
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.ualong	.LASF25
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.ualong	.LFB4
	.ualong	.LFE4
	.ualong	.LLST4
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ualong	.LASF26
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.ualong	.LFB5
	.ualong	.LFE5
	.ualong	.LLST5
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF47
	.byte	0x1
	.byte	0xb9
	.ualong	.LFB6
	.ualong	.LFE6
	.ualong	.LLST6
	.byte	0x1
	.uleb128 0x11
	.ualong	.LASF27
	.byte	0x2
	.byte	0x58
	.ualong	0x13d
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.ualong	.LASF28
	.byte	0x2
	.byte	0x59
	.ualong	0x13d
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.ualong	.LASF29
	.byte	0x2
	.byte	0x5a
	.ualong	0x189
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.ualong	.LASF30
	.byte	0x2
	.byte	0x5b
	.ualong	0x189
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.ualong	.LASF31
	.byte	0x1
	.byte	0x16
	.ualong	0x2a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_flex_can_setup
	.uleb128 0x13
	.ualong	0x9e
	.uleb128 0x12
	.ualong	.LASF32
	.byte	0x1
	.byte	0x36
	.ualong	0x2bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_ethanol_content_sample_thresh_rpm
	.uleb128 0x13
	.ualong	0x12f
	.uleb128 0x12
	.ualong	.LASF33
	.byte	0x1
	.byte	0x37
	.ualong	0x2bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_ethanol_content_sample_thresh_load
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x39
	.ualong	0x2e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_i
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.ualong	.LASF34
	.uleb128 0x12
	.ualong	.LASF35
	.byte	0x1
	.byte	0x3c
	.ualong	0x12f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_fuel_air_ratio
	.uleb128 0x12
	.ualong	.LASF36
	.byte	0x1
	.byte	0x3d
	.ualong	0x12f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_timing_mult
	.uleb128 0x12
	.ualong	.LASF37
	.byte	0x1
	.byte	0x3e
	.ualong	0x12f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_timing_adder_trailing
	.uleb128 0x12
	.ualong	.LASF38
	.byte	0x1
	.byte	0x3f
	.ualong	0x12f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_timing_adder_leading
	.uleb128 0x12
	.ualong	.LASF39
	.byte	0x1
	.byte	0x40
	.ualong	0x12f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_ethanol_content_pcnt
	.uleb128 0x12
	.ualong	.LASF40
	.byte	0x1
	.byte	0x43
	.ualong	0x90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_timing_adder_trailing_ptr
	.uleb128 0x12
	.ualong	.LASF41
	.byte	0x1
	.byte	0x44
	.ualong	0x90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_timing_adder_leading_ptr
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.ualong	.LFB0
	.ualong	.LCFI0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI0
	.ualong	.LCFI1
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI1
	.ualong	.LCFI2
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	.LCFI2
	.ualong	.LFE0
	.uaword	0x2
	.byte	0x7e
	.sleb128 8
	.ualong	0
	.ualong	0
.LLST1:
	.ualong	.LFB1
	.ualong	.LCFI3
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI3
	.ualong	.LCFI4
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI4
	.ualong	.LCFI5
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	.LCFI5
	.ualong	.LFE1
	.uaword	0x2
	.byte	0x7e
	.sleb128 8
	.ualong	0
	.ualong	0
.LLST2:
	.ualong	.LFB2
	.ualong	.LCFI6
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI6
	.ualong	.LCFI7
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI7
	.ualong	.LFE2
	.uaword	0x2
	.byte	0x7e
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST3:
	.ualong	.LFB3
	.ualong	.LCFI8
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI8
	.ualong	.LCFI9
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI9
	.ualong	.LCFI10
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	.LCFI10
	.ualong	.LFE3
	.uaword	0x2
	.byte	0x7e
	.sleb128 8
	.ualong	0
	.ualong	0
.LLST4:
	.ualong	.LFB4
	.ualong	.LCFI11
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI11
	.ualong	.LCFI12
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI12
	.ualong	.LFE4
	.uaword	0x2
	.byte	0x7e
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST5:
	.ualong	.LFB5
	.ualong	.LCFI13
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI13
	.ualong	.LCFI14
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI14
	.ualong	.LCFI15
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	.LCFI15
	.ualong	.LFE5
	.uaword	0x2
	.byte	0x7e
	.sleb128 8
	.ualong	0
	.ualong	0
.LLST6:
	.ualong	.LFB6
	.ualong	.LCFI16
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI16
	.ualong	.LCFI17
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI17
	.ualong	.LFE6
	.uaword	0x2
	.byte	0x7e
	.sleb128 4
	.ualong	0
	.ualong	0
	.section	.debug_aranges,"",@progbits
	.ualong	0x4c
	.uaword	0x2
	.ualong	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uaword	0
	.uaword	0
	.ualong	.LFB0
	.ualong	.LFE0-.LFB0
	.ualong	.LFB1
	.ualong	.LFE1-.LFB1
	.ualong	.LFB2
	.ualong	.LFE2-.LFB2
	.ualong	.LFB3
	.ualong	.LFE3-.LFB3
	.ualong	.LFB4
	.ualong	.LFE4-.LFB4
	.ualong	.LFB5
	.ualong	.LFE5-.LFB5
	.ualong	.LFB6
	.ualong	.LFE6-.LFB6
	.ualong	0
	.ualong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.ualong	.LFB0
	.ualong	.LFE0
	.ualong	.LFB1
	.ualong	.LFE1
	.ualong	.LFB2
	.ualong	.LFE2
	.ualong	.LFB3
	.ualong	.LFE3
	.ualong	.LFB4
	.ualong	.LFE4
	.ualong	.LFB5
	.ualong	.LFE5
	.ualong	.LFB6
	.ualong	.LFE6
	.ualong	0
	.ualong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"field2"
.LASF42:
	.string	"GNU C 4.7-GNUSH_v13.01"
.LASF39:
	.string	"ethanol_content_pcnt"
.LASF46:
	.string	"engineControlCalculateTiming"
.LASF5:
	.string	"field7"
.LASF10:
	.string	"ColData_ptr"
.LASF30:
	.string	"ethanol_content_to_timing_mult"
.LASF25:
	.string	"flexCANUnpack"
.LASF6:
	.string	"long int"
.LASF34:
	.string	"short unsigned int"
.LASF47:
	.string	"SetValues"
.LASF8:
	.string	"ColCount"
.LASF23:
	.string	"initFlexFuelCalcs"
.LASF22:
	.string	"runFlexFuelCalcs"
.LASF17:
	.string	"float"
.LASF27:
	.string	"timing_ethanol_adder_leading"
.LASF45:
	.string	"highLevelInit"
.LASF43:
	.string	"C:\\WorkSpace\\TEST2\\TEST2\\TEST2.c"
.LASF40:
	.string	"timing_adder_trailing_ptr"
.LASF28:
	.string	"timing_ethanol_adder_trailing"
.LASF4:
	.string	"data_ram_address_start"
.LASF14:
	.string	"DataMultipler"
.LASF38:
	.string	"timing_adder_leading"
.LASF32:
	.string	"ethanol_content_sample_thresh_rpm"
.LASF12:
	.string	"TableData_ptr"
.LASF44:
	.string	"func"
.LASF16:
	.string	"short int"
.LASF18:
	.string	"CAN_Message_Setup_t"
.LASF31:
	.string	"flex_can_setup"
.LASF19:
	.string	"LookupTable3D_t"
.LASF0:
	.string	"can_id"
.LASF20:
	.string	"e2DtableDataType"
.LASF7:
	.string	"char"
.LASF37:
	.string	"timing_adder_trailing"
.LASF36:
	.string	"timing_mult"
.LASF21:
	.string	"LookupTable2D_Float_t"
.LASF13:
	.string	"e3DtableDataType"
.LASF24:
	.string	"getFlexMetrics"
.LASF11:
	.string	"RowData_ptr"
.LASF41:
	.string	"timing_adder_leading_ptr"
.LASF26:
	.string	"calcTimingAdders"
.LASF2:
	.string	"h_can_channel"
.LASF33:
	.string	"ethanol_content_sample_thresh_load"
.LASF3:
	.string	"id_length"
.LASF9:
	.string	"RowsCount"
.LASF15:
	.string	"DataOffset"
.LASF29:
	.string	"ethanol_content_to_fuel_air_ratio_table_2d"
.LASF35:
	.string	"fuel_air_ratio"
	.ident	"GCC: (GNU) 4.7-GNUSH_v13.01"
