#define EXTENDED_PID_SIZE			sizeof(extendo_pid)/sizeof(extendo_pid[2])		//TODO: Make this a sizeof call

//Vars from OEM ROM
#define uds_pid_data_rx_MAYBE					((short*)0xffffcffe)
#define pid_AND_val								((short*)0xffffd1c8)
#define pid_id_greaterThan_1byte				((char *)0xffffcffc)
#define lamda_request_final_ol					((float*)0xffffbecc)
#define stock_pid_man							((Mode22_PID_t *)0x5d994)

//Logging stuff
extern void getMode22PID(void);
		//NOTE: args are enums, too lazy to add it in
extern int udsErrorResponse(char service, char reponse);
extern void extendUDSDataReponse(void);
extern void byteToUDS_SERVICE_DATA(char service, char data);
extern void intToUDS_SERVICE_DATA(char service, unsigned int data);
extern long unknownMode22Func(char param);
extern int mode22Hanlder(void);

//Extern vars from FlexFuel



//Logging utils
typedef struct Mode22_PID_t {
    short pid_id;
    char response_length;
	char unknown;
    short mem_mask_MAYBE;
	short unknown2;
    void (*function_ptr)(char) __attribute__((aligned(4)));
} __attribute__((packed)) Mode22_PID_t;



//Extended logging parameter lookup
int extendedMode22PIDLookup (void) __attribute__ ((section ("RomHole_ForCode")));
void getEthanolContentMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void getFlexMultiplierMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void getFlexLeadingAdderMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void getFlexTrailingAdderMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void getFuelAirRatioFilteredMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void getOLFuelTargetMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void getFlexSensorStatusMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void getFlexCrankingMultMode22(char service) __attribute__ ((section ("RomHole_ForCode")));
void can41GROMPack(void) __attribute__ ((section ("RomHole_ForCode")));

//TODO: Move this to end of section
const Mode22_PID_t extendo_pid[7] __attribute__ ((section ("RomHole_ForPidStruct"))) = 
{
	{0x555,0x2,0x0,0xfffe,0x0000,&getEthanolContentMode22},			//0
	{0x22b,0x2,0x0,0xfffe,0x0000,&getFlexMultiplierMode22},			//1
	{0x557,0x2,0x0,0xfffe,0x0000,&getFlexLeadingAdderMode22},		//2
	{0x558,0x2,0x0,0xfffe,0x0000,&getFlexTrailingAdderMode22},		//3
	{0x559,0x2,0x0,0xfffe,0x0000,&getFuelAirRatioFilteredMode22},	//4
	{0x55A,0x2,0x0,0xfffe,0x0000,&getOLFuelTargetMode22},			//5
	{0x55B,0x1,0x0,0xfff1,0x0000,&getFlexSensorStatusMode22},		//6		
	{0x55C,0x1,0x0,0xfffe,0x0000,&getFlexCrankingMultMode22}		//7
};