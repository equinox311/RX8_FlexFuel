#ifndef VARS_H
#define VARS_H

//Variables from the RX8 Software for use, probably should make the asm file and these in one file.. 
#define engine_speed_rpm            			((float*)0xFFFFB594)
#define coolant_temp_degC						((float*)0xFFFFA9FC)
#define engine_load_g_rev						((float*)0xFFFFC0D8)
#define relative_manifold_pressure2_kPa			((float*)0xFFFFBE24)
#define coolant_temp_post_fault_detection_degC	((float*)0xFFFFA9FC)
#define ignition_leading_base_final_deg			((float*)0xffffa5ec)
#define ignition_trailing_base_final_deg		((float*)0xffffa5f0)
#define uds_pid_data_rx_MAYBE					((short*)0xffffcffe)
#define pid_AND_val								((short*)0xffffd1c8)
#define pid_id_greaterThan_1byte				((char *)0xffffcffc)
#define lamda_request_final_ol					((float*)0xffffbecc)
#define stock_pid_man							((Mode22_PID_t *)0x5d994)

//CAN 0x216 repurpose
#define can216rx_byte0		((char*)0xffffbb0c)
#define can216rx_byte1		((char*)0xffffbb0d)
#define can216rx_byte2		((char*)0xffffbb0e)
#define can216rx_byte3		((char*)0xffffbb0f)
#define can216rx_byte4		((char*)0xffffbb10)
#define can216rx_byte5		((char*)0xffffbb11)
#define can216rx_byte6		((char*)0xffffbb12)
#define can216rx_byte7		((char*)0xffffbb13)
#define can216_rx_fault		((char*)0xffffa402)

#define can_216_rx_timer	((char*)0xffffbaf8)



// CAN Stuff Start
#define flex_message_ram_start	0xFFFFBAF0			//This will need to be a per ROM variable, though it's likely safe for most
#define flex_sensor_id			0x556
#define flex_message_byte0		((char*)flex_message_ram_start)
#define flex_message_byte1		((char*)flex_message_byte0 + 1)
#define flex_message_byte2		((char*)flex_message_byte1 + 1)
#define flex_message_byte3		((char*)flex_message_byte2 + 1)
#define flex_message_byte4		((char*)flex_message_byte3 + 1)
#define flex_message_byte5		((char*)flex_message_byte4 + 1)
#define flex_message_byte6		((char*)flex_message_byte5 + 1)
#define flex_message_byte7		((char*)flex_message_byte6 + 1)

#define flex_fault_index		(char)0x80

typedef enum {
	EXTENDED,
	STANDARD
}eIDLength;

typedef enum {
	PENDING_MAYBE,
	UNKNOWN2,
	NOT_FAULTED,
	FAULTED,
	UNKNOWN
}eFaultStatus;

typedef struct {
	long can_id;
	char field2;			//NOTE: Always 0x01??
	char h_can_channel;		//NOTE: Always 0x22??
	char dlc;
	char id_length;
	long data_ram_address_start;
	long field7;			//NOTE: Always 0x1000??
}CAN_Message_Setup_t;

//CAN STUFF END

//Logging utils
typedef struct Mode22_PID_t {
    short pid_id;
    char response_length;
	char unknown;
    short mem_mask_MAYBE;
	short unknown2;
    void (*function_ptr)(char) __attribute__((aligned(4)));
} __attribute__((packed)) Mode22_PID_t;


//Table utils
typedef struct {
    short ColCount;
    short RowsCount;
    float * ColData_ptr;
    float * RowData_ptr;
    float * TableData_ptr;
    int e3DtableDataType;
    float DataMultipler ;
    float DataOffset;
}LookupTable3D_t;

typedef struct {
    short RowsCount;
	short e2DtableDataType;
    float * RowData_ptr;
    float * TableData_ptr;
}LookupTable2D_Float_t;

typedef struct {
    short RowsCount;
	short e2DtableDataType;
    float * RowData_ptr;
    float * TableData_ptr;
	float DataMultiplier;
	float DataOffset;
}LookupTable2D_t;


//Defined Tables for Flex fuel
extern LookupTable3D_t timing_ethanol_adder_leading;
extern LookupTable3D_t timing_ethanol_adder_trailing;
extern LookupTable2D_Float_t ethanol_content_to_fuel_air_ratio_table_2d;
extern LookupTable2D_Float_t ethanol_content_to_timing_mult;

//Utils from stock ROM
extern float fixedPointToFloat_8bit_MULT_OFF_SIG(float multiplier,float offset,int signal);
extern float Lookup3d(float index_varX, float index_varY,LookupTable3D_t *table_struct);
extern float Lookup2d(LookupTable2D_Float_t *table_struct2d, float index2d_varX);
extern void updateFaultStatus(char fault_index,eFaultStatus status);
extern int floatToFP_16bit_NUMBER_SCALAR_OFFSET(float signal, float multiplier, float offset);
extern unsigned int floatToFP_NUMBER_SCALAR_OFFSET(float value,float multiplier,float offset);
extern float firstOrderFilter_SIG_SIGPREV_MIN_FF(float signal, float signal_previous, float signal_min, float signal_filter_contant);

//Logging stuff
extern void getMode22PID(void);
		//NOTE: args are enums, too lazy to add it in
extern int udsErrorResponse(char service, char reponse);
extern void extendUDSDataReponse(void);
extern void byteToUDS_SERVICE_DATA(char service, char data);
extern void intToUDS_SERVICE_DATA(char service, unsigned int data);
extern long unknownMode22Func(char param);
extern int mode22Hanlder(void);



//function calls used as hook replacements that need to be called still
extern void calculateTrailingTimingBase(void);
extern void calculateLeadingTimingBase(void);
extern void calculateGearRPMbased(void);

#endif // VARS_H