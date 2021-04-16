//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_example_design.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2004-2013 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// -----------------------------------------------------------------------------
// Description:  This is the Verilog example design for the Tri-Mode
//               Ethernet MAC core. It is intended that this example design
//               can be quickly adapted and downloaded onto an FPGA to provide
//               a real hardware test environment.
//
//               This level:
//
//               * Instantiates the FIFO Block wrapper, containing the
//                 block level wrapper and an RX and TX FIFO with an
//                 AXI-S interface;
//
//               * Instantiates a simple AXI-S example design,
//                 providing an address swap and a simple
//                 loopback function;
//
//               * Instantiates transmitter clocking circuitry
//                   -the User side of the FIFOs are clocked at gtx_clk
//                    at all times
//
//               * Instantiates a state machine which drives the AXI Lite
//                 interface to bring the TEMAC up in the correct state
//
//               * Serializes the Statistics vectors to prevent logic being
//                 optimized out
//
//               * Ties unused inputs off to reduce the number of IO
//
//               Please refer to the Datasheet, Getting Started Guide, and
//               the Tri-Mode Ethernet MAC User Gude for further information.
//
//    --------------------------------------------------
//    | EXAMPLE DESIGN WRAPPER                         |
//    |                                                |
//    |                                                |
//    |   -------------------     -------------------  |
//    |   |                 |     |                 |  |
//    |   |    Clocking     |     |     Resets      |  |
//    |   |                 |     |                 |  |
//    |   -------------------     -------------------  |
//    |           -------------------------------------|
//    |           |FIFO BLOCK WRAPPER                  |
//    |           |                                    |
//    |           |                                    |
//    |           |              ----------------------|
//    |           |              | SUPPORT LEVEL       |
//    | --------  |              |                     |
//    | |      |  |              |                     |
//    | | AXI  |->|------------->|                     |
//    | | LITE |  |              |                     |
//    | |  SM  |  |              |                     |
//    | |      |<-|<-------------|                     |
//    | |      |  |              |                     |
//    | --------  |              |                     |
//    |           |              |                     |
//    | --------  |  ----------  |                     |
//    | |      |  |  |        |  |                     |
//    | |      |->|->|        |->|                     |
//    | | PAT  |  |  |        |  |                     |
//    | | GEN  |  |  |        |  |                     |
//    | |(ADDR |  |  |  AXI-S |  |                     |
//    | | SWAP)|  |  |  FIFO  |  |                     |
//    | |      |  |  |        |  |                     |
//    | |      |  |  |        |  |                     |
//    | |      |  |  |        |  |                     |
//    | |      |<-|<-|        |<-|                     |
//    | |      |  |  |        |  |                     |
//    | --------  |  ----------  |                     |
//    |           |              |                     |
//    |           |              ----------------------|
//    |           -------------------------------------|
//    --------------------------------------------------

//------------------------------------------------------

`timescale 1 ps/1 ps


//------------------------------------------------------------------------------
// The module declaration for the example_design level wrapper.
//------------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module tri_mode_ethernet_mac_0_example_design
   (
      // asynchronous reset
      input         glbl_rst,

      // 200MHz clock input from board
      // input         clk_in_p,
      // input         clk_in_n,

      // Input clocks from design clocks
      input         gtx_clk_bufg,
      // input         refclk_bufg,
      input         s_axi_aclk,

      // locked signal from design clocks
      input         dcm_locked,

      // 125 MHz clock from MMCM
      output        gtx_clk_bufg_out,

      output        phy_resetn,

      // Pause interface DESerialisation
      output reg                  pause_req,
      output reg   [15:0]         pause_val,


      // RGMII Interface
      //----------------
      // output [3:0]  rgmii_txd,
      // output        rgmii_tx_ctl,
      // output        rgmii_txc,
      // input  [3:0]  rgmii_rxd,
      // input         rgmii_rx_ctl,
      // input         rgmii_rxc,


      // MDIO Interface
      //---------------
      // inout         mdio,
      // output        mdc,


      // Serialised statistics vectors
      //------------------------------
      output        tx_statistics_s,
      output        rx_statistics_s,

      // Serialised Pause interface controls
      //------------------------------------
      input         pause_req_s,

      // Main example design controls
      //-----------------------------
      input  [1:0]  mac_speed,
      input         update_speed,
      //input         serial_command, // tied to pause_req_s
      input         config_board,
      output        serial_response,
      input         gen_tx_data,
      input         chk_tx_data,
      input         reset_error,
      output        frame_error,
      output        frame_errorn,
      output        activity_flash,
      output        activity_flashn,

      // Tri mode ethernet MAC connections
      //------------------------------------

      // asynchronous reset
      output         glbl_rstn,
      output         rx_axi_rstn,
      output         tx_axi_rstn,

      // Reference clock for IDELAYCTRL's
      // output         refclk,

      // Receiver Statistics Interface
      //---------------------------------------
      input        rx_axis_mac_aclk,
      input        rx_reset,
      input [27:0] rx_statistics_vector,
      input        rx_statistics_valid,

      // rx mac AXI-Stream interface
      input    [7:0]    rx_axis_mac_tdata,
      input             rx_axis_mac_tvalid,
      input             rx_axis_mac_tlast,
      input             rx_axis_mac_tuser,

      // Transmitter Statistics Interface
      //------------------------------------------
      input        tx_axis_mac_aclk,
      input        tx_reset,
      output  [7:0]  tx_ifg_delay,
      input [31:0] tx_statistics_vector,
      input        tx_statistics_valid,

      // tx mac AXI-Stream interface
      output   [7:0]    tx_axis_mac_tdata,
      output            tx_axis_mac_tvalid,
      output            tx_axis_mac_tlast,
      input             tx_axis_mac_tready,
      output            tx_axis_mac_tuser,

      // AXI-Lite Interface
      //---------------
      output         s_axi_resetn,

      output  [11:0] s_axi_awaddr,
      output         s_axi_awvalid,
      input        s_axi_awready,

      output  [31:0] s_axi_wdata,
      output         s_axi_wvalid,
      input        s_axi_wready,

      input [1:0]  s_axi_bresp,
      input        s_axi_bvalid,
      output         s_axi_bready,

      output  [11:0] s_axi_araddr,
      output         s_axi_arvalid,
      input        s_axi_arready,

      input [31:0] s_axi_rdata,
      input [1:0]  s_axi_rresp,
      input        s_axi_rvalid,
      output         s_axi_rready

    );

   //----------------------------------------------------------------------------
   // internal signals used in this top level wrapper.
   //----------------------------------------------------------------------------

   wire                 pause_req_s_sync_gtx_clk;
   wire [1:0]           mac_speed_sync_gtx_clk;
   wire                 update_speed_sync_gtx_clk;
   wire                 config_board_sync_gtx_clk;

   wire                 pause_req_s_sync_axilite_clk;
   wire                 update_speed_sync_axilite_clk;

   wire                 config_board_sync_axilite_clk;


   wire [1:0]           mac_speed_sync_axilite_clk;
   wire                 gen_tx_data_sync_axilite_clk;
   wire                 chk_tx_data_sync_axilite_clk;

   wire                 gen_tx_data_sync_gtx_clk;
   wire                 chk_tx_data_sync_gtx_clk;

   // example design clocks
   // wire                 gtx_clk_bufg;
   //
   // wire                 refclk_bufg;
   // wire                 s_axi_aclk;
   // wire                 rx_mac_aclk;
   // wire                 tx_mac_aclk;
   // resets (and reset generation)
   // wire                 s_axi_resetn;
   wire                 chk_resetn;

   wire                 gtx_resetn;

   // wire                 rx_reset;
   // wire                 tx_reset;

   // wire                 dcm_locked;
   // wire                 glbl_rst_intn;


   // USER side RX AXI-S interface
   wire                 rx_fifo_clock;
   wire                 rx_fifo_resetn;

   wire  [7:0]          rx_axis_fifo_tdata;

   wire                 rx_axis_fifo_tvalid;
   wire                 rx_axis_fifo_tlast;
   wire                 rx_axis_fifo_tready;

   // USER side TX AXI-S interface
   wire                 tx_fifo_clock;
   wire                 tx_fifo_resetn;

   wire  [7:0]          tx_axis_fifo_tdata;

   wire                 tx_axis_fifo_tvalid;
   wire                 tx_axis_fifo_tlast;
   wire                 tx_axis_fifo_tready;

   // RX Statistics serialisation signals
   // wire                 rx_statistics_valid;
   reg                  rx_statistics_valid_reg;
   // wire  [27:0]         rx_statistics_vector;
   reg   [27:0]         rx_stats;
   reg   [29:0]         rx_stats_shift;
   reg                  rx_stats_toggle = 0;
   wire                 rx_stats_toggle_sync;
   reg                  rx_stats_toggle_sync_reg = 0;

   // TX Statistics serialisation signals
   // wire                 tx_statistics_valid;
   reg                  tx_statistics_valid_reg;
   // wire  [31:0]         tx_statistics_vector;
   reg   [31:0]         tx_stats;
   reg   [33:0]         tx_stats_shift;
   reg                  tx_stats_toggle = 0;
   wire                 tx_stats_toggle_sync;
   reg                  tx_stats_toggle_sync_reg = 0;
   wire                 inband_link_status;
   wire  [1:0]          inband_clock_speed;
   wire                 inband_duplex_status;

   // Pause interface DESerialisation
   reg   [18:0]         pause_shift;
   // reg                  pause_req;
   // reg   [15:0]         pause_val;

   // // AXI-Lite interface
   // wire  [11:0]         s_axi_awaddr;
   // wire                 s_axi_awvalid;
   // wire                 s_axi_awready;
   // wire  [31:0]         s_axi_wdata;
   // wire                 s_axi_wvalid;
   // wire                 s_axi_wready;
   // wire  [1:0]          s_axi_bresp;
   // wire                 s_axi_bvalid;
   // wire                 s_axi_bready;
   // wire  [11:0]         s_axi_araddr;
   // wire                 s_axi_arvalid;
   // wire                 s_axi_arready;
   // wire  [31:0]         s_axi_rdata;
   // wire  [1:0]          s_axi_rresp;
   // wire                 s_axi_rvalid;
   // wire                 s_axi_rready;


   wire                 int_frame_error;
   wire                 int_activity_flash;

   // set board defaults - only updated when reprogrammed
   reg                  enable_address_swap = 1;

   reg                  enable_phy_loopback = 0;

   // MAC reset ports
   assign rx_axi_rstn = 1'b1;
   assign tx_axi_rstn = 1'b1;

   // Synchronize DIP Switch inputs to respective clock domains
  tri_mode_ethernet_mac_0_sync_block pause_req_s_gtx_sync_inst (
     .clk              (gtx_clk_bufg),
     .data_in          (pause_req_s),
     .data_out         (pause_req_s_sync_gtx_clk)
  );

  tri_mode_ethernet_mac_0_syncer_level #(
    .WIDTH       (2)
   ) mac_speed_gtx_sync(
    .clk      (gtx_clk_bufg),
    .reset    (1'b0),
    .datain   (mac_speed),
    .dataout  (mac_speed_sync_gtx_clk)
  );

  tri_mode_ethernet_mac_0_sync_block update_speed_gtx_sync_inst (
     .clk              (gtx_clk_bufg),
     .data_in          (update_speed),
     .data_out         (update_speed_sync_gtx_clk)
  );


  tri_mode_ethernet_mac_0_sync_block pause_req_s_axilite_sync_inst (
     .clk              (s_axi_aclk),
     .data_in          (pause_req_s),
     .data_out         (pause_req_s_sync_axilite_clk)
  );



  tri_mode_ethernet_mac_0_sync_block update_speed_axilite_sync_inst (
     .clk              (s_axi_aclk),
     .data_in          (update_speed),
     .data_out         (update_speed_sync_axilite_clk)
  );


  tri_mode_ethernet_mac_0_sync_block config_board_gtx_sync_inst (
     .clk              (gtx_clk_bufg),
     .data_in          (config_board),
     .data_out         (config_board_sync_gtx_clk)
  );

  tri_mode_ethernet_mac_0_sync_block config_board_axilite_sync_inst (
     .clk              (s_axi_aclk),
     .data_in          (config_board),
     .data_out         (config_board_sync_axilite_clk)
  );



  tri_mode_ethernet_mac_0_syncer_level #(
    .WIDTH       (2)
   ) mac_speed_axilite_sync(
    .clk      (s_axi_aclk),
    .reset    (!s_axi_resetn),

    .datain   (mac_speed),
    .dataout  (mac_speed_sync_axilite_clk)
  );

  tri_mode_ethernet_mac_0_sync_block gen_tx_data_axilite_sync_inst (
     .clk              (s_axi_aclk),
     .data_in          (gen_tx_data),
     .data_out         (gen_tx_data_sync_axilite_clk)
  );

  tri_mode_ethernet_mac_0_sync_block chk_tx_data_axilite_sync_inst (
     .clk              (s_axi_aclk),
     .data_in          (chk_tx_data),
     .data_out         (chk_tx_data_sync_axilite_clk)
  );

  tri_mode_ethernet_mac_0_sync_block gen_tx_data_gtx_sync_inst (
     .clk              (gtx_clk_bufg),
     .data_in          (gen_tx_data),
     .data_out         (gen_tx_data_sync_gtx_clk)
  );

  tri_mode_ethernet_mac_0_sync_block chk_tx_data_gtx_sync_inst (
     .clk              (gtx_clk_bufg),
     .data_in          (chk_tx_data),
     .data_out         (chk_tx_data_sync_gtx_clk)
  );

   // signal tie offs
   assign         tx_ifg_delay = 0;    // not used in this example

   assign activity_flash  = int_activity_flash;
   assign activity_flashn = !int_activity_flash;


  assign frame_error  = int_frame_error;
  assign frame_errorn = !int_frame_error;

  // when the config_board button is pushed capture and hold the
  // state of the gne/chek tx_data inputs.  These values will persist until the
  // board is reprogrammed or config_board is pushed again
  always @(posedge gtx_clk_bufg)
  begin
     if (config_board_sync_gtx_clk) begin
        enable_address_swap   <= gen_tx_data_sync_gtx_clk;
     end
  end


  always @(posedge s_axi_aclk)
  begin
     if (config_board_sync_axilite_clk) begin
        enable_phy_loopback   <= chk_tx_data_sync_axilite_clk;
     end
  end

  //----------------------------------------------------------------------------
  // Clock logic to generate required clocks from the 200MHz on board
  // if 125MHz is available directly this can be removed
  //----------------------------------------------------------------------------
  // tri_mode_ethernet_mac_0_example_design_clocks example_clocks
  //  (
  //     // differential clock inputs
  //     .clk_in_p         (clk_in_p),
  //     .clk_in_n         (clk_in_n),
  //
  //     // asynchronous control/resets
  //     .glbl_rst         (glbl_rst),
  //     .dcm_locked       (dcm_locked),
  //
  //     // clock outputs
  //     .gtx_clk_bufg     (gtx_clk_bufg),
  //     .refclk_bufg      (refclk_bufg),
  //     .s_axi_aclk       (s_axi_aclk)
  //  );

    // Pass the GTX clock to the Test Bench
   assign gtx_clk_bufg_out = gtx_clk_bufg;


  //----------------------------------------------------------------------------
  // Generate the user side clocks for the axi fifos
  //----------------------------------------------------------------------------

  assign tx_fifo_clock = gtx_clk_bufg;
  assign rx_fifo_clock = gtx_clk_bufg;


  //----------------------------------------------------------------------------
  // Generate resets required for the fifo side signals etc
  //----------------------------------------------------------------------------

   tri_mode_ethernet_mac_0_example_design_resets example_resets
   (
      // clocks
      .s_axi_aclk       (s_axi_aclk),
      .gtx_clk          (gtx_clk_bufg),

      // asynchronous resets
      .glbl_rst         (glbl_rst),
      .reset_error      (reset_error),
      .rx_reset         (rx_reset),
      .tx_reset         (tx_reset),

      .dcm_locked       (dcm_locked),

      // synchronous reset outputs

      .glbl_rst_intn    (glbl_rstn),
      // .glbl_rst_intn    (glbl_rst_intn),


      .gtx_resetn       (gtx_resetn),

      .s_axi_resetn     (s_axi_resetn),
      .phy_resetn       (phy_resetn),
      .chk_resetn       (chk_resetn)
   );


   // generate the user side resets for the axi fifos

   assign tx_fifo_resetn = gtx_resetn;
   assign rx_fifo_resetn = gtx_resetn;


  //----------------------------------------------------------------------------
  // Serialize the stats vectors
  // This is a single bit approach, retimed onto gtx_clk
  // this code is only present to prevent code being stripped..
  //----------------------------------------------------------------------------

  // RX STATS

  // first capture the stats on the appropriate clock
  always @(posedge rx_axis_mac_aclk)
  begin
     rx_statistics_valid_reg <= rx_statistics_valid;
     if (!rx_statistics_valid_reg & rx_statistics_valid) begin
        rx_stats <= rx_statistics_vector;
        rx_stats_toggle <= !rx_stats_toggle;
     end
  end

  tri_mode_ethernet_mac_0_sync_block rx_stats_sync (
     .clk              (gtx_clk_bufg),
     .data_in          (rx_stats_toggle),
     .data_out         (rx_stats_toggle_sync)
  );

  always @(posedge gtx_clk_bufg)
  begin
     rx_stats_toggle_sync_reg <= rx_stats_toggle_sync;
  end

  // when an update is rxd load shifter (plus start/stop bit)
  // shifter always runs (no power concerns as this is an example design)
  always @(posedge gtx_clk_bufg)
  begin
     if (rx_stats_toggle_sync_reg != rx_stats_toggle_sync) begin
        rx_stats_shift <= {1'b1, rx_stats, 1'b1};
     end
     else begin
        rx_stats_shift <= {rx_stats_shift[28:0], 1'b0};
     end
  end

  assign rx_statistics_s = rx_stats_shift[29];

  // TX STATS

  // first capture the stats on the appropriate clock
  always @(posedge tx_axis_mac_aclk)
  begin
     tx_statistics_valid_reg <= tx_statistics_valid;
     if (!tx_statistics_valid_reg & tx_statistics_valid) begin
        tx_stats <= tx_statistics_vector;
        tx_stats_toggle <= !tx_stats_toggle;
     end
  end

  tri_mode_ethernet_mac_0_sync_block tx_stats_sync (
     .clk              (gtx_clk_bufg),
     .data_in          (tx_stats_toggle),
     .data_out         (tx_stats_toggle_sync)
  );

  always @(posedge gtx_clk_bufg)
  begin
     tx_stats_toggle_sync_reg <= tx_stats_toggle_sync;
  end

  // when an update is txd load shifter (plus start bit)
  // shifter always runs (no power concerns as this is an example design)
  always @(posedge gtx_clk_bufg)
  begin
     if (tx_stats_toggle_sync_reg != tx_stats_toggle_sync) begin
        tx_stats_shift <= {1'b1, tx_stats, 1'b1};
     end
     else begin
        tx_stats_shift <= {tx_stats_shift[32:0], 1'b0};
     end
  end

  assign tx_statistics_s = tx_stats_shift[33];

  //----------------------------------------------------------------------------
  // DSerialize the Pause interface
  // This is a single bit approachtimed on gtx_clk
  // this code is only present to prevent code being stripped..
  //----------------------------------------------------------------------------
  // the serialised pause info has a start bit followed by the quanta and a stop bit
  // capture the quanta when the start bit hits the msb and the stop bit is in the lsb
  always @(posedge gtx_clk_bufg)
  begin
     pause_shift <= {pause_shift[17:0], pause_req_s_sync_gtx_clk};
  end

  always @(posedge gtx_clk_bufg)
  begin
     if (pause_shift[18] == 1'b0 & pause_shift[17] == 1'b1 & pause_shift[0] == 1'b1) begin
        pause_req <= 1'b1;
        pause_val <= pause_shift[16:1];
     end
     else begin
        pause_req <= 1'b0;
        pause_val <= 0;
     end
  end

  //----------------------------------------------------------------------------
  // Instantiate the AXI-LITE Controller
  //----------------------------------------------------------------------------

   tri_mode_ethernet_mac_0_axi_lite_sm axi_lite_controller (
      .s_axi_aclk                   (s_axi_aclk),
      .s_axi_resetn                 (s_axi_resetn),

      .mac_speed                    (mac_speed_sync_axilite_clk),
      .update_speed                 (update_speed_sync_axilite_clk),   // may need glitch protection on this..
      .serial_command               (pause_req_s_sync_axilite_clk),
      .serial_response              (serial_response),

      .phy_loopback                 (enable_phy_loopback),

      .s_axi_awaddr                 (s_axi_awaddr),
      .s_axi_awvalid                (s_axi_awvalid),
      .s_axi_awready                (s_axi_awready),

      .s_axi_wdata                  (s_axi_wdata),
      .s_axi_wvalid                 (s_axi_wvalid),
      .s_axi_wready                 (s_axi_wready),

      .s_axi_bresp                  (s_axi_bresp),
      .s_axi_bvalid                 (s_axi_bvalid),
      .s_axi_bready                 (s_axi_bready),

      .s_axi_araddr                 (s_axi_araddr),
      .s_axi_arvalid                (s_axi_arvalid),
      .s_axi_arready                (s_axi_arready),

      .s_axi_rdata                  (s_axi_rdata),
      .s_axi_rresp                  (s_axi_rresp),
      .s_axi_rvalid                 (s_axi_rvalid),
      .s_axi_rready                 (s_axi_rready)
   );

  //----------------------------------------------------------------------------
  // Instantiate the TRIMAC core fifo block wrapper
  //----------------------------------------------------------------------------
  tri_mode_ethernet_mac_0_fifo_block trimac_fifo_block (
      .gtx_clk                      (gtx_clk_bufg),


      // asynchronous reset
      // .glbl_rstn                    (glbl_rst_intn),
      // .rx_axi_rstn                  (1'b1),
      // .tx_axi_rstn                  (1'b1),

      // Reference clock for IDELAYCTRL's
      // .refclk                       (refclk_bufg),

      // Receiver Statistics Interface
      //---------------------------------------
      .rx_mac_aclk                  (rx_axis_mac_aclk),
      .rx_reset                     (rx_reset),
      // .rx_statistics_vector         (rx_statistics_vector),
      // .rx_statistics_valid          (rx_statistics_valid),

      // Receiver (AXI-S) Interface
      //----------------------------------------
      .rx_fifo_clock                (rx_fifo_clock),
      .rx_fifo_resetn               (rx_fifo_resetn),
      .rx_axis_fifo_tdata           (rx_axis_fifo_tdata),
      .rx_axis_fifo_tvalid          (rx_axis_fifo_tvalid),
      .rx_axis_fifo_tready          (rx_axis_fifo_tready),
      .rx_axis_fifo_tlast           (rx_axis_fifo_tlast),

      // rx mac AXI-Stream interface
      .rx_axis_mac_tdata            (rx_axis_mac_tdata),
      .rx_axis_mac_tvalid           (rx_axis_mac_tvalid),
      .rx_axis_mac_tlast            (rx_axis_mac_tlast),
      .rx_axis_mac_tuser            (rx_axis_mac_tuser),

      // Transmitter Statistics Interface
      //------------------------------------------
      .tx_mac_aclk                  (tx_axis_mac_aclk),
      .tx_reset                     (tx_reset),
      // .tx_ifg_delay                 (tx_ifg_delay),
      // .tx_statistics_vector         (tx_statistics_vector),
      // .tx_statistics_valid          (tx_statistics_valid),

      // Transmitter (AXI-S) Interface
      //-------------------------------------------
      .tx_fifo_clock                (tx_fifo_clock),
      .tx_fifo_resetn               (tx_fifo_resetn),
      .tx_axis_fifo_tdata           (tx_axis_fifo_tdata),
      .tx_axis_fifo_tvalid          (tx_axis_fifo_tvalid),
      .tx_axis_fifo_tready          (tx_axis_fifo_tready),
      .tx_axis_fifo_tlast           (tx_axis_fifo_tlast),

      // tx mac AXI-Stream interface
      .tx_axis_mac_tdata              (tx_axis_mac_tdata),
      .tx_axis_mac_tvalid             (tx_axis_mac_tvalid),
      .tx_axis_mac_tlast              (tx_axis_mac_tlast),
      .tx_axis_mac_tready             (tx_axis_mac_tready),
      .tx_axis_mac_tuser              (tx_axis_mac_tuser)

      // MAC Control Interface
      //------------------------
      // .pause_req                    (pause_req),
      // .pause_val                    (pause_val),

      // RGMII Interface
      //------------------
      // .rgmii_txd                    (rgmii_txd),
      // .rgmii_tx_ctl                 (rgmii_tx_ctl),
      // .rgmii_txc                    (rgmii_txc),
      // .rgmii_rxd                    (rgmii_rxd),
      // .rgmii_rx_ctl                 (rgmii_rx_ctl),
      // .rgmii_rxc                    (rgmii_rxc),

      // RGMII Inband Status Registers
      //--------------------------------
      // .inband_link_status           (inband_link_status),
      // .inband_clock_speed           (inband_clock_speed),
      // .inband_duplex_status         (inband_duplex_status),


      // MDIO Interface
      //---------------
      // .mdio                         (mdio),
      // .mdc                          (mdc),

      // AXI-Lite Interface
      //---------------
      // .s_axi_aclk                   (s_axi_aclk),
      // .s_axi_resetn                 (s_axi_resetn),
      //
      // .s_axi_awaddr                 (s_axi_awaddr),
      // .s_axi_awvalid                (s_axi_awvalid),
      // .s_axi_awready                (s_axi_awready),
      //
      // .s_axi_wdata                  (s_axi_wdata),
      // .s_axi_wvalid                 (s_axi_wvalid),
      // .s_axi_wready                 (s_axi_wready),
      //
      // .s_axi_bresp                  (s_axi_bresp),
      // .s_axi_bvalid                 (s_axi_bvalid),
      // .s_axi_bready                 (s_axi_bready),
      //
      // .s_axi_araddr                 (s_axi_araddr),
      // .s_axi_arvalid                (s_axi_arvalid),
      // .s_axi_arready                (s_axi_arready),
      //
      // .s_axi_rdata                  (s_axi_rdata),
      // .s_axi_rresp                  (s_axi_rresp),
      // .s_axi_rvalid                 (s_axi_rvalid),
      // .s_axi_rready                 (s_axi_rready)

   );


  //----------------------------------------------------------------------------
  //  Instantiate the address swapping module and simple pattern generator
  //----------------------------------------------------------------------------

   tri_mode_ethernet_mac_0_basic_pat_gen basic_pat_gen_inst (
      .axi_tclk                     (tx_fifo_clock),
      .axi_tresetn                  (tx_fifo_resetn),
      .check_resetn                 (chk_resetn),

      .enable_pat_gen               (gen_tx_data_sync_gtx_clk),
      .enable_pat_chk               (chk_tx_data_sync_gtx_clk),
      .enable_address_swap          (enable_address_swap),
      .speed                        (mac_speed_sync_gtx_clk),
      .rx_axis_tdata                (rx_axis_fifo_tdata),
      .rx_axis_tvalid               (rx_axis_fifo_tvalid),
      .rx_axis_tlast                (rx_axis_fifo_tlast),
      .rx_axis_tuser                (1'b0), // the FIFO drops all bad frames
      .rx_axis_tready               (rx_axis_fifo_tready),

      .tx_axis_tdata                (tx_axis_fifo_tdata),
      .tx_axis_tvalid               (tx_axis_fifo_tvalid),
      .tx_axis_tlast                (tx_axis_fifo_tlast),
      .tx_axis_tready               (tx_axis_fifo_tready),

      .frame_error                  (int_frame_error),
      .activity_flash               (int_activity_flash)
   );




endmodule
