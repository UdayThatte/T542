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
#include <math.h>

#include "IO_definitions.h"
#include "Para_Calculations.h"
#include "LCD_functions.h"
#include "Enco_Handling.h"
#include "Utils.h"
#include "KBD_5X8_rd.h"
#include "Events.h"
#include "Protocol.h"
#include "App_Protocol.h"
#include "Beeps.h"
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
extern EncoderParas_t AZ_Encoder_Data;
extern Ampl_Paras AZ_Amp_Paras;
extern Ampl_Paras Lift_Amp_Paras;
extern Ampl_Paras Cover_Amp_Paras;

//following are App_globals
extern uint32_t AZ_Enco_Position; //SSI now
extern double AZ_Enco_Angle;
extern uint32_t AZ_Motor_Position; //Currently connected Hex value
extern uint16_t  AZ_Enco_GR ;
extern uint8_t CurrentMode;
extern volatile uint16_t TINP_IMG; //required fro input chekcing
extern volatile uint8_t TINP_IMG1; //for extended Inputs through RL lines when keyboard is not used RL7..Rl0
extern volatile uint16_t INP_IMG;
extern volatile uint8_t INP_IMG1;

extern volatile uint8_t OUT_IMG;
extern uint8_t FC_byte_in_feedback;
extern volatile uint8_t Status_Byte1_in_feedback ;
extern volatile uint8_t Status_Byte2_in_feedback ;
extern volatile uint32_t Combined_Inps;

extern Protocol_Info ETH_Proto_Ptrs;
extern int8_t AZ_Spin_Speed_Set;
extern uint8_t AZ_Posi_Speed_Set;
extern bool SSI_encode_Fault;

volatile int MyTimer=0;

void UserTimer10mSec()
{
    uint8_t tmp;
    if(!System_Booted) return; //No operation untill System Booted/Initialized
   
    MyTimer++;
    //only upper 5 inputs are complemented bec of Isolator on ext board
    //lower three inputs are directly connected
    INP_IMG1 = (INP_IMG1 & 0x07) | ~(INP_IMG1 & 0xF8); 
    Combined_Inps =(((uint32_t)INP_IMG1 << 16) & 0xFF0000) | INP_IMG; //Bit 23.. Bit0 all the inputs IN4..In1 IP16..IP1
    
//Switches to be updated in Status byte2
     if(Combined_Inps & COVER_OPN_LMT_MASK) 
         Status_Byte2_in_feedback |= (uint8_t)DOOR_OPN_FLG;
     else
         Status_Byte2_in_feedback &= ~((uint8_t)DOOR_OPN_FLG);
    
    if(Combined_Inps & COVER_CLS_LMT_MASK) 
         Status_Byte2_in_feedback |= (uint8_t)DOOR_CLS_FLG;
     else
         Status_Byte2_in_feedback &= ~((uint8_t)DOOR_CLS_FLG);
            
    if(Combined_Inps & UP_LIMIT_MASK) 
         Status_Byte2_in_feedback |= (uint8_t)ANTENNA_UP_FLG;
     else
         Status_Byte2_in_feedback &= ~((uint8_t)ANTENNA_UP_FLG);        

    if(Combined_Inps & DN_LIMIT_MASK) 
         Status_Byte2_in_feedback |= (uint8_t)ANTENNA_DN_FLG;
     else
         Status_Byte2_in_feedback &= ~((uint8_t)ANTENNA_DN_FLG);      
    
}
//
void Move_Motor(uint8_t AmplNode,double ToGo,bool IsRelative,bool IsBlocking)
{
    AmplComm_Status stat;
    bool Reached;
    uint32_t timeConsumed = GetSystemMs();
    char dispstr[48];
    uint32_t CountForAmp;
    double MotAngle;
    int32_t Position;
    
    //CountForAmp = Get_Count_ForAmpAZ(ToGo);
    CountForAmp = Get_Pos_Count_ForAmp(ToGo,&AZ_Amp_Paras);

    stat = Set_Operating_Mode(AmplNode,Ampl_POSITION_Mode) ;
    CountForAmp =  Get_Vel_Count_ForAmp_RPM((double)AZ_Posi_Speed_Set,&AZ_Amp_Paras);
    stat = Set_Target_Acceleration_Count(AmplNode,CountForAmp);
    //LCDWriteString(0,3,1,"Ampl Target is Set  ");

    stat = Set_Target_Position_Count(AmplNode,CountForAmp,IsRelative) ;//ffff is one revolution
    if(stat != AMPL_STATE_OK)
    {
        printf("\rTarget Position Set returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus);
        return;
    }
    //LCDWriteString(0,3,1,"Ampl Target is Set  ");
    
    stat = Issue_GO_Command(AmplNode,true);
    if(stat != AMPL_STATE_OK)
    {
        printf("\rGO Command returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus);
        return;
    }
    //LCDWriteString(0,3,1,"Ampl GO Comm.Issued.");
    

    
    if(IsBlocking)
    {
        //till target is reached
        Reached = false;
        do
        {
            
            stat = Check_if_Target_Reached(AmplNode,&Reached);
            if(stat!= AMPL_STATE_OK)
            {
                printf("\rTarget Reached Checking returned %04X\r",stat);
                printf("\rValue received - %04X\r",AmplStatus);
                return;
            }
            
            Get_Actual_Motor_Position(AZ_Amplifier,&Position);
            MotAngle = (double)Position/65535; //in revolution 
            MotAngle = fmod(MotAngle,AZ_Amp_Paras.GR_motor_to_load);//remainder of revs
            MotAngle *= 360; //current angle on table   
            MotAngle /= AZ_Amp_Paras.GR_motor_to_load;
            sprintf(dispstr,"AZ Mot:%8.2f",MotAngle);//angle
            //sprintf(dispstr,"%8.2f %08X",MotAngle,Position);//angle
            LCDWriteString(0,2,1,dispstr);

          //printf("\rMoving..");
        }while(!Reached);
        
    }
    
    //LCDWriteString(0,3,1,"Ampl TARGET Reached.");
    
}


void Process_Proto_Cmd(Protocol_Info* ProtoPtr)
{
//in the Buffer[1] - no of bytes to process [2] - is command [3].. Parameters if any
double Req_AZ_Position,CrntAzPosMotor;
//double Req_Second_Position;
//int count = 10;
uint32_t Enco,VelCnt;
//char dispstr[32];
//double Angle;
//int32_t Position;
int8_t Req_Speed;
AmplComm_Status stat;
uint8_t tmp;
char dispstr[32];
int32_t Position;
int32_t ModuloVal;
int32_t Target,CrntPos;

    ProtoPtr->Protocol_State = PROTO_CMD_IN_PROCESS;
    switch(*(ProtoPtr->BufferFor_DataRcv+2))
    {
        case 0x1: //Cover related commands
            FC_byte_in_feedback |= CMD_RCVD_MASK;
            tmp = *(ProtoPtr->BufferFor_DataRcv+3); //command open close stop
            switch(tmp)
            {
                case 0xA0:
                    break;
                case 0x0A:
                    break;
                case 0x00:
                    break;
                default:
                    FC_byte_in_feedback &= ~CMD_RCVD_MASK;
                    break;
            }
            break;
        case 0x02://Lifting related
            FC_byte_in_feedback |= CMD_RCVD_MASK;
            tmp = *(ProtoPtr->BufferFor_DataRcv+3); //command open close stop
            switch(tmp)
            {
                case 0xA0:
                    break;
                case 0x0A:
                    break;
                case 0x00:
                    break;
                default:
                    FC_byte_in_feedback &= ~CMD_RCVD_MASK;
                    break;
            }
            break;
        case 0x03:
            stat = Set_Target_Velocity_Count(AZ_Amplifier,0); //if it is moving it will stop
            do
            {
             Get_ActualSpeed_Count_of_Motor(AZ_Amplifier,&VelCnt);   
            }while(VelCnt);
                
            
            
            Req_AZ_Position = ((((*(ProtoPtr->BufferFor_DataRcv+3))*256)+(*(ProtoPtr->BufferFor_DataRcv+4))) * 359.99 )/65535 ;//in Degrees
      
//Get motor Current position in terms of Table Angle          
            Get_Actual_Motor_Position(AZ_Amplifier,&Position);
  //find out degrees on the table          
            CrntAzPosMotor = (double)Position/65535; //in revolution 
            
            CrntAzPosMotor = fmod(CrntAzPosMotor,AZ_Amp_Paras.GR_motor_to_load);//remainder of revs

            CrntAzPosMotor *= 360; //current angle on table   
            
            CrntAzPosMotor /= AZ_Amp_Paras.GR_motor_to_load;
            
   //find shortest path to rotate         
            Req_AZ_Position = fmod(Req_AZ_Position-CrntAzPosMotor + 180.0,360.0);
            if(Req_AZ_Position < 0)
                Req_AZ_Position += 360.0;
            Req_AZ_Position -= 180;

            
            Move_Motor(AZ_Amplifier,Req_AZ_Position,true,true);//relative
            
            break;
        case 0x04: //spin with set speed
            FC_byte_in_feedback |= CMD_RCVD_MASK;
            //check if its within limit 
            Req_Speed = *(ProtoPtr->BufferFor_DataRcv+3);
            if((Req_Speed <= 20) && (Req_Speed >= -20))
            {
              AZ_Spin_Speed_Set = Req_Speed; //set on the amplifier inrpm 
              stat = Set_Operating_Mode(AZ_Amplifier,Ampl_VELOCITY_Mode) ;
              VelCnt = Get_Vel_Count_ForAmp_RPM((double)(AZ_Spin_Speed_Set),&AZ_Amp_Paras);
                stat |= Set_Target_Velocity_Count(AZ_Amplifier,VelCnt);
                 //if(stat != AMPL_STATE_OK) 
                 //{
                 //}
            }
             
            break;
        case 0x05:
        case 0x07: //stop
                stat = Set_Target_Velocity_Count(AZ_Amplifier,0);
                do
                {
                 Get_ActualSpeed_Count_of_Motor(AZ_Amplifier,&VelCnt);   
                }while(VelCnt);
                
                stat = Set_Operating_Mode(AZ_Amplifier,Ampl_POSITION_Mode) ;
                break;
        case 0x08: //AZ Postion Velocity
            FC_byte_in_feedback |= CMD_RCVD_MASK;
            AZ_Posi_Speed_Set = *(ProtoPtr->BufferFor_DataRcv+3) ;
            break;
        case 0x09: //EL
            FC_byte_in_feedback |= CMD_RCVD_MASK;
            break;
        default: //unrecog command
            FC_byte_in_feedback &= ~CMD_RCVD_MASK;
            break;
    }
    
   Restart_Proto(ProtoPtr);
}

void Check_Encoder_Update_Status()
{
//TODO For SSI Encoder
    Status_Byte1_in_feedback |= (uint8_t)AZ_ENCODER_OK;
 
}

void Check_Amplifiers_And_Update_Status()
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
        FC_byte_in_feedback &= ~(uint8_t)Readiness_MASK; 
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
            FC_byte_in_feedback &= ~(uint8_t)Readiness_MASK; 
            Status_Byte1_in_feedback &= ~(uint8_t)AZ_AMPL_OK;
            LongBeep();
        }
        else
            Status_Byte1_in_feedback |= (uint8_t)AZ_AMPL_OK;
        
        LCDWriteString(0,2,1,Reason);
    }
    delay_mS(2000);  
    ClearDisp(0);
/////
   printf("\rWait Finding LIFT Amplifier..");
   LCDWriteString(0,1,1,"Checking LIFT Ampli.");

    if(!GetAmplStatus(LIFT_Amplifier,&StatWrd)) 
    {
        printf("\rLIFT Ampl GetStatus Failed..CANState- %d",CAN_state);
        LCDWriteString(0,1,1,"LIFT Amplifier Error");
        Status_Byte1_in_feedback &= ~(uint8_t)LIFT_AMPL_OK;
        OUT_IMG = ERROR_LED_ON;
        FC_byte_in_feedback &= ~(uint8_t)Readiness_MASK; 
        LongBeep();
    }
    else
    {
        printf("\rLIFT Amplifier Found");
        LCDWriteString(0,1,1,"LIFT Amplifier Found");
        if(Get_and_Display_Ampl_Error(LIFT_Amplifier,Reason,"LIFT Amplifier"))
        {
            OUT_IMG = ERROR_LED_ON;
            FC_byte_in_feedback &= ~(uint8_t)Readiness_MASK; 
            Status_Byte1_in_feedback &= ~(uint8_t)LIFT_AMPL_OK;
            LongBeep();
        }
        else
            Status_Byte1_in_feedback |= (uint8_t)LIFT_AMPL_OK;
        
        LCDWriteString(0,2,1,Reason);
    }
    delay_mS(2000);
    ClearDisp(0);
/////    
   printf("\rWait Finding COVER Amplifier..");
   LCDWriteString(0,1,1,"Checking COVER Ampli.");

    if(!GetAmplStatus(COVER_Amplifier,&StatWrd)) 
    {
        printf("\rCOVER Ampl GetStatus Failed..CANState- %d",CAN_state);
        LCDWriteString(0,1,1,"COVER Amplifier Error");
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
    delay_mS(2000);   
    ClearDisp(0);
}

void Update_Crnt_Mode_In_FC_Byte()
{
   char dispstr[16] ;
    FC_byte_in_feedback &= (uint8_t)0x3f; //bit 6,7
    switch(CurrentMode)
    {
        case AUTO_MODE:
            FC_byte_in_feedback |= (uint8_t)Fb_MODE_AUTO_MASK;
            break;
        case MANUAL_MODE:
            FC_byte_in_feedback |= (uint8_t)Fb_MODE_MANUAL_MASK;
            break;
        case MAINTAIN_MODE:
            FC_byte_in_feedback |= (uint8_t)Fb_MODE_MAINTAIN_MASK;
            break;
        default:
            FC_byte_in_feedback |= (uint8_t)Fb_MODE_ERROR_MASK;
            break;
    }
    
    
}

void Update_Mode()
{
  
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
  
  Update_Crnt_Mode_In_FC_Byte();        
  if(CurrentMode == MODE_ERR)
    OUT_IMG = ERROR_LED_ON;
}

void Check_Initial_Start_Condition_non_blocking()
{
uint32_t condimask = EXT_EMG_MASK | SCU_EMG_MASK |  AZ_STOW_MASK | LIFT_STOW_MASK | LVL_INTERLOCK_MASK;

    //LCDWriteString(0,3,1,"CAN NOT START..     ");    
        if (!EXT_EMG_STOP)
            LCDWriteString(0,4,1,"RELEASE EXT EMG.PB  ");
        if(!SCU_EMG_STOP)    
            LCDWriteString(0,4,1,"RELEASE SCU EMG.PB  ");
        if(!AZ_STOW_LOCK)    
            LCDWriteString(0,4,1,"AZ STOW LOCK ACTIVE ");
        if(!LIFT_STOW_LOCK)    
            LCDWriteString(0,4,1,"LIFT STOW LOCK ACTIV");
        if(!LVL_INTERLOCK)    
            LCDWriteString(0,4,1,"NO LEVEL INTERLOCK  ");
        
        if( (Combined_Inps & condimask) != condimask)
        {
            ShortBeep();      
            delay_mS(500);       
        }
    
    //LCDWriteString(0,3,1,"                    ");  
    LCDWriteString(0,4,1,"                    ");  
}

void Check_Initial_Start_Condition()
{
   uint32_t condimask=0;
   
   //all these inputs should be on 
   //PEN_EMG_STOP if its in Pendant mode
   ClearDisp(0);
   LCDWriteString(0,3,1,"CAN NOT START..     ");
   condimask = EXT_EMG_MASK | SCU_EMG_MASK |  AZ_STOW_MASK | LIFT_STOW_MASK | LVL_INTERLOCK_MASK;
   do
   {
        if (!EXT_EMG_STOP)
            LCDWriteString(0,4,1,"RELEASE EXT EMG.PB  ");
        if(!SCU_EMG_STOP)    
            LCDWriteString(0,4,1,"RELEASE SCU EMG.PB  ");
        if(!AZ_STOW_LOCK)    
            LCDWriteString(0,4,1,"AZ STOW LOCK ACTIVE ");
        if(!LIFT_STOW_LOCK)    
            LCDWriteString(0,4,1,"LIFT STOW LOCK ACTIV");
        if(!LVL_INTERLOCK)    
            LCDWriteString(0,4,1,"NO LEVEL INTERLOCK  ");
        
        if( (Combined_Inps & condimask) != condimask)
        {
            ShortBeep();      
            delay_mS(500);       
            LCDWriteString(0,4,1,"                    ");
            delay_mS(500);       
        }
        
   }while ( (Combined_Inps & condimask) != condimask);
   
    LCDWriteString(0,3,1,"                    ");  
    LCDWriteString(0,4,1,"                    ");
}

void ETH_Initial_Operations()
{
    char dispstr[32];
    
    LCDWriteString(0,1,1,"Finding ETH ModuleIP");
    Put_ETH_In_AT_Mode();
    Get_IP_ETH(dispstr);
    if(dispstr[0]==0x0)
    {
        LCDWriteString(0,2,1,"No Response from ETH");
        OUT_IMG = ERROR_LED_ON;
        LongBeep();
    }
    else
    {
        LCDWriteString(0,1,1,"ETH Module IP is:   ");
        LCDWriteString(0,2,1,dispstr);
    }
    Exit_ETH_From_AT_Mode();    
    delay_mS(2000);

}
void Test_Loop()
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
                        AZ_Enco_Angle = Encoder_ComputeAbsLoadAngle(Enco,&AZ_Encoder_Data);
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
LCDWriteString(0,1,1,"MAN. MODE    ");    
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
    LCDWriteString(0,1,1,"MODE ERROR  ");
}

void Actions_Auto_Mode()
{
    uint32_t Enco;
    char disp_str[32];
    int32_t Position;
    char dispstr[32];
    double MotAngle;
    
    LCDWriteString(0,1,1,"AUTO MODE   ");
    do
    {
        //Now check power on status
        Check_Initial_Start_Condition_non_blocking();
//Encoder Reading for Feedback
                    Get_Enco_Count_CAN(AZ_Encode_Node,&Enco);
                    if(CAN_state == STATE_CAN_IDLE)
                    {
                       AZ_Enco_Angle = Encoder_ComputeAbsLoadAngle(Enco,&AZ_Encoder_Data);
                       AZ_Enco_Position = Enco; //
                       Status_Byte1_in_feedback |= (uint8_t)AZ_ENCODER_OK;
                       sprintf(disp_str,"AZ Enc:%7.3f",AZ_Enco_Angle);
                       LCDWriteString(0,3,1,disp_str);
                    }
                    else
                    {
                        printf("\rAZ Encoder Reading Error In Auto");
                        LCDWriteString(0,4,1,"  CAN ENCO ERROR    ");
                        Status_Byte1_in_feedback &= ~(uint8_t)AZ_ENCODER_OK;
                        LongBeep();
                    }
                    Get_Actual_Motor_Position(AZ_Amplifier,&Position);
                    
                    MotAngle = (double)Position/65535; //in revolution 
                    MotAngle = fmod(MotAngle,AZ_Amp_Paras.GR_motor_to_load);//remainder of revs
                    MotAngle *= 360; //current angle on table   
                    MotAngle /= AZ_Amp_Paras.GR_motor_to_load;
                    sprintf(dispstr,"AZ Mot:%8.2f",MotAngle);//angle
                    //sprintf(dispstr,"%8.2f %08X",MotAngle,Position);//angle
                    LCDWriteString(0,2,1,dispstr);
        
                    if(((AZ_Enco_Angle<0.01) || (AZ_Enco_Angle>359.9)) && (MotAngle > 0.2 ))
                        Set_Motor_Home_Position(AZ_Amplifier);
                    
//                    Enco = Get_SSI_Encoder_Count(0,&AZ_Encoder_Data);
//                    if(SSI_encode_Fault)
//                    {
//                        printf("\rAZ Encoder Reading Error In Auto %08X",Enco);
//                        Status_Byte1_in_feedback &= ~(uint8_t)AZ_ENCODER_OK;
//                        LongBeep();
//                    }
//                    else
//                    {
//                       AZ_Enco_Angle = Encoder_ComputeAbsLoadAngle(Enco,&AZ_Encoder_Data);
//                       AZ_Enco_Position = Enco; //
//                       //printf("\rAZ Encoder Reading In Auto %08X",Enco);
//                       Status_Byte1_in_feedback |= (uint8_t)AZ_ENCODER_OK;
//                    }
        
//Process Protocol        

            if (ETH_Proto_Ptrs.Protocol_State == PROTO_FRAME_RCVD) 
            {
            
                Protocol_Chk(&ETH_Proto_Ptrs);  
           
                if(ETH_Proto_Ptrs.Protocol_State == PROTO_CHKSM_ERROR) //FC byte to be updated
                    FC_byte_in_feedback &= ~CMD_CHKSMOK_MASK;
                else
                    FC_byte_in_feedback |=  CMD_CHKSMOK_MASK;
                
           
                if  (ETH_Proto_Ptrs.Protocol_State==PROTO_CMD_RCVD)
                    {
                     //Action to be taken
                         Process_Proto_Cmd(&ETH_Proto_Ptrs);
                    }
                     else
                     {
                        printf("\rProto Returned %d",ETH_Proto_Ptrs.Protocol_State) ; 
                        Restart_Proto(&ETH_Proto_Ptrs);
                     }
           } //protocol prcessing done
                    
        
        Update_Mode();
        delay_mS(50);
    }while(1);//while(CurrentMode == AUTO_MODE);

}

void Actions_Maintainance_Mode()
{
    LCDWriteString(0,1,1,"PENDANT MODE");    
}


//void Test_Inps()
//{
//     uint8_t c=0;
//     
//     printf("\rNow Testing Digital Inputs..");
//     printf("\rPress q during testing to exit the continuous test..\r");
//     LongBeep();
//     delay_mS(2000);
//     while(1)
//     {
//      printf("\r");
//      for (int i = 16 - 1; i >= 0; i--) 
//       {
//        // Use bitwise AND with a mask to check each bit
//        if ((INP_IMG >> i) & 1) 
//            printf("1");
//         else 
//            printf("0");
//       }
//      delay_mS(100);
//     
//        c = Read_stdin_if_ready();
//       //getchar();
//
//       if((c=='Q')||(c=='q'))
//       {
//           printf("\rInput Testing Ends..\r\r");
//           return;
//       }
//    }//while
//}


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
    Check_Amplifiers_And_Update_Status();
    
    
    System_Booted = true; //Input output processing will start
    
    ETH_Initial_Operations();
    Init_Protocol_stack_On_ETH();
    Start_ETH_fb = true; //start sedning fb string
    ClearDisp(0);
    
    
    
    
//    char cc;
//    int i;
//    while(1)
//    {
//        for (i = 7; i >= 0; i--) 
//        {
//            cc ='0';
//            if ((INP_IMG1 >> i) & 1) 
//                cc ='1';
//          LCDWritechar(0,3,20-i,cc);
//        }
//    }
//    
    Actions_Auto_Mode();
    
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
                //Test_Loop();
                break;
        }
       
    }
//
    
//if Current mode is not error and in Auto mode then check starting condition    
    
    Test_Loop();
    
    
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

