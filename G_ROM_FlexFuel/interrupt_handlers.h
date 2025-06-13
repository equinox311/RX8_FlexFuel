/***********************************************************************/
/*                                                                     */
/*  FILE        :interrupt_handlers.h                                  */
/*  DATE        :Thu, Jan 16, 2025                                     */
/*  DESCRIPTION :Interrupt Handler Declarations                        */
/*  CPU TYPE    :Other                                                 */
/*                                                                     */
/*  This file is generated by KPIT GNU Project Generator.              */
/*                                                                     */
/***********************************************************************/
               





#ifndef INTERRUPT_HANDLERS_H
#define INTERRUPT_HANDLERS_H

//;<<VECTOR DATA START (POWER ON RESET)>>
//;0 Power On Reset PC

//;<<VECTOR DATA END (POWER ON RESET)>>
// 1 Power On Reset SP

//;<<VECTOR DATA START (MANUAL RESET)>>
//;2 Manual Reset PC
void	INT_Manual_Reset_PC(void) __attribute__ ((interrupt_handler));

//;<<VECTOR DATA END (MANUAL RESET)>>
// 3 Manual Reset SP
void	INT_Manual_Reset_SP(void) __attribute__ ((interrupt_handler));

// 4 Illegal code

void INT_Illegal_code(void) __attribute__ ((interrupt_handler));

// Dummy

void Dummy(void) __attribute__ ((interrupt_handler));

#endif

