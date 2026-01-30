#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Globals.c ../src/App_Protocol.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d ${OBJECTDIR}/_ext/1701374055/Protocol.o.d ${OBJECTDIR}/_ext/1701374055/RTC.o.d ${OBJECTDIR}/_ext/1701375116/Beeps.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d ${OBJECTDIR}/_ext/1701375116/Events.o.d ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d ${OBJECTDIR}/_ext/60163342/plib_adc.o.d ${OBJECTDIR}/_ext/60165182/plib_can1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d ${OBJECTDIR}/_ext/1342495810/Utils.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o

# Source Files
SOURCEFILES=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Globals.c ../src/App_Protocol.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MX795F512L.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/3117a9f7353ec1ed148a7cf82443b640d887fe8f .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/783188cab1c5df28fe3f78bda992bd9922e0ffea .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/b51ab57acf974deeffe191b1950ee90a1ef0fbee .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/4559fce69bf41760a3202851702f45bc482dd3c .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/68de2f8013f516918cad5f5df688417edd58fbd4 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/3a26ca0b8f71dfcba725aca1df5c5c7d19a71835 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/16de8f4c6941e3cd8c080ef9c8bb8689d9f743ae .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/3d744b27c78014c40916e4fa0c12cfbf971da204 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/f7496c4c9f9243d45c324d3af0784079c719b898 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/4393c692cc466d058bd78b43307ad1ff5a1645e0 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/901f3f6f8ecf39f95c9b84061adb96ed41bb6b49 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/54b6646e0e896d4eb6a8a651e88dc7de70d75dd6 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/e7e2976f5289459385b21e9d88ba528bb05f970 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/374a8dac12201cb50293e6dd2adce053f80c38ef .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/21bafe7f79e948b1edf69a691630620dbf00d404 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/63e0eca5e9d0abeadcf5a62c1e0bd6c2e92ed04c .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/f583cef76a4d7c907136313e35642c8194061cde .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/efcc5c589f0eafa3540580e149330fdb8dc09dad .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/7906d8bc87dc8b269924945610e368e2e16a9244 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/9a7cf621e4400735a799f6892bd5d85814d0581a .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/17a4bf3a40a47e2baf96e5edfa6e9cb7f09f3a59 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/c010206158e368156ce2b079ca63b2a512a7210 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/d2812d49dc4ee5c43538b61222e25b14391a6cab .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/49099cbea0194986fab28a7586461c73293ba106 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/e2ca86cadb2aaa904172b047e2ada28db6f724e1 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/f23c2ec469513c437e5877a989abd5f8e8958afd .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/30efe1e25826ee1460fe0c103a53932bba3ef680 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/b6b6deedafe354852af89964817f982feb0881b5 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/c69c91c11f25e5ffd19364abc5d9583354de276d .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/5baf85356dcb08922b53e4b4b6851055e70c4fc9 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/46483ef8658c47e8d200d9a45b0ffedd172c8eec .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/629d1c1eeb03cefd1fc22ca0f5b5e65dca569402 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/cb7617a2148cd694b4b7673237d5796befd05514 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/354f28dcacdccbbe0f82f46a1bc21a1511698e81 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/2062e4719bd4e1edb96664aaadb0fb96f313ac93 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/3efc9d95190f281be43694cc0cb321f38d0189fb .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/ef3a381f5606c04c1788a0808c5351a3c790def .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/270b30c4172262955040ec73164998eaf18ac1eb .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/2d8c428f5e02f2f80ff732fc5d1ae53fb8264d05 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/a1b0fbd6e4b0c3010edf43d61fb6cc85ef6c5942 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/8d526f67bdf52013ee54e44bc145293c6114ea37 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/d4ded9e6d7be17a17003c91c99ac0b5e6385bc8c .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4d4419cd55cf6e26181162c62c829802877bd856 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/ab88f0e114fdd3c668fd199d66a59ef6e5158aa4 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/c4f0079cb637087a73151e54c4ed42ffa7254ee8 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/1d1386a374fac999a39c6aa0759c00c76375ec58 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/9fc5bcc47ab861089d9fd5e8f46d5f2658afc918 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/2bd4db5e52344271e734f676686df452f8cc919a .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/1e23e7d666ba4297f6785cff45eb6af244f15ff3 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/274f29b463d70d971cceccc1d1228b40ac1ec370 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/a2ea204b3fcd188122a07674f7f3837fa1a97f7a .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/f9ddba702b32bb95ddd99201030ca47f2abb924f .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/a7c08d8f2a9d2f2161530327e93c6a815d118a52 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/8a71a96ff20f3c4cff657de72187de9e93a2407 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/3e892cac3747ffac6122b80b41ff93aed0cc2431 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/c3212cf65334ba32d8945a0e41742e1e1eec0b3a .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/c0f3c82c67af4a30f8939545f3f9ffa49122ad97 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/acde24487d38db21e040e41c17575310977e9d4a .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/b27b8f9dcfa113cf42b9f9b340696a0ec203361a .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/ab89c75efb9b60ab614d0daa882f2a9b5ff740a1 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/5d5ece7e6b9e9ad23d0104ccd0cad93722c489e6 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/69f3f38a7f224ae3534dcbbf91c28acf01cccd2f .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/6af32be0c2d387be61dddb5e6b7be350eef94ca3 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/e559b50a9adb10a2c531f14e7692393827ad674b .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/3e9b7e880c7b4c250e9245b5ebd43e3d89716f76 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/c4673a483908f6049511bb058a9ac092d71e0871 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/b80455964cf58996f4c0570bcd7cc8cbb54222a2 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/811485c07aef21904e5200f0fdb238e02fa70944 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/99b8aed0207ae9e29175cdb13253918da32ac885 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/31cb9b8663832fc87ef2a702b5da93639d8bb2f4 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/5f857d591ad3fb9f0169e454f4ee2afc62f4448b .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/16edaeff0b9183d3938b18fd407f9fa5045a8798 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/eb09fa523464b686b2041563d6f71ecdf8acd251 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/ea8370321fe0f6d845e4fd4fb3a50d654737a8e9 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/226b172b9067deea67120ea8199b89346185c092 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/e1b63315026902df2ffeaaa2cf871c5da817269 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/fafcfb97d6a19e2f1bd633d9698ca82c0b8dff39 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/bb64990bd89fe083a8f0bcdc85e7805002d6816a .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/f39ce4a480241590e70738ca666b957bda9f2efb .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/cd9a1383020558e2aef9b6c37882b4843c1fb3cd .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/c685762d93a752c93df6bac223a67108d5beef27 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/e405c39178419f677aed3faede8c4cb0b89b5a1 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/5c24aa16364d7a39c554cb6dec6921b6bee03db3 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/31fb2571638b2e39d7ef8d1b07e1dacdd7cc3901 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/bdbd08c69eeef7f96c35d2b5a42bcc1de0ca4af6 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/d57c46b97e3144b1af1dee9d6274529bdbb2841b .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/36c3a31c538fdb4b27501e648f7240926c439c50 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/a4f2131c60230c0fc7992d204df56afbeea978a0 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/66c1f3f3ed55b715274aaf784841c323224a704d .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/5cee08786db1dddbded05ca010a478574196c855 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/4d01e571e20b47667afd21b4233add5f5fd62588 .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/25104c1246a853d4a9c4331fb3f86e67f28308d .generated_files/flags/default/a9c43a72845009ca478a0bc594dda789b623f82
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX795F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX795F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/T542.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
