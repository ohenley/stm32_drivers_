
with STM32.FMC;            use STM32.FMC;
with STM32.GPIO;           use STM32.GPIO;
with STM32.DEVICE;         use STM32.DEVICE;

package STM32.SDRAM.CONFIG is
   ---------
   -- FMC --
   ---------

   FMC_D : constant GPIO_Points :=
             (PD14, PD15, PD0, PD1, PE7, PE8, PE9, PE10,
              PE11, PE12, PE13, PE14, PE15, PD8, PD9, PD10);

   FMC_A : constant GPIO_Points :=
              (PF0, PF1, PF2, PF3, PF4, PF5,
               PF12, PF13, PF14, PF15, PG0, PG1);

   FMC_SDNWE  : GPIO_Point renames PC0;
   FMC_SDNRAS : GPIO_Point renames PF11;
   FMC_SDNCAS : GPIO_Point renames PG15;
   FMC_SDCLK  : GPIO_Point renames PG8;
   FMC_BA0    : GPIO_Point renames PG4;
   FMC_BA1    : GPIO_Point renames PG5;
   FMC_NBL0   : GPIO_Point renames PE0;
   FMC_NBL1   : GPIO_Point renames PE1;
   FMC_SDNE1  : GPIO_Point renames PB6;
   FMC_SDCKE1 : GPIO_Point renames PB5;

   SDRAM_PINS    : constant GPIO_Points :=
                     FMC_A & FMC_D &
                     FMC_SDNWE & FMC_SDNRAS & FMC_SDNCAS & FMC_SDCLK &
                     FMC_BA0 & FMC_BA1 & FMC_SDNE1 & FMC_SDCKE1 &
                     FMC_NBL0 & FMC_NBL1;

   --  SDRAM CONFIGURATION Parameters
   SDRAM_Base            : constant := 16#D0000000#;
   SDRAM_Size            : constant := 16#800000#;
   SDRAM_Bank            : constant STM32.FMC.FMC_SDRAM_Cmd_Target_Bank :=
                             STM32.FMC.FMC_Bank2_SDRAM;
   SDRAM_Row_Bits        : constant STM32.FMC.FMC_SDRAM_Row_Address_Bits :=
                             STM32.FMC.FMC_RowBits_Number_12b;
   SDRAM_Mem_Width       : constant STM32.FMC.FMC_SDRAM_Memory_Bus_Width :=
                             STM32.FMC.FMC_SDMemory_Width_16b;
   SDRAM_CAS_Latency     : constant STM32.FMC.FMC_SDRAM_CAS_Latency :=
                             STM32.FMC.FMC_CAS_Latency_3;
   SDRAM_CLOCK_Period    : constant STM32.FMC.FMC_SDRAM_Clock_Configuration :=
                             STM32.FMC.FMC_SDClock_Period_2;
   SDRAM_Read_Burst      : constant STM32.FMC.FMC_SDRAM_Burst_Read :=
                             STM32.FMC.FMC_Read_Burst_Disable;
   SDRAM_Read_Pipe       : constant STM32.FMC.FMC_SDRAM_Read_Pipe_Delay :=
                             STM32.FMC.FMC_ReadPipe_Delay_1;
   SDRAM_Refresh_Cnt     : constant := 1386;
   SDRAM_Min_Delay_In_ns : constant := 70;

end STM32.SDRAM.CONFIG;