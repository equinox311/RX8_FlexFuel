! This tells the linker where to find functions that exist in the stock ROM.
! The ".global" line is needed to allow code in other source files to refer to
! the names in this file.

.global _Lookup3d, _Lookup2d, _calculateTrailingTimingBase, _calculateLeadingTimingBase, _runFlexFuelCalcs,_engineControlCalculateTiming
.global _highLevelInit,_initFlexFuelCalcs,_fixedPointToFloat_8bit_MULT_OFF_SIG,_indexLookupSomething, _can216RXParse
.global _calculateGearRPMbased, _updateFaultStatus, _getMode22PID, _floatToInt_SIGNAL_MULT_OFFSET, _udsErrorResponse,_extendUDSDataReponse
.global _intToUDS_SERVICE_DATA, _floatToFP_16bit_NUMBER_SCALAR_OFFSET, _unknownMode22Func,_mode22Hanlder,_byteToUDS_SERVICE_DATA

.equ _Lookup3d,                 			0x20DC     
.equ _Lookup2d,               				0x2068
.equ _calculateTrailingTimingBase,			0x1202a
.equ _calculateLeadingTimingBase,			0x11f78
.equ _engineControlCalculateTiming,			0x141fc
.equ _highLevelInit,						0x1107a
.equ _fixedPointToFloat_8bit_MULT_OFF_SIG,	0x2500
.equ _floatToInt_SIGNAL_MULT_OFFSET,		0x24d0
.equ _floatToFP_16bit_NUMBER_SCALAR_OFFSET, 0x2490
.equ _indexLookupSomething,					0x2658
.equ _can216RXParse,						0x298A4
.equ _calculateGearRPMbased,				0x2cadc
.equ _updateFaultStatus,					0x5e644
.equ _intToUDS_SERVICE_DATA, 			    0x55ecc
.equ _byteToUDS_SERVICE_DATA,				0x55eee
.equ _unknownMode22Func,					0x66aaa
.equ _mode22Hanlder,						0x54b72

!Logging Stuff
.equ _getMode22PID,							0x55c14
.equ _udsErrorResponse,						0x52a5a
.equ _extendUDSDataReponse,					0x55d24


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

.section Flex_Patch_FuelAirRatio, "ax"
	.long _fuel_air_ratio
	
.section ExtendedLoggingPatch, "ax" !0x55d08 OLD 					!54C44 for no patch
	.long _extendedMode22PIDLookup
!	mov.w @(0xFB,pc),r10
!	mov.l @r10,r10
!	jsr @r10
!	nop

!.section ExtendedLoggingCodeHole, "ax"
!	.short _extendedMode22PIDLookup_ptr