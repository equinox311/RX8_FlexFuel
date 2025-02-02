 .section .rodata        ! Section for read-only data
.align 4                ! Ensure alignment to 4-byte boundary

DataLookup3dTypePtr:
        .long   0x0000253c    ! Address of the first function
        .long   0x000025c8    ! Address of the second function
        .long   0x000025f4    ! Address of the third function
        .long   0x0000256c     ! Address of the fourth function
        .long   0x00002598    ! Address of the fifth function
 
        .section .text
        .global _Lookup3d

_Lookup3d:
        ! Save registers to the stack
        sts.l   macl, @-r15           ! Save macl (multiplier accumulator low)
        sts.l   pr, @-r15             ! Save the processor status register
        sts.l   mach, @-r15           ! Save mach (multiplier accumulator high)
        
        ! Call indexLookupSomething function
        bsr     indexLookupSomething  ! Call external function
        
        ! Move immediate value 0x10 into r0
        mov     #0x10, r0            ! Corrected the immediate value syntax
        ! Add r0 to table_struct to get the correct pointer
        add     r4, r0
        ! Load byte from address (table_struct + 0x10) into iVar1
        mov.b   @r0, r6

        ! Load address of 3dDataLookupTypePtr into r0
        mov    @(DataLookup3dTypePtr,r6),r5
        ! Move the value from the address pointed by r0 (function pointer) into r5
        mov.l   @r0, r5              ! Correct indirect addressing syntax
        ! Load 0xc offset from table_struct into r1 (second part of the structure)
        mov.l   @(0xc,r4), r1          ! Ensure correct syntax for offset

        ! Call the function pointed to by r5 (the lookup function)
        jsr     @r5

        ! Check if iVar1 is zero
        tst     r6, r6
        bt      LAB_00002102

        ! Perform floating-point operations
        fmov    fr2, fr1             ! Copy fr2 into fr1 for later use
        add     r4, #0x14            ! Move to the next structure part
        fmov.s  @r4+, fr0            ! Load next float value into fr0
        fmov.s  @r4, fr1             ! Load current value into fr1
        fmac    fr0, fr2, fr1        ! Multiply and accumulate the result

LAB_00002102:
        ! Final move to return value
        fmov    fr0, fr1             ! Store result in fr0 (return value)
        
        ! Restore registers
        lds.l   @r15+, mach
        lds.l   @r15+, pr
        lds.l   @r15+, macl

        ! Return from subroutine
        rts
		


