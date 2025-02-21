! This tells the linker where to find functions that exist in the stock ROM.
! The ".global" line is needed to allow code in other source files to refer to
! the names in this file.

.global _Lookup3d, _Lookup2d, _calculateTrailingTimingBase, _calculateLeadingTimingBase, _runFlexFuelCalcs,_engineControlCalculateTiming
.global _highLevelInit,_initFlexFuelCalcs,_fixedPointToFloat_8bit_MULT_OFF_SIG,_indexLookupSomething, _can216RXParse
.global _calculateGearRPMbased

.equ _Lookup3d,                 			0x20DC     
.equ _Lookup2d,               				0x2068
.equ _calculateTrailingTimingBase,			0x1202a
.equ _calculateLeadingTimingBase,			0x11f78
.equ _engineControlCalculateTiming,			0x141fc
.equ _highLevelInit,						0x1107a
.equ _fixedPointToFloat_8bit_MULT_OFF_SIG,	0x2500
.equ _indexLookupSomething,					0x2658
.equ _can216RXParse,						0x298A4
.equ _calculateGearRPMbased,				0x2cadc

.section Flex_Patch_Address, "ax"
.long _runFlexFuelCalcs

.section Flex_Init_Address,"ax"
.long _initFlexFuelCalcs

.section Ethanol_Content_Update,"ax"
.long _getEthanolContent

.section Flex_CAN_216_pase_bypass,"ax"
	nop

!NOTE: This takes over the Mode 22 PID for Evap Purge Percent
.section Mode22EthanolPatch,"ax"
	.short _ethanol_content_pcnt