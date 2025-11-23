// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: amd.com:blockdesign:microblaze:1.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module microblaze_sv (
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0" *)
  (* X_INTERFACE_MODE = "slave S_AXIS_S2MM_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_S2MM_0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.slave S_AXIS_S2MM_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [15:0] gpio_rtl_0_tri_o,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [1:0] gpio_rtl_1_tri_o,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [1:0] gpio_rtl_2_tri_i,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire uart_rtl_0_rxd,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire uart_rtl_0_txd,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire iic_rtl_0_scl_i,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_0_scl_o,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_0_scl_t,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire iic_rtl_0_sda_i,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_0_sda_o,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_0_sda_t,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire iic_rtl_1_scl_i,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_1_scl_o,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_1_scl_t,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire iic_rtl_1_sda_i,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_1_sda_o,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire iic_rtl_1_sda_t,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [15:0] DDR2_0_dq,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [1:0] DDR2_0_dqs_p,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [1:0] DDR2_0_dqs_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [12:0] DDR2_0_addr,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [2:0] DDR2_0_ba,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire DDR2_0_ras_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire DDR2_0_cas_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire DDR2_0_we_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] DDR2_0_ck_p,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] DDR2_0_ck_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] DDR2_0_cke,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] DDR2_0_cs_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [1:0] DDR2_0_dm,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] DDR2_0_odt,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire reset_rtl_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire spi0_mosi,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire spi0_miso,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire spi0_sck,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] spi0_cs,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire clk_100MHz,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire clk_out3_0
);

  microblaze inst (
    .gpio_rtl_0_tri_o(gpio_rtl_0_tri_o),
    .gpio_rtl_1_tri_o(gpio_rtl_1_tri_o),
    .gpio_rtl_2_tri_i(gpio_rtl_2_tri_i),
    .uart_rtl_0_rxd(uart_rtl_0_rxd),
    .uart_rtl_0_txd(uart_rtl_0_txd),
    .iic_rtl_0_scl_i(iic_rtl_0_scl_i),
    .iic_rtl_0_scl_o(iic_rtl_0_scl_o),
    .iic_rtl_0_scl_t(iic_rtl_0_scl_t),
    .iic_rtl_0_sda_i(iic_rtl_0_sda_i),
    .iic_rtl_0_sda_o(iic_rtl_0_sda_o),
    .iic_rtl_0_sda_t(iic_rtl_0_sda_t),
    .iic_rtl_1_scl_i(iic_rtl_1_scl_i),
    .iic_rtl_1_scl_o(iic_rtl_1_scl_o),
    .iic_rtl_1_scl_t(iic_rtl_1_scl_t),
    .iic_rtl_1_sda_i(iic_rtl_1_sda_i),
    .iic_rtl_1_sda_o(iic_rtl_1_sda_o),
    .iic_rtl_1_sda_t(iic_rtl_1_sda_t),
    .DDR2_0_dq(DDR2_0_dq),
    .DDR2_0_dqs_p(DDR2_0_dqs_p),
    .DDR2_0_dqs_n(DDR2_0_dqs_n),
    .DDR2_0_addr(DDR2_0_addr),
    .DDR2_0_ba(DDR2_0_ba),
    .DDR2_0_ras_n(DDR2_0_ras_n),
    .DDR2_0_cas_n(DDR2_0_cas_n),
    .DDR2_0_we_n(DDR2_0_we_n),
    .DDR2_0_ck_p(DDR2_0_ck_p),
    .DDR2_0_ck_n(DDR2_0_ck_n),
    .DDR2_0_cke(DDR2_0_cke),
    .DDR2_0_cs_n(DDR2_0_cs_n),
    .DDR2_0_dm(DDR2_0_dm),
    .DDR2_0_odt(DDR2_0_odt),
    .S_AXIS_S2MM_0_tdata(S_AXIS_S2MM_0.TDATA),
    .S_AXIS_S2MM_0_tkeep(S_AXIS_S2MM_0.TKEEP),
    .S_AXIS_S2MM_0_tlast(S_AXIS_S2MM_0.TLAST),
    .S_AXIS_S2MM_0_tready(S_AXIS_S2MM_0.TREADY),
    .S_AXIS_S2MM_0_tvalid(S_AXIS_S2MM_0.TVALID),
    .reset_rtl_0(reset_rtl_0),
    .spi0_mosi(spi0_mosi),
    .spi0_miso(spi0_miso),
    .spi0_sck(spi0_sck),
    .spi0_cs(spi0_cs),
    .clk_100MHz(clk_100MHz),
    .clk_out3_0(clk_out3_0)
  );

endmodule
