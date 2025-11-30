# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/ck/Desktop/Workspace/FPGA_Workspace/VIVADO_PROJECTS/XC7A100T_Microblaze/Microblaze_Vitis/Microblaze/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/home/ck/Desktop/Workspace/FPGA_Workspace/VIVADO_PROJECTS/XC7A100T_Microblaze/Microblaze_Vitis/Microblaze/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/home/ck/Desktop/Workspace/FPGA_Workspace/VIVADO_PROJECTS/XC7A100T_Microblaze/Microblaze_Vitis/Microblaze/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/home/ck/Desktop/Workspace/FPGA_Workspace/VIVADO_PROJECTS/XC7A100T_Microblaze/Microblaze_Vitis/Microblaze/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
