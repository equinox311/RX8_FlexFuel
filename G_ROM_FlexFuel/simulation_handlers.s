!! This is rougly equivalent to "main" but with fewer instructions to step
!! through in the simulator when testing the code.

		.section	Zero,"ax"
!! Reset handler and stack pointer
		.long _ResetHandler
		.long 0xffff2000
!! Manual reset handler and stack pointer
		.long _ResetHandler
		.long 0xffff2000
!! Various exception handlers - this isn't all of them but it should suffice.
		.long IllegalInstructionHandler
		.long Reserved5Handler
		.long SlotIllegalInstructionHandler
		.long Reserved7Handler
		.long Reserved8Handler
		.long CpuAddressErrorHandler
		.long DmacAddressErrorHandler
		.long NmiHandler
		.long BreakHandler
		.long FpuExceptionHandler
		.long HudiHandler

		.section 	RSTHandler,"ax"
	
_ResetHandler:
				mov.l	Stack,r15
				mov.l	SetValues,r0
				jsr		@r0
				nop
				mov.l	func,r0
				jsr		@r0
				nop
.stop:
				bra		.stop
				nop	
	.align 4
Stack:
		.long	0xFFFF1000
		
SetValues:
		.long	_SetValues
		
func:
	.long _func


!! Handlers for various exceptions and interrupts.  They do nothing, but 
!! at least you can know which exception or interrupt was triggered.
IllegalInstructionHandler:
		rte
		nop
		
Reserved5Handler:
		rte
		nop
		
SlotIllegalInstructionHandler:
		rte
		nop
		
Reserved7Handler:
		rte
		nop
		
Reserved8Handler:
		rte
		nop
		
CpuAddressErrorHandler:
		rte
		nop
		
DmacAddressErrorHandler:
		rte
		nop
		
NmiHandler:
		rte
		nop
		
BreakHandler:
		rte
		nop
		
FpuExceptionHandler:
		rte
		nop

HudiHandler:
		rte
		nop
		
!!SIM ONLY FUNCTIONS TO PASS BY FUNCTIONS LOOKING AT IO
.section kill_1,"ax"
	nop
	nop
.section kill_2,"ax"
	nop
	nop

.end

