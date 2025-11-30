#include "pid_handler.h"

//Vars from FlexFuel
extern ethanol_content_pcnt;
extern timing_mult_filtered;
extern timing_adder_leading;
extern timing_adder_trailing;
extern fuel_air_ratio_filtered;
extern flex_can_valid;
extern cranking_fuel_mult;

int extendedMode22PIDLookup(){
	
	int pid_array_count;
	char pid_found;
	int response_length;
	
	pid_array_count = 0;
	pid_found = 0;
	
	//G-ROM PID Lookup
	while(pid_array_count < 8 && pid_found == 0){
		
		if(extendo_pid[pid_array_count].pid_id == *uds_pid_data_rx_MAYBE){
			
			pid_found = 1;
	
			if((extendo_pid[pid_array_count].mem_mask_MAYBE & *pid_AND_val) == 0){
				
 				response_length = udsErrorResponse((char)0x22,(char)0x31);
				
			}else{
				if(*pid_id_greaterThan_1byte != (char)0x80){
					
					extendUDSDataReponse();
				}
				
				//Run function for PID
				extendo_pid[pid_array_count].function_ptr((char)0x22);
	
				if(*pid_id_greaterThan_1byte == 0){
				
					response_length = extendo_pid[pid_array_count].response_length + 3U;
					
				}else if(*pid_id_greaterThan_1byte == (char)0xff ){
					
					unknownMode22Func(0x22);
		         	response_length = udsErrorResponse((char)0x22,(char)0x22);

        		}
			}
		}
		
		pid_array_count++;
	}
	
	pid_array_count = 0;
	
	//OEM PID lookup
	while(pid_array_count < 110 && pid_found == 0){
		
		if(stock_pid_man[pid_array_count].pid_id == *uds_pid_data_rx_MAYBE){
			
			pid_found = 1;
	
			if((stock_pid_man[pid_array_count].mem_mask_MAYBE & *pid_AND_val) == 0){
				
 				response_length = udsErrorResponse((char)0x22,(char)0x31);
				
			}else{
				if(*pid_id_greaterThan_1byte != (char)0x80){
					
					extendUDSDataReponse();
				}
				
				//Run function for PID
				stock_pid_man[pid_array_count].function_ptr((char)0x22);
	
				if(*pid_id_greaterThan_1byte == 0){
				
					response_length = stock_pid_man[pid_array_count].response_length + 3U;
					
				}else if(*pid_id_greaterThan_1byte == (char)0xff ){
					
					unknownMode22Func(0x22);
		         	response_length = udsErrorResponse((char)0x22,(char)0x22);

        		}
			}
		}
		
		pid_array_count++;
	}
	
	if(pid_found == 0){
		response_length = udsErrorResponse((char)0x22,(char)0x31);
	}

	return response_length;
}


void getEthanolContentMode22(char service){
	
	unsigned int val;

	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET(ethanol_content_pcnt,1.0f,0.0f);
	intToUDS_SERVICE_DATA(service,val);
	
}

void getFlexMultiplierMode22(char service){
	
	unsigned int val;

	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET(timing_mult_filtered,0.0005f,0.0f);
	intToUDS_SERVICE_DATA(service,val);
	
}

void getFlexLeadingAdderMode22(char service){
	
	unsigned int val;

	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET(timing_adder_leading,0.5f,-50.0f);
	intToUDS_SERVICE_DATA(service,val);
	
}

void getFlexTrailingAdderMode22(char service){
	
	unsigned int val;

	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET(timing_adder_trailing,0.5f,-50.0f);
	intToUDS_SERVICE_DATA(service,val);
	
}

void getFuelAirRatioFilteredMode22(char service){
	
	unsigned int val;
	
	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET(fuel_air_ratio_filtered,0.0000212f,0.0f);
	intToUDS_SERVICE_DATA(service,val);
	
}

void getOLFuelTargetMode22(char service){
	
	unsigned int val;
	
	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET(*lamda_request_final_ol,0.00003051758f,0.0f);
	intToUDS_SERVICE_DATA(service,val);
	
}

void getFlexSensorStatusMode22(char service){
	
	unsigned int val;
	
	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET((!flex_can_valid << 8),1,0);	//NOTE: Inverting for ROMraider, and bit shifted for interface. Interface wanted to align to a 16 bit short... I dunno.... do better probably
	intToUDS_SERVICE_DATA(service,val);
	
}

void getFlexCrankingMultMode22(char service){
	
	unsigned int val;
	
	val = floatToFP_16bit_NUMBER_SCALAR_OFFSET(cranking_fuel_mult,0.01f,0.0f);
	intToUDS_SERVICE_DATA(service,val);
	
}
