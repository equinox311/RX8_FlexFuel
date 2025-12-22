!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!! TEST table
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.section RomHole_calibrations,"ax"
.global _Start_Ethanol_Tables

_Start_Ethanol_Tables:

!Ethanol Content to AFR table
.global _ethanol_content_to_fuel_air_ratio_table_2d
.global _ethanol_content_x
.global _fuel_air_ratio_table

_ethanol_content_to_fuel_air_ratio_table_2d:
	.short 12							!12 rows Ethanol Content
	.short 0x0000					! float data type
	.long _ethanol_content_x
	.long _fuel_air_ratio_table

_ethanol_content_x:
	.float 0.0, 5.0, 10.0, 15.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 85.0, 100.0

_fuel_air_ratio_table:
	.float 0.068128,0.069465,0.070874,0.072335,0.077098,0.080649,0.084544,0.087699,0.093546,0.098811,0.101689,0.111383
	
	
!Timing multiplier table based on e content
.global _ethanol_content_to_timing_mult
.global _ethanol_content_x_for_timing_mult
.global _timing_mult_tbl

_ethanol_content_to_timing_mult:
	.short 12									!12 rows Ethanol Content
	.short 0x0000								! float data type
	.long _ethanol_content_x_for_timing_mult
	.long _timing_mult_tbl

_ethanol_content_x_for_timing_mult:
	.float 0.0, 5.0, 10.0, 15.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 85.0, 100.0

_timing_mult_tbl:
	.float 0.00,0.00,0.34,0.39,0.45,0.51,0.59,0.67,	0.77,0.88,1.00,	1.00


!Timing Adder Table Leading - Max E content
.global _timing_ethanol_adder_leading
.global _engine_load_e_timing_leading_axis_X
.global _engine_speed_e_timing_leading_axis_Y
.global _e_timing_leading_data

_timing_ethanol_adder_leading:
	.short 20										!Columns X
	.short 18										!Rows Y
	.long _engine_load_e_timing_leading_axis_X
	.long _engine_speed_e_timing_leading_axis_Y
	.long _e_timing_leading_data
	.long 0x04000000								!8 bit data
	.float 0.5										!mult
	.float -50.0									!offset
	
_engine_load_e_timing_leading_axis_X:
	.float 0.06,0.12,0.19,0.25,0.31,0.375,0.438,0.501,0.564,0.627,0.69,0.753,0.816,0.879,0.942,1.005,1.068,1.131,1.194,1.257
	
_engine_speed_e_timing_leading_axis_Y:
	.float 750,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000
	
_e_timing_leading_data:
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100,	100
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	102,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	102,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	102,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	102,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103
	.byte 100,	100,	100,	100,	100,	100,	100,	100,	102,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103,	103
	.byte 100,	100,	100,	100,	100,	100,	100,	102,	102,	103,	104,	104,	104,	104,	104,	104,	104,	104,	104,	104
	.byte 100,	100,	100,	100,	100,	100,	100,	102,	104,	104,	106,	106,	106,	106,	106,	106,	106,	106,	106,	106
	.byte 100,	100,	100,	100,	100,	102,	102,	104,	106,	106,	107,	107,	105,	107,	107,	107,	107,	107,	107,	107
	.byte 100,	100,	100,	100,	100,	102,	104,	104,	106,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107
	.byte 100,	100,	100,	100,	100,	102,	104,	106,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107
	.byte 100,	100,	100,	100,	100,	102,	104,	106,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107,	107
	.byte 100,	100,	100,	100,	100,	102,	104,	106,	107,	107,	107,	107,	103,	103,	107,	107,	107,	107,	107,	107
	.byte 100,	100,	100,	100,	100,	102,	104,	106,	107,	107,	107,	107,	103,	103,	107,	107,	107,	107,	107,	107


!Timing Adder Table Trailing - Max E content
.global _timing_ethanol_adder_trailing
.global _engine_load_e_timing_trailing_axis_X
.global _engine_speed_e_timing_trailing_axis_Y
.global _e_timing_trailing_data

_timing_ethanol_adder_trailing:
	.short 20										!Columns X
	.short 18										!Rows Y
	.long _engine_load_e_timing_trailing_axis_X
	.long _engine_speed_e_timing_trailing_axis_Y
	.long _e_timing_trailing_data
	.long 0x04000000								!8 bit data
	.float 0.5										!mult
	.float -50.0									!offset
	
_engine_load_e_timing_trailing_axis_X:
	.float 0.06,0.12,0.19,0.25,0.31,0.375,0.438,0.501,0.564,0.627,0.69,0.753,0.816,0.879,0.942,1.005,1.068,1.131,1.194,1.257
	
_engine_speed_e_timing_trailing_axis_Y:
	.float 750,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000
	
_e_timing_trailing_data:
	.byte 100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
	.byte 100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
	.byte 100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
	.byte 100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
	.byte 100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
	.byte 100,100,100,100,100,100,100,100,102,103,103,103,103,103,103,103,103,103,103,103
	.byte 100,100,100,100,100,100,100,100,102,103,103,103,103,103,103,103,103,103,103,103
	.byte 100,100,100,100,100,100,100,100,102,103,103,103,103,103,105,105,105,105,105,105
	.byte 100,100,100,100,100,100,100,100,102,103,103,103,103,103,105,105,105,105,105,105
	.byte 100,100,100,100,100,100,100,100,102,103,103,103,103,103,105,105,105,105,105,105
	.byte 100,100,100,100,100,100,100,102,102,103,104,104,104,104,108,108,108,108,108,108
	.byte 100,100,100,100,100,100,100,102,104,104,106,106,109,106,112,112,112,112,112,112
	.byte 100,100,100,100,100,102,102,104,106,106,107,107,108,107,115,115,115,115,115,115
	.byte 100,100,100,100,100,102,104,104,106,107,110,110,110,107,117,117,117,117,117,117
	.byte 100,100,100,100,100,102,104,106,107,107,110,110,110,107,117,117,117,117,117,117
	.byte 100,100,100,100,100,102,104,106,107,107,110,110,110,107,117,117,117,117,117,117
	.byte 100,100,100,100,100,102,104,106,107,107,110,110,106,113,117,117,117,117,117,117
	.byte 100,100,100,100,100,102,104,106,107,107,110,110,106,113,117,117,117,117,117,117


!3D Cranking Fueling multiplier table based on E content and Water temp
.global _ethanol_content_to_cranking_fuel_3d
.global _ethanol_content_for_cranking_mult_x
.global _coolant_temp_for_cranking_y
.global _cranking_fuel_mult_tbl

_ethanol_content_to_cranking_fuel_3d:
	.short 12										!Columns 
	.short 13										!Rows 
	.long _ethanol_content_for_cranking_mult_x		!Column Data
	.long _coolant_temp_for_cranking_y				!Row Data
	.long _cranking_fuel_mult_tbl					!Table Data
	.long 0x04000000								!8 bit data
	.float 0.1										!mult
	.float 1										!offset

_ethanol_content_for_cranking_mult_x:
	.float 0.0, 5.0, 10.0, 15.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 85.0, 100.0

_coolant_temp_for_cranking_y:
	.float -30.0,-25.0,-20.0,-10.0,0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0

_cranking_fuel_mult_tbl:
	.byte 0xDE,0,0,0,0,0,0,0,0,0,0,0xAA
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0xAD,0,0,0,0,0,0,0,0,0,0,0x55


.end



