! This tells the linker where to find functions that exist in the stock ROM.
! The ".global" line is needed to allow code in other source files to refer to
! the names in this file.

.global _Lookup3d, _Lookup2d, _calculateTrailingTimingBase, _calculateLeadingTimingBase

.equ _Lookup3d,                 0x20DC     
.equ _Lookup2d,               	0x2068
.equ _calculateTrailingTimingBase,		0x1202a
.equ _calculateLeadingTimingBase,		0x11f78


.end
