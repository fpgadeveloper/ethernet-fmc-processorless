# Enable internal termination resistor on LVDS 125MHz ref_clk
set_property DIFF_TERM_ADV TERM_100 [get_ports ref_clk_clk_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports ref_clk_clk_n]

# Define I/O standards
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_0_io]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ref_clk_fsel[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_1_io]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_3_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_3_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_0_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports reset_port_0]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ref_clk_oe[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_1_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_2_io]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_td[3]}]
set_property IOSTANDARD LVDS [get_ports ref_clk_clk_p]
set_property IOSTANDARD LVDS [get_ports ref_clk_clk_n]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_txc]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_txc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports reset_port_1]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_txc]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_2_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports reset_port_2]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_3_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_3_txc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_3_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_3_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_3_io]
set_property IOSTANDARD LVCMOS18 [get_ports reset_port_3]

set_property PACKAGE_PIN D13 [get_ports {rgmii_port_1_rd[0]}]
set_property PACKAGE_PIN C13 [get_ports mdio_io_port_0_io]
set_property PACKAGE_PIN K8 [get_ports {rgmii_port_1_rd[2]}]
set_property PACKAGE_PIN B10 [get_ports {ref_clk_fsel[0]}]
set_property PACKAGE_PIN A10 [get_ports mdio_io_port_1_io]
set_property PACKAGE_PIN E22 [get_ports rgmii_port_3_rxc]
set_property PACKAGE_PIN E23 [get_ports rgmii_port_3_rx_ctl]
set_property PACKAGE_PIN H21 [get_ports {rgmii_port_3_rd[1]}]
set_property PACKAGE_PIN G21 [get_ports {rgmii_port_3_rd[3]}]
set_property PACKAGE_PIN G9 [get_ports rgmii_port_1_rxc]
set_property PACKAGE_PIN F9 [get_ports rgmii_port_1_rx_ctl]
set_property PACKAGE_PIN L13 [get_ports mdio_io_port_0_mdc]
set_property PACKAGE_PIN K13 [get_ports reset_port_0]
set_property PACKAGE_PIN J9 [get_ports {rgmii_port_1_rd[1]}]
set_property PACKAGE_PIN H9 [get_ports {rgmii_port_1_rd[3]}]
set_property PACKAGE_PIN D9 [get_ports {ref_clk_oe[0]}]
set_property PACKAGE_PIN C9 [get_ports mdio_io_port_1_mdc]
set_property PACKAGE_PIN D24 [get_ports rgmii_port_2_rxc]
set_property PACKAGE_PIN G22 [get_ports {rgmii_port_2_rd[2]}]
set_property PACKAGE_PIN F22 [get_ports {rgmii_port_2_rd[3]}]
set_property PACKAGE_PIN G20 [get_ports {rgmii_port_3_rd[0]}]
set_property PACKAGE_PIN F20 [get_ports {rgmii_port_3_rd[2]}]
set_property PACKAGE_PIN H11 [get_ports rgmii_port_0_rxc]
set_property PACKAGE_PIN G11 [get_ports rgmii_port_0_rx_ctl]
set_property PACKAGE_PIN A13 [get_ports {rgmii_port_0_rd[2]}]
set_property PACKAGE_PIN A12 [get_ports {rgmii_port_0_rd[3]}]
set_property PACKAGE_PIN J8 [get_ports {rgmii_port_0_td[1]}]
set_property PACKAGE_PIN H8 [get_ports {rgmii_port_0_td[2]}]
set_property PACKAGE_PIN D10 [get_ports {rgmii_port_1_td[0]}]
set_property PACKAGE_PIN B9 [get_ports {rgmii_port_1_td[2]}]
set_property PACKAGE_PIN A9 [get_ports {rgmii_port_1_td[3]}]
set_property PACKAGE_PIN B24 [get_ports rgmii_port_2_rx_ctl]
set_property PACKAGE_PIN A24 [get_ports {rgmii_port_2_rd[0]}]
set_property PACKAGE_PIN G24 [get_ports {rgmii_port_2_td[1]}]
set_property PACKAGE_PIN F25 [get_ports {rgmii_port_2_td[2]}]
set_property PACKAGE_PIN D20 [get_ports rgmii_port_2_tx_ctl]
set_property PACKAGE_PIN D21 [get_ports mdio_io_port_2_io]
set_property PACKAGE_PIN A20 [get_ports {rgmii_port_3_td[0]}]
set_property PACKAGE_PIN B25 [get_ports {rgmii_port_3_td[2]}]
set_property PACKAGE_PIN A25 [get_ports {rgmii_port_3_td[3]}]
set_property PACKAGE_PIN H12 [get_ports ref_clk_clk_p]
set_property PACKAGE_PIN G12 [get_ports ref_clk_clk_n]
set_property PACKAGE_PIN K10 [get_ports {rgmii_port_0_rd[0]}]
set_property PACKAGE_PIN J10 [get_ports {rgmii_port_0_rd[1]}]
set_property PACKAGE_PIN L12 [get_ports {rgmii_port_0_td[0]}]
set_property PACKAGE_PIN K12 [get_ports rgmii_port_0_txc]
set_property PACKAGE_PIN F8 [get_ports {rgmii_port_0_td[3]}]
set_property PACKAGE_PIN E8 [get_ports rgmii_port_0_tx_ctl]
set_property PACKAGE_PIN K11 [get_ports {rgmii_port_1_td[1]}]
set_property PACKAGE_PIN J11 [get_ports rgmii_port_1_txc]
set_property PACKAGE_PIN D8 [get_ports rgmii_port_1_tx_ctl]
set_property PACKAGE_PIN C8 [get_ports reset_port_1]
set_property PACKAGE_PIN C21 [get_ports {rgmii_port_2_rd[1]}]
set_property PACKAGE_PIN C22 [get_ports {rgmii_port_2_td[0]}]
set_property PACKAGE_PIN F23 [get_ports rgmii_port_2_txc]
set_property PACKAGE_PIN F24 [get_ports {rgmii_port_2_td[3]}]
set_property PACKAGE_PIN E20 [get_ports mdio_io_port_2_mdc]
set_property PACKAGE_PIN E21 [get_ports reset_port_2]
set_property PACKAGE_PIN B21 [get_ports {rgmii_port_3_td[1]}]
set_property PACKAGE_PIN B22 [get_ports rgmii_port_3_txc]
set_property PACKAGE_PIN C26 [get_ports rgmii_port_3_tx_ctl]
set_property PACKAGE_PIN B26 [get_ports mdio_io_port_3_mdc]
set_property PACKAGE_PIN E26 [get_ports mdio_io_port_3_io]
set_property PACKAGE_PIN D26 [get_ports reset_port_3]

#create_clock -period 8.000 -name ref_clk_p -waveform {0.000 4.000} [get_ports ref_clk_p]

# Global reset (CPU_RESET pushbutton)
set_property PACKAGE_PIN AN8      [get_ports glbl_rst]
set_property IOSTANDARD  LVCMOS18 [get_ports glbl_rst]
set_false_path -from [get_ports glbl_rst]

#### Module LEDs_8Bit constraints
set_property PACKAGE_PIN AP8      [get_ports frame_error_0]
set_property PACKAGE_PIN H23      [get_ports activity_flash_0]
set_property PACKAGE_PIN P20      [get_ports frame_error_1]
set_property PACKAGE_PIN P21      [get_ports activity_flash_1]
set_property PACKAGE_PIN N22      [get_ports frame_error_2]
set_property PACKAGE_PIN M22      [get_ports activity_flash_2]
set_property PACKAGE_PIN R23      [get_ports frame_error_3]
set_property PACKAGE_PIN P23      [get_ports activity_flash_3]
set_property IOSTANDARD  LVCMOS18 [get_ports frame_error_0]
set_property IOSTANDARD  LVCMOS18 [get_ports activity_flash_0]
set_property IOSTANDARD  LVCMOS18 [get_ports frame_error_1]
set_property IOSTANDARD  LVCMOS18 [get_ports activity_flash_1]
set_property IOSTANDARD  LVCMOS18 [get_ports frame_error_2]
set_property IOSTANDARD  LVCMOS18 [get_ports activity_flash_2]
set_property IOSTANDARD  LVCMOS18 [get_ports frame_error_3]
set_property IOSTANDARD  LVCMOS18 [get_ports activity_flash_3]

#### Module Push_Buttons_4Bit constraints
# CENTER: update_speed
# WEST:   config_board
# SOUTH:  pause_req_s
# NORTH:  reset_error
# EAST:   NOT USED
set_property PACKAGE_PIN AE10     [get_ports update_speed]
set_property PACKAGE_PIN AF9      [get_ports config_board]
set_property PACKAGE_PIN AF8      [get_ports pause_req_s]
set_property PACKAGE_PIN AD10     [get_ports reset_error]
#set_property PACKAGE_PIN AE8      [get_ports NOT_USED]
set_property IOSTANDARD  LVCMOS18 [get_ports update_speed]
set_property IOSTANDARD  LVCMOS18 [get_ports config_board]
set_property IOSTANDARD  LVCMOS18 [get_ports pause_req_s]
set_property IOSTANDARD  LVCMOS18 [get_ports reset_error]
#set_property IOSTANDARD  LVCMOS18 [get_ports NOT_USED]

#### Module DIP_Switches_4Bit constraints
set_property PACKAGE_PIN AN16     [get_ports mac_speed[0]]
set_property PACKAGE_PIN AN19     [get_ports mac_speed[1]]
set_property PACKAGE_PIN AP18     [get_ports gen_tx_data]
set_property PACKAGE_PIN AN14     [get_ports chk_tx_data]
set_property IOSTANDARD  LVCMOS12 [get_ports mac_speed[0]]
set_property IOSTANDARD  LVCMOS12 [get_ports mac_speed[1]]
set_property IOSTANDARD  LVCMOS12 [get_ports gen_tx_data]
set_property IOSTANDARD  LVCMOS12 [get_ports chk_tx_data]

#
####
#######
##########
#############
#################
#EXAMPLE DESIGN CONSTRAINTS

############################################################
# Clock Period Constraints                                 #
############################################################

############################################################
# Input Delay constraints
############################################################
# these inputs are alll from either dip switchs or push buttons
# and therefore have no timing associated with them
set_false_path -from [get_ports config_board]
set_false_path -from [get_ports pause_req_s]
set_false_path -from [get_ports reset_error]
set_false_path -from [get_ports mac_speed[0]]
set_false_path -from [get_ports mac_speed[1]]
set_false_path -from [get_ports gen_tx_data]
set_false_path -from [get_ports chk_tx_data]

# no timing requirements but want the capture flops close to the IO
#set_max_delay -from [get_ports update_speed] 4 -datapath_only


# Ignore pause deserialiser as only present to prevent logic stripping
set_false_path -from [get_ports pause_req*]
set_false_path -from [get_cells pause_req* -filter {IS_SEQUENTIAL}]
set_false_path -from [get_cells pause_val* -filter {IS_SEQUENTIAL}]


############################################################
# Output Delay constraints
############################################################

set_false_path -to [get_ports frame_error_0]
set_false_path -to [get_ports frame_error_1]
set_false_path -to [get_ports frame_error_2]
set_false_path -to [get_ports frame_error_3]
#set_false_path -to [get_ports frame_errorn]
#set_false_path -to [get_ports serial_response]
#set_false_path -to [get_ports tx_statistics_s]
#set_false_path -to [get_ports rx_statistics_s]
set_output_delay -clock $axi_clk_name 1 [get_ports mdio_io_port_0_mdc]

# no timing associated with output
set_false_path -from [get_cells -hier -filter {name =~ *phy_resetn_int_reg}] -to [get_ports reset_port_0]

############################################################
# Example design Clock Crossing Constraints                          #
############################################################
set_false_path -from [get_cells -hier -filter {name =~ *phy_resetn_int_reg}] -to [get_cells -hier -filter {name =~ *axi_lite_reset_gen/reset_sync*}]


# control signal is synched over clock boundary separately
set_false_path -from [get_cells -hier -filter {name =~ tx_stats_reg[*]}] -to [get_cells -hier -filter {name =~ tx_stats_shift_reg[*]}]
set_false_path -from [get_cells -hier -filter {name =~ rx_stats_reg[*]}] -to [get_cells -hier -filter {name =~ rx_stats_shift_reg[*]}]



############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/reset_sync.*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ D} -of [get_cells -regexp {.*\/.*_sync.*}]]
set_max_delay -from [get_cells tx_stats_toggle_reg] -to [get_cells tx_stats_sync/data_sync_reg0] 6 -datapath_only
set_max_delay -from [get_cells rx_stats_toggle_reg] -to [get_cells rx_stats_sync/data_sync_reg0] 6 -datapath_only



#
####
#######
##########
#############
#################
#FIFO BLOCK CONSTRAINTS

############################################################
# FIFO Clock Crossing Constraints                          #
############################################################

# control signal is synched separately so this is a false path
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/rd_addr_reg[*]}]                         -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/wr_store_frame_tog_reg}]                 -to [get_cells -hier -filter {name =~ *fifo_i/resync_wr_store_frame_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/update_addr_tog_reg}]                    -to [get_cells -hier -filter {name =~ *rx_fifo_i/sync_rd_addr_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_addr_txfer_reg[*]}]                   -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frame_in_fifo_reg}]                   -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frame_in_fifo/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frames_in_fifo_reg}]                  -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frames_in_fifo/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/frame_in_fifo_valid_tog_reg}]            -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_fif_valid_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_txfer_tog_reg}]                       -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_txfer_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_tran_frame_tog_reg}]                  -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_tran_frame_tog/data_sync_reg0}] 3.2 -datapath_only

set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]

#####################################
### CDC Waivers
#####################################
create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "This data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored." -from [get_pins {*x_stats_reg[*]/C}] -to [get_pins {*x_stats_shift_reg[*]/D}]

create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Can be safely ignored. These Control signals are inputs from board DIP switches and are expected to be static during MAC operations and thus a false path for all practical purposes." -from [get_ports gen_tx_data]

create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Can be safely ignored. These Control signals are inputs from board DIP switches and are expected to be static during MAC operations and thus a false path for all practical purposes." -from [get_ports pause_req_*]

create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Can be safely ignored. These Control signals are inputs from board DIP switches and are expected to be static during MAC operations and thus a false path for all practical purposes." -from [get_ports config_board] -to [list [get_pins enable_address_swap_reg/CE] [get_pins enable_phy_loopback_reg/CE] ] 
create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "This data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored." -from [get_pins pause_req_reg/C]
create_waiver -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */*_speed_reg[1]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */data_sync_reg0*}] -filter {name =~ *D}]
create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored." -from [get_pins {config_vector_controller/tx_speed_reg[1]/C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */gmii_mii_rx_gen/alignment_err_reg_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */gmii_mii_rx_gen/rx_dv_reg3_reg*}] -filter {name =~ *D}] ]
create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Can be safely ignored. These Control signals are inputs from board DIP switches and are expected to be static during MAC operations and thus a false path for all practical purposes." -from [get_ports {mac_speed[*]}] -to [list [get_pins {axi_lite_controller/speed_reg[*]/D}] [get_pins  -of [get_cells -hier -filter {name =~ */axi_pat_gen_inst/add_credit_reg*}] -filter {name =~ *D}] [get_pins {config_vector_controller/tx_speed_reg[*]/D}] ]
create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Can be safely ignored. These Control signals are inputs from board DIP switches and are expected to be static during MAC operations and thus a false path for all practical purposes." -from [get_ports chk_tx_data]

create_waiver -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins example_resets/phy_resetn_int_reg/C] -to [get_pins example_resets/axi_lite_reset_gen/reset_sync*/CE]
create_waiver -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins example_resets/phy_resetn_int_reg/C] -to [get_pins example_resets/axi_lite_reset_gen/reset_sync*/CE]
create_waiver -quiet -type CDC -id {CDC-10} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins example_resets/glbl_reset_gen/reset_sync4/C] -to [get_pins -of [get_cells -hier -filter {name =~ */idelayctrl_reset_gen/reset_sync0*}] -filter {name =~ *PRE}]


create_waiver -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins example_resets/glbl_reset_gen/reset_sync4/C] -to [list [get_pins -of [get_cells -hier -filter {name =~ */sync_glbl_rstn_tx_clk/async_rst0_reg*}] -filter {name =~ *CLR}] [get_pins -of [get_cells -hier -filter {name =~ */sync_stats_reset/async_rst0_reg*}] -filter {name =~ *PRE}] ]

# The port mdio_io_port_3_mdio_io is assigned to a PACKAGE_PIN that uses BITSLICE_0
# of a Byte that will be using calibration. The signal connected to mdio_io_port_3_io
# will not be available during calibration and will only be available after RDY asserts.
# If this condition is not acceptable for your design and board layout,
# mdio_io_port_3_mdio_io will have to be moved to another PACKAGE_PIN that is not
# undergoing calibration or be moved to a PACKAGE_PIN location that is not BITSLICE_0 or
# BITSLICE_6 on that same Byte. If this condition is acceptable for your design and board
# layout, this DRC can be bypassed by acknowledging the condition and setting the following
# XDC constraint:
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports mdio_io_port_3_io]

# Configuration via Quad SPI settings for KCU105
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
