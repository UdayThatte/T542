/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

#include "IO_definitions.h"
#include "Para_Calculations.h"
#include "LCD_functions.h"
#include "Enco_Handling.h"
#include "Utils.h"
#include "KBD_5X8_rd.h"
#include "Events.h"
#include "Protocol.h"
#include "App_Protocol.h"
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
//following are from BSP/API
extern volatile bool Start_ETH_fb ;
extern bool System_Booted ;
extern volatile CAN_APP_STATES CAN_state;
extern uint16_t AmplStatus;
//extern EncoderHandle_t AZ_Encoder_handle;
extern double AZ_Tbl_to_GearRatio;
extern EncoderValues_t AZ_Encoder_Data;
extern Ampl_Paras AZ_Amp_Paras;
extern Ampl_Paras Lift_Amp_Paras;
extern Ampl_Paras Cover_Amp_Paras;

//following are App_globals
extern uint32_t AZ_Enco_Position; //SSI now
extern double AZ_Enco_Angle;
extern uint32_t AZ_Motor_Position; //Currently connected Hex value
extern uint16_t  AZ_Enco_GR ;
extern EncoderValues_t AZ_ENCODER;
extern uint8_t CurrentMode;
extern volatile uint16_t INP_IMG; //required fro input chekcing
extern volatile uint8_t INP_IMG1; //for extended Inputs through RL lines when keyboard is not used RL7..Rl0
extern volatile uint8_t OUT_IMG;
extern uint8_t FC_byte_in_feedback;
extern volatile uint8_t Status_Byte1_in_feedback ;
extern volatile uint8_t Status_Byte2_in_feedback ;

volatile int MyTimer=0;

void UserTimer10mSec()
{
    if(!System_Booted) return; //No operation untill System Booted/Initialized
   
    MyTimer++;
        
}
void Check_Encoder_Update_Status()
{
//TODO For SSI Encoder
    Status_Byte1_in_feedback |= (uint8_t)AZ_ENCODER_OK;
 
}

void Check_Amplifiers_Update_Status()
{
 int32_t strttime;    
 bool respTimeout;
 uint16_t StatWrd;
 uint32_t Enco;
 int count=0;
 char Reason[64];
 char dispstr[32];
 
    printf("\rWait Finding AZ Amplifier..");
    LCDWriteString(0,1,1,"Checking AZ Ampli...");
    
    
    if(!GetAmplStatus(AZ_Amplifier,&StatWrd)) 
    {
        printf("\rAZ Ampl GetStatus Failed..CANState- %d",CAN_state);
        LCDWriteString(0,1,1,"AZ Amplifier Error..");
        Status_Byte1_in_feedback &= ~(uint8_t)AZ_AMPL_OK;
        OUT_IMG = ERROR_LED_ON;
        LongBeep();
    }
    else
    {
        printf("\rAZ Amplifier Found");
        LCDWriteString(0,1,1,"AZ Amplifier Found..");
        
        //if(!Init_Amplifier_old(AZ_Amplifier,Ampl_POSITION_Mode)) //TODO deaut velocity mode?
        if(!Init_Amplifier(AZ_Amplifier,Ampl_POSITION_Mode,&AZ_Amp_Paras))
        {
            printf("Init: Err:%08X  CAN-%2d",AmplStatus,CAN_state);
            sprintf(dispstr,"Err:%08X  CAN-%2d",AmplStatus,CAN_state);
            LCDWriteString(0,2,1,dispstr);
            OUT_IMG = ERROR_LED_ON;
            Status_Byte1_in_feedback &= ~(uint8_t)AZ_AMPL_OK;
            LongBeep();
        }
        else
           Enable_Amplifier(AZ_Amplifier);

        
        
        if(Get_and_Display_Ampl_Error(AZ_Amplifier,Reason,"AZ Amplifier"))
        {
            OUT_IMG = ERROR_LED_ON;
            Status_Byte1_in_feedback &= ~(uint8_t)AZ_AMPL_OK;
        }
        else
            Status_Byte1_in_feedback |= (uint8_t)AZ_AMPL_OK;
        
        LCDWriteString(0,2,1,Reason);
    }
    delay_mS(1000);  
    ClearDisp(0);
/////
   printf("\rWait Finding LIFT Amplifier..");
   LCDWriteString(0,1,1,"Checking LIFT Ampli.");

    if(!GetAmplStatus(LIFT_Amplifier,&StatWrd)) 
    {
        printf("\rLIFT Ampl GetStatus Failed..CANState- %d",CAN_state);
        LCDWriteString(0,1,1,"LIFT Amplifier Eror.");
        Status_Byte1_in_feedback &= ~(uint8_t)LIFT_AMPL_OK;
        OUT_IMG = ERROR_LED_ON;
        LongBeep();
    }
    else
    {
        printf("\rLIFT Amplifier Found");
        LCDWriteString(0,1,1,"LIFT Amplifier Found");
        if(Get_and_Display_Ampl_Error(LIFT_Amplifier,Reason,"LIFT Amplifier"))
        {
            OUT_IMG = ERROR_LED_ON;
            Status_Byte1_in_feedback &= ~(uint8_t)LIFT_AMPL_OK;
        }
        else
            Status_Byte1_in_feedback |= (uint8_t)LIFT_AMPL_OK;
        
        LCDWriteString(0,2,1,Reason);
    }
    delay_mS(1000);
    ClearDisp(0);
/////    
   printf("\rWait Finding COVER Amplifier..");
   LCDWriteString(0,1,1,"Checking COVER Ampli.");

    if(!GetAmplStatus(COVER_Amplifier,&StatWrd)) 
    {
        printf("\rCOVER Ampl GetStatus Failed..CANState- %d",CAN_state);
        LCDWriteString(0,1,1,"COVER Amplifier Eror.");
        Status_Byte1_in_feedback &= ~(uint8_t)COVER_AMPL_OK;
        OUT_IMG = ERROR_LED_ON;
        LongBeep();
    }
    else
    {
        printf("\rCOVER Amplifier Found");
        LCDWriteString(0,1,1,"COVER Amplifier Found");
        if(Get_and_Display_Ampl_Error(COVER_Amplifier,Reason,"COVER Amplifier"))
        {
            OUT_IMG = ERROR_LED_ON;
            Status_Byte1_in_feedback &= ~(uint8_t)COVER_AMPL_OK;
        }
        else
            Status_Byte1_in_feedback |= (uint8_t)COVER_AMPL_OK;
        LCDWriteString(0,2,1,Reason);
    }
    delay_mS(1000);   
    ClearDisp(0);
}

void Update_Crnt_Mode_In_FC_Byte_and_Display()
{
   char dispstr[16] ;
    FC_byte_in_feedback &= (uint8_t)0xC0; //bit 6,7
    switch(CurrentMode)
    {
        case AUTO_MODE:
            strcpy(dispstr,"AUTO MODE   ");
            FC_byte_in_feedback |= (uint8_t)
                    MODE_AUTO_MASK;
            break;
        case MANUAL_MODE:
            strcpy(dispstr,"MAN. MODE    ");
            FC_byte_in_feedback |= (uint8_t)MODE_MANUAL_MASK;
            break;
        case MAINTAIN_MODE:
            strcpy(dispstr,"PENDANT MODE");
            FC_byte_in_feedback |= (uint8_t)MODE_MAINTAIN_MASK;
            break;
        default:
            strcpy(dispstr,"MODE ERROR  ");
            FC_byte_in_feedback |= (uint8_t)MODE_ERROR_MASK;
            break;
    }
    LCDWriteString(0,1,1,dispstr);
}

void Update_Mode()
{
  uint8_t mask;  
  mask = MODE_SW_AUTO | MODE_SW_MAINTAIN | MODE_SW_MAN;
  mask &= INP_IMG1;
  
  
  CurrentMode = MODE_ERR; 
    if (MODE_SW_AUTO)
    {
       if(MODE_SW_MAINTAIN || MODE_SW_MAN)
          CurrentMode = (uint8_t)MODE_ERR;
       else
          CurrentMode = (uint8_t)AUTO_MODE;
    }
    if (MODE_SW_MAN)
    {
       if(MODE_SW_MAINTAIN || MODE_SW_AUTO)
            CurrentMode = (uint8_t)MODE_ERR;
       else
            CurrentMode = (uint8_t)MANUAL_MODE ;
    }
    if (MODE_SW_MAINTAIN)
    {
       if(MODE_SW_MAN || MODE_SW_AUTO)
            CurrentMode = (uint8_t)MODE_ERR;
       else
            CurrentMode = (uint8_t)MAINTAIN_MODE ;
    }
  
  Update_Crnt_Mode_In_FC_Byte_and_Display();        
  if(CurrentMode == MODE_ERR)
    OUT_IMG = ERROR_LED_ON;
}

//bool check_Initial_Start_Condition()
//{
//   uint32_t Oncondimask=0;
//   uint32_t Inp_stat;
//   //all these inputs should be on 
//   //PEN_EMG_STOP if its in Pendant mode
//   condimask = EXT_EMG_STOP | SCU_EMG_STOP |  AZ_STOW_LOCK | LIFT_STOW_LOCK | LVL_INTERLOCK;
//   Inp_stat = (((uint32_t)INP_IMG1 << 16) & 0xFFFFFF | INP_IMG;
//   if(Inp_stat & condimask)
//    
//}

void Main_Loop()
{
char dispstr[32]  ;    
int32_t Position;
uint32_t Enco;
double Angle;

        if(!Init_Amplifier_old(AZ_Amplifier,Ampl_POSITION_Mode))
        {
            printf("Init: Err:%08X  CAN-%2d",AmplStatus,CAN_state);
            sprintf(dispstr,"Err:%08X  CAN-%2d",AmplStatus,CAN_state);
            LCDWriteString(0,3,1,dispstr);
            LongBeep();

        }
        //else
        //    LCDWriteString(0,3,1,"Amplifier Initiated.");
        Enable_Amplifier(AZ_Amplifier);
    while(1)
    {

        if(!Get_Actual_Motor_Position(AZ_Amplifier,&Position))
        {
            LCDWriteString(0,4,1,"Motor Posi.Error...");
            LongBeep();
        }

        else
        {
            sprintf(dispstr,"Pos:x%08X",Position);
            LCDWriteString(0,3,1,dispstr);
            sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
            LCDWriteString(0,4,1,dispstr);
            AZ_Motor_Position = Position;
        }
//
                    Get_Enco_Count_CAN(AZ_Encode_Node,&Enco);
                    
                    if(CAN_state == STATE_CAN_IDLE)
                    {
//                        Get_Paras_12Bit_Encoders(Enco,&Angle,AZ_Enco_GR);
//                        //sprintf(dispstr,"CAN:x%04X Ang:%6.2f",Enco,Angle);
//                        //LCDWriteString(0,1,1,dispstr);
//                        AZ_Enco_Position = Enco; //
//                        AZ_Enco_Angle = Angle;
                        AZ_Enco_Angle = Encoder_ComputeAbsTableAngle(Enco,&AZ_Encoder_Data);
                        AZ_Enco_Position = Enco; //
                       delay_mS(20);
                    }
                    else
                    {
                        LCDWriteString(0,1,1,"  CAN ENCO ERROR    ");
                        LongBeep();
                    }
                    //sprintf(dispstr,"%5.2f",Angle);
                    sprintf(dispstr,"%08X %5.2f",AZ_Enco_Position,AZ_Enco_Angle);
                    LCDWriteString(0,2,1,dispstr);

    }//main while

}

void Actions_Manual_Mode()
{
//check the amp status and selectively disable the amp
    if(Status_Byte1_in_feedback & AZ_AMPL_OK)
        Disable_Amplifier(AZ_Amplifier);
    if(Status_Byte1_in_feedback & LIFT_AMPL_OK)
        Disable_Amplifier(LIFT_Amplifier);
    if(Status_Byte1_in_feedback & COVER_AMPL_OK)
        Disable_Amplifier(COVER_Amplifier);
    
//now wait for    mode change
    do
    {
        Update_Mode();
        delay_mS(100);
    }while(CurrentMode == MANUAL_MODE);
//if mode is switched enable the amps    
    if(Status_Byte1_in_feedback & AZ_AMPL_OK)
        Init_Amplifier(AZ_Amplifier,Ampl_POSITION_Mode,&AZ_Amp_Paras);
    if(Status_Byte1_in_feedback & LIFT_AMPL_OK)
        Init_Amplifier(LIFT_Amplifier,Ampl_POSITION_Mode,&Lift_Amp_Paras);
    if(Status_Byte1_in_feedback & COVER_AMPL_OK)
        Init_Amplifier(COVER_Amplifier,Ampl_POSITION_Mode,&Cover_Amp_Paras);
        
    
}


void Actions_Err_Mode()
{
    
}

void Actions_Auto_Mode()
{
    
}

void Actions_Maintainance_Mode()
{
    
}



int main ( void )
{
char dispstr[32]  ;    
uint32_t Enco;
    /* Initialize all modules */
    PON_Inits(); //This is mandatory Function to be called

    ///////
    printf("\rPON wait..");
    
    
    Init_LCD(0);  //Firts LCD intiated
    ClearDisp(0);
    
//ETH module and Drive amplifier takes time to reset        
//other wise it does not respond to "+++" but gives response to socket bytes    
    for(int m=6;m>0;m--)
    {
        sprintf(dispstr,"POWER ON START:   %02d",m-1);
        LCDWriteString(0,1,1,dispstr);
        delay_mS(1000);    
    }
    printf("\rWait Over..");
    LongBeep();
    delay_mS(500);
    ShortBeep();
//
    ClearDisp(0);
    Update_Mode(); 
    Check_Amplifiers_Update_Status();
    

    Init_Protocol_stack_On_ETH();
    Start_ETH_fb = true; //start sedning fb string
    
    System_Booted = true; //if required
    
    while(1)
    {
       Update_Mode(); //FC byte and Error LED handled    
        switch(CurrentMode)
        {
            case AUTO_MODE:
                Actions_Auto_Mode();
                break;
            case MANUAL_MODE:
                Actions_Manual_Mode();
                break;
            case MAINTAIN_MODE:
                Actions_Maintainance_Mode();
                break;
            default:
                Actions_Err_Mode();
                break;
        }
       
    }
//
    
//if Current mode is not error and in Auto mode then check starting condition    
    
    Main_Loop();
    
    
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

