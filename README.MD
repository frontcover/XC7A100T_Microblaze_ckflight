# 🧠 MicroBlaze System on Artix-7

## 📸 Block Design

<img width="1555" height="1238" alt="Image" src="https://github.com/user-attachments/assets/b871a93f-e29a-4732-b5b4-effca98d9696" />

This project implements a fully functional MicroBlaze soft processor system on a Xilinx Artix-7 FPGA (e.g., Nexys-4 DDR).  
It integrates DDR2 memory, AXI peripherals, and custom VHDL logic modules — forming a complete embedded platform for hardware-software co-development.

---

## 🔧 System Overview

The system is centered around the Xilinx MicroBlaze CPU, with peripherals connected via AXI Interconnects.  
It supports DMA data streaming, SPII²C communication, UART bridge to USB, GPIO control, and DDR2 SDRAM.
DMA data streaming from vhdl to microblaze achieves 93 Mb/s.

### 🧩 Block Design Summary

 Peripheral  Description 
---------------------------
 MicroBlaze CPU  32-bit soft processor with local instruction & data memory 
 AXI Interconnect  Connects all memory-mapped peripherals 
 MIG DDR2 Controller  External DDR2 SDRAM interface 
 AXI DMA  Handles high-speed S2MM data streaming to DDR memory 
 AXI GPIO (x4)  General-purpose IO for LEDs, JD connectors, and debug 
 AXI UARTLite  Serial link to FT2232H USB-UART 
 AXI Quad SPI  Interface to onboard ADXL362 accelerometer 
 AXI IIC (x2)  Dual I²C interfaces for sensors or extensions 
 AXI Timer  Optional timercounter module 
 MDM + Interrupt Ctrl  Debug module and interrupt handling support 

---

## 🧠 Top-Level Integration (`top_module.vhd`)

The VHDL top entity wraps the MicroBlaze system (microblaze_wrapper) and connects it to FPGA hardware IO.

### Main Interfaces
- UART TXRX → FT2232H USB-UART for host communication  
- SPI bus → MOSIMISOSCKCS for sensor control  
- Dual I²C buses → main + JD expansion header  
- DDR2 interface → full 16-bit external memory interface  
- Seven-segment display (SSD) → driven by `ssd_module`  
- AXI DMA generator → streams `S_AXIS_S2MM` data to DDR2  
- Integrated ILA → monitors UART, SPI, FIFO, and AXI streams  

---

## 📦 Features

- ✅ Full MicroBlaze system with DDR2, IO, and DMA  
- ✅ Modular HDL design (`microblaze_wrapper`, `uart_tx`, `uart_rx`, `ssd_module`, etc.)  
- ✅ Automatic FIFO-to-UART bridge logic  
- ✅ Real-time AXI DMA stream generator example  
- ✅ Integrated ILA debugging and signal monitoring  
- ✅ Fully synthesizable and tested on Nexys-4 DDR board  

---

## ⚙️ Tools & Requirements

- Vivado 2023.2 or newer  
- Vitis  Xilinx SDK (for firmware development)  
- Nexys-4 DDR  Artix-7 FPGA board  
- Optional ILA debug cores, FT2232H USB-UART bridge

---

## 🧾 License

MIT License © 2025 — Cenk Keskin

---

 This design demonstrates a complete hardware-software integration flow using Xilinx MicroBlaze, combining custom HDL modules, AXI-based communication, and on-chip peripherals into a single FPGA-based embedded system.