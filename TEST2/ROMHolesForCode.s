!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!! Markers for end of various code segments.  Metadata.s refers to these.
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

.section RomHole_ForCode,"ax"
.fill 4
.string "G-ROM FLEX FUEL APP v1.0"

.section RomHole_calibrations, "ax"
.fill 4
.string "G-ROM FLEX FUEL CAL v1.0"

.section RomHeader,"ax"
.string "G-ROM_FLEX"

.section CalHeader,"ax"
.string "G-ROM_FLEX"

.end
