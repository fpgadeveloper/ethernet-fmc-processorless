################################################################
# Block diagram build script for Microblaze 7-Series FPGA designs
################################################################

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

create_bd_design $design_name

current_bd_design $design_name

set parentCell [get_bd_cells /]

# Get object for parentCell
set parentObj [get_bd_cells $parentCell]
if { $parentObj == "" } {
   puts "ERROR: Unable to find parent cell <$parentCell>!"
   return
}

# Make sure parentObj is hier blk
set parentType [get_property TYPE $parentObj]
if { $parentType ne "hier" } {
   puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
   return
}

# Save current instance; Restore later
set oldCurInst [current_bd_instance .]

# Set parent object as current
current_bd_instance $parentObj

# Ports with shared logic
# Warning: We are assuming that these ports are included in the ports list
set shared_logic_ports {0 4}

# External input ports
set chk_tx_data [ create_bd_port -dir I chk_tx_data ]
set config_board [ create_bd_port -dir I config_board ]
set gen_tx_data [ create_bd_port -dir I gen_tx_data ]
set glbl_rst [ create_bd_port -dir I -type rst glbl_rst ]
set_property CONFIG.POLARITY ACTIVE_HIGH [get_bd_ports glbl_rst]
set mac_speed [ create_bd_port -dir I -from 1 -to 0 mac_speed ]
set pause_req_s [ create_bd_port -dir I pause_req_s ]
set reset_error [ create_bd_port -dir I -type rst reset_error ]
set update_speed [ create_bd_port -dir I update_speed ]

# Clock wizard to generate 125MHz and 200MHz from Ethernet FMC reference clock
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz clk_wiz_0
set_property -dict [list CONFIG.PRIM_IN_FREQ.VALUE_SRC USER] [get_bd_cells clk_wiz_0]
set_property -dict [list CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
CONFIG.PRIM_IN_FREQ {125} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_USED {true} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200} \
CONFIG.CLKIN1_JITTER_PS {80.0} \
CONFIG.MMCM_CLKFBOUT_MULT_F {8.000} \
CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
CONFIG.MMCM_CLKOUT2_DIVIDE {5} \
CONFIG.NUM_OUT_CLKS {3} \
CONFIG.CLKOUT1_JITTER {119.348} \
CONFIG.CLKOUT1_PHASE_ERROR {96.948} \
CONFIG.CLKOUT2_JITTER {124.615} \
CONFIG.CLKOUT2_PHASE_ERROR {96.948} \
CONFIG.CLKOUT3_JITTER {109.241} \
CONFIG.CLKOUT3_PHASE_ERROR {96.948}] [get_bd_cells clk_wiz_0]

# Create the ports for the external ref clock input
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 ref_clk
set_property -dict [list CONFIG.FREQ_HZ {125000000}] [get_bd_intf_ports ref_clk]
connect_bd_intf_net [get_bd_intf_ports ref_clk] [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]
connect_bd_net [get_bd_ports glbl_rst] [get_bd_pins clk_wiz_0/reset]

foreach port $ports {
  # Create the Ethernet driver module
  create_bd_cell -type module -reference tri_mode_ethernet_mac_0_example_design eth_driver_$port

  # Create the TEMAC IP
  create_bd_cell -type ip -vlnv xilinx.com:ip:tri_mode_ethernet_mac tri_mode_ethernet_mac_$port

  # If this is a shared logic port, then "Include shared logic"
  if {[lsearch -exact $shared_logic_ports $port] >= 0} {
    set_property -dict [list CONFIG.Physical_Interface {RGMII} CONFIG.SupportLevel {1}] [get_bd_cells tri_mode_ethernet_mac_$port]
    connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins tri_mode_ethernet_mac_${port}/gtx_clk]
    connect_bd_net [get_bd_pins clk_wiz_0/clk_out3] [get_bd_pins tri_mode_ethernet_mac_${port}/refclk]
  } else {
    set_property -dict [list CONFIG.Physical_Interface {RGMII} CONFIG.SupportLevel {0}] [get_bd_cells tri_mode_ethernet_mac_$port]
  }

  # Create interface connections
  connect_bd_intf_net -intf_net eth_driver_${port}_s_axi [get_bd_intf_pins eth_driver_$port/s_axi] [get_bd_intf_pins tri_mode_ethernet_mac_${port}/s_axi]
  connect_bd_intf_net -intf_net eth_driver_${port}_tx_axis_mac [get_bd_intf_pins eth_driver_$port/tx_axis_mac] [get_bd_intf_pins tri_mode_ethernet_mac_${port}/s_axis_tx]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_${port}_m_axis_rx [get_bd_intf_pins eth_driver_$port/rx_axis_mac] [get_bd_intf_pins tri_mode_ethernet_mac_${port}/m_axis_rx]

  # Create port connections
  
  # PHY connections
  # Make AXI Ethernet ports external: MDIO, RGMII and RESET
  # MDIO
  create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_io:1.0 mdio_io_port_${port}
  connect_bd_intf_net [get_bd_intf_pins tri_mode_ethernet_mac_${port}/mdio_external] [get_bd_intf_ports mdio_io_port_${port}]
  # RGMII
  create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii_port_${port}
  connect_bd_intf_net [get_bd_intf_pins tri_mode_ethernet_mac_${port}/rgmii] [get_bd_intf_ports rgmii_port_${port}]
  # RESET
  create_bd_port -dir O -type rst reset_port_${port}
  connect_bd_net [get_bd_pins /eth_driver_${port}/phy_resetn] [get_bd_ports reset_port_${port}]
  
  # External input port connections (driven by DIPs, pushbuttons)
  connect_bd_net -net chk_tx_data_1 [get_bd_ports chk_tx_data] [get_bd_pins eth_driver_$port/chk_tx_data]
  connect_bd_net -net config_board_1 [get_bd_ports config_board] [get_bd_pins eth_driver_$port/config_board]
  connect_bd_net -net gen_tx_data_1 [get_bd_ports gen_tx_data] [get_bd_pins eth_driver_$port/gen_tx_data]
  connect_bd_net -net mac_speed_1 [get_bd_ports mac_speed] [get_bd_pins eth_driver_$port/mac_speed]
  connect_bd_net -net pause_req_s_1 [get_bd_ports pause_req_s] [get_bd_pins eth_driver_$port/pause_req_s]
  connect_bd_net -net reset_error_1 [get_bd_ports reset_error] [get_bd_pins eth_driver_$port/reset_error]
  connect_bd_net -net update_speed_1 [get_bd_ports update_speed] [get_bd_pins eth_driver_$port/update_speed]
  
  # External output port connections (driven by FPGA, connect to LEDs)
  create_bd_port -dir O activity_flash_$port
  connect_bd_net -net eth_driver_${port}_activity_flash [get_bd_ports activity_flash_$port] [get_bd_pins eth_driver_$port/activity_flash]
  create_bd_port -dir O frame_error_$port
  connect_bd_net -net eth_driver_${port}_frame_error [get_bd_ports frame_error_$port] [get_bd_pins eth_driver_$port/frame_error]

  # Global reset
  connect_bd_net [get_bd_ports glbl_rst] [get_bd_pins eth_driver_$port/glbl_rst]
  connect_bd_net [get_bd_pins eth_driver_$port/glbl_rstn] [get_bd_pins tri_mode_ethernet_mac_$port/glbl_rstn]

  # Driver to TEMAC connections
  connect_bd_net -net eth_driver_${port}_pause_req [get_bd_pins eth_driver_$port/pause_req] [get_bd_pins tri_mode_ethernet_mac_${port}/pause_req]
  connect_bd_net -net eth_driver_${port}_pause_val [get_bd_pins eth_driver_$port/pause_val] [get_bd_pins tri_mode_ethernet_mac_${port}/pause_val]
  connect_bd_net -net eth_driver_${port}_rx_axi_rstn [get_bd_pins eth_driver_$port/rx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_${port}/rx_axi_rstn]
  connect_bd_net -net eth_driver_${port}_s_axi_resetn [get_bd_pins eth_driver_$port/s_axi_resetn] [get_bd_pins tri_mode_ethernet_mac_${port}/s_axi_resetn]
  connect_bd_net -net eth_driver_${port}_tx_axi_rstn [get_bd_pins eth_driver_$port/tx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_${port}/tx_axi_rstn]
  connect_bd_net -net eth_driver_${port}_tx_ifg_delay [get_bd_pins eth_driver_$port/tx_ifg_delay] [get_bd_pins tri_mode_ethernet_mac_${port}/tx_ifg_delay]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_rx_mac_aclk [get_bd_pins eth_driver_$port/rx_axis_mac_aclk] [get_bd_pins tri_mode_ethernet_mac_${port}/rx_mac_aclk]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_rx_reset [get_bd_pins eth_driver_$port/rx_reset] [get_bd_pins tri_mode_ethernet_mac_${port}/rx_reset]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_rx_statistics_valid [get_bd_pins eth_driver_$port/rx_statistics_valid] [get_bd_pins tri_mode_ethernet_mac_${port}/rx_statistics_valid]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_rx_statistics_vector [get_bd_pins eth_driver_$port/rx_statistics_vector] [get_bd_pins tri_mode_ethernet_mac_${port}/rx_statistics_vector]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_tx_mac_aclk [get_bd_pins eth_driver_$port/tx_axis_mac_aclk] [get_bd_pins tri_mode_ethernet_mac_${port}/tx_mac_aclk]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_tx_reset [get_bd_pins eth_driver_$port/tx_reset] [get_bd_pins tri_mode_ethernet_mac_${port}/tx_reset]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_tx_statistics_valid [get_bd_pins eth_driver_$port/tx_statistics_valid] [get_bd_pins tri_mode_ethernet_mac_${port}/tx_statistics_valid]
  connect_bd_net -net tri_mode_ethernet_mac_${port}_tx_statistics_vector [get_bd_pins eth_driver_$port/tx_statistics_vector] [get_bd_pins tri_mode_ethernet_mac_${port}/tx_statistics_vector]
  
  # Clocking
  connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins eth_driver_$port/dcm_locked]
  connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins eth_driver_$port/gtx_clk_bufg]
  connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins eth_driver_$port/s_axi_aclk]
  connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins tri_mode_ethernet_mac_${port}/s_axi_aclk]

  # Exclude from address map
  #exclude_bd_addr_seg [get_bd_addr_segs tri_mode_ethernet_mac_$port/s_axi/Reg] -target_address_space [get_bd_addr_spaces eth_driver_$port/s_axi]
  # Assign address
  assign_bd_address -target_address_space /eth_driver_$port/s_axi [get_bd_addr_segs tri_mode_ethernet_mac_${port}/s_axi/Reg] -force
}

set virtex_design 0

# Connect gtx_clk inputs:
#   Artix, Kintex: Connect the gtx_clk and gtx_clk90 inputs to the TEMAC with shared logic
#   Virtex: Connect the gtx_clk to the clock wizard output (gtx_clk90 does not exist for Virtex)
# We have to run this after all of the AXI Ethernet IPs are created, otherwise the shared logic port may not yet be instantiated
foreach port $ports {
  # If this is a shared logic port, clocks are already connected
  if {[lsearch -exact $shared_logic_ports $port] >= 0} {
    continue
  }
  
  # If this port is on the 1st Ethernet FMC, then use 1st shared logic port
  if {$port <= 3} {
    set shared_logic_port [lindex $shared_logic_ports 0]
    set clk_wiz_index 0
  } else {
    set shared_logic_port [lindex $shared_logic_ports 1]
    set clk_wiz_index 1
  }
  
  if {$virtex_design} {
    connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins tri_mode_ethernet_mac_$port/gtx_clk]
  } else {
    connect_bd_net [get_bd_pins tri_mode_ethernet_mac_${shared_logic_port}/gtx_clk_out] [get_bd_pins tri_mode_ethernet_mac_${port}/gtx_clk]
    connect_bd_net [get_bd_pins tri_mode_ethernet_mac_${shared_logic_port}/gtx_clk90_out] [get_bd_pins tri_mode_ethernet_mac_${port}/gtx_clk90]
  }
}

# Restore current instance
current_bd_instance $oldCurInst

save_bd_design