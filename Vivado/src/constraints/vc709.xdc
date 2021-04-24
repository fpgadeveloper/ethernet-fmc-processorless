# Enable internal termination resistor on LVDS 125MHz ref_clk
set_property DIFF_TERM TRUE [get_ports ref_clk_clk_p]
set_property DIFF_TERM TRUE [get_ports ref_clk_clk_n]

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

set_property PACKAGE_PIN K42 [get_ports {rgmii_port_1_rd[0]}]
set_property PACKAGE_PIN J42 [get_ports mdio_io_port_0_io]
set_property PACKAGE_PIN M39 [get_ports {rgmii_port_1_rd[2]}]
set_property PACKAGE_PIN N39 [get_ports {ref_clk_fsel[0]}]
set_property PACKAGE_PIN N40 [get_ports mdio_io_port_1_io]
set_property PACKAGE_PIN M32 [get_ports rgmii_port_3_rxc]
set_property PACKAGE_PIN L32 [get_ports rgmii_port_3_rx_ctl]
set_property PACKAGE_PIN J31 [get_ports {rgmii_port_3_rd[1]}]
set_property PACKAGE_PIN H31 [get_ports {rgmii_port_3_rd[3]}]
set_property PACKAGE_PIN J40 [get_ports rgmii_port_1_rxc]
set_property PACKAGE_PIN J41 [get_ports rgmii_port_1_rx_ctl]
set_property PACKAGE_PIN M41 [get_ports mdio_io_port_0_mdc]
set_property PACKAGE_PIN L41 [get_ports reset_port_0]
set_property PACKAGE_PIN R42 [get_ports {rgmii_port_1_rd[1]}]
set_property PACKAGE_PIN P42 [get_ports {rgmii_port_1_rd[3]}]
set_property PACKAGE_PIN H39 [get_ports {ref_clk_oe[0]}]
set_property PACKAGE_PIN G39 [get_ports mdio_io_port_1_mdc]
set_property PACKAGE_PIN L31 [get_ports rgmii_port_2_rxc]
set_property PACKAGE_PIN P30 [get_ports {rgmii_port_2_rd[2]}]
set_property PACKAGE_PIN N31 [get_ports {rgmii_port_2_rd[3]}]
set_property PACKAGE_PIN J30 [get_ports {rgmii_port_3_rd[0]}]
set_property PACKAGE_PIN H30 [get_ports {rgmii_port_3_rd[2]}]
set_property PACKAGE_PIN K39 [get_ports rgmii_port_0_rxc]
set_property PACKAGE_PIN K40 [get_ports rgmii_port_0_rx_ctl]
set_property PACKAGE_PIN M42 [get_ports {rgmii_port_0_rd[2]}]
set_property PACKAGE_PIN L42 [get_ports {rgmii_port_0_rd[3]}]
set_property PACKAGE_PIN M37 [get_ports {rgmii_port_0_td[1]}]
set_property PACKAGE_PIN M38 [get_ports {rgmii_port_0_td[2]}]
set_property PACKAGE_PIN P40 [get_ports {rgmii_port_1_td[0]}]
set_property PACKAGE_PIN K37 [get_ports {rgmii_port_1_td[2]}]
set_property PACKAGE_PIN K38 [get_ports {rgmii_port_1_td[3]}]
set_property PACKAGE_PIN Y29 [get_ports rgmii_port_2_rx_ctl]
set_property PACKAGE_PIN Y30 [get_ports {rgmii_port_2_rd[0]}]
set_property PACKAGE_PIN R28 [get_ports {rgmii_port_2_td[1]}]
set_property PACKAGE_PIN P28 [get_ports {rgmii_port_2_td[2]}]
set_property PACKAGE_PIN K29 [get_ports rgmii_port_2_tx_ctl]
set_property PACKAGE_PIN K30 [get_ports mdio_io_port_2_io]
set_property PACKAGE_PIN T30 [get_ports {rgmii_port_3_td[0]}]
set_property PACKAGE_PIN M28 [get_ports {rgmii_port_3_td[2]}]
set_property PACKAGE_PIN M29 [get_ports {rgmii_port_3_td[3]}]
set_property PACKAGE_PIN L39 [get_ports ref_clk_clk_p]
set_property PACKAGE_PIN L40 [get_ports ref_clk_clk_n]
set_property PACKAGE_PIN P41 [get_ports {rgmii_port_0_rd[0]}]
set_property PACKAGE_PIN N41 [get_ports {rgmii_port_0_rd[1]}]
set_property PACKAGE_PIN H40 [get_ports {rgmii_port_0_td[0]}]
set_property PACKAGE_PIN H41 [get_ports rgmii_port_0_txc]
set_property PACKAGE_PIN G41 [get_ports {rgmii_port_0_td[3]}]
set_property PACKAGE_PIN G42 [get_ports rgmii_port_0_tx_ctl]
set_property PACKAGE_PIN F40 [get_ports {rgmii_port_1_td[1]}]
set_property PACKAGE_PIN F41 [get_ports rgmii_port_1_txc]
set_property PACKAGE_PIN M36 [get_ports rgmii_port_1_tx_ctl]
set_property PACKAGE_PIN L37 [get_ports reset_port_1]
set_property PACKAGE_PIN W30 [get_ports {rgmii_port_2_rd[1]}]
set_property PACKAGE_PIN W31 [get_ports {rgmii_port_2_td[0]}]
set_property PACKAGE_PIN N28 [get_ports rgmii_port_2_txc]
set_property PACKAGE_PIN N29 [get_ports {rgmii_port_2_td[3]}]
set_property PACKAGE_PIN R30 [get_ports mdio_io_port_2_mdc]
set_property PACKAGE_PIN P31 [get_ports reset_port_2]
set_property PACKAGE_PIN L29 [get_ports {rgmii_port_3_td[1]}]
set_property PACKAGE_PIN L30 [get_ports rgmii_port_3_txc]
set_property PACKAGE_PIN V30 [get_ports rgmii_port_3_tx_ctl]
set_property PACKAGE_PIN V31 [get_ports mdio_io_port_3_mdc]
set_property PACKAGE_PIN V29 [get_ports mdio_io_port_3_io]
set_property PACKAGE_PIN U29 [get_ports reset_port_3]

#create_clock -period 8.000 -name ref_clk_clk_p -waveform {0.000 4.000} [get_ports ref_clk_clk_p]

# Global reset (CPU_RESET pushbutton)
set_property PACKAGE_PIN AV40     [get_ports glbl_rst]
set_property IOSTANDARD  LVCMOS18 [get_ports glbl_rst]
set_false_path -from [get_ports glbl_rst]

#### Module LEDs_8Bit constraints
set_property PACKAGE_PIN AM39     [get_ports frame_error_0]
set_property PACKAGE_PIN AN39     [get_ports activity_flash_0]
set_property PACKAGE_PIN AR37     [get_ports frame_error_1]
set_property PACKAGE_PIN AT37     [get_ports activity_flash_1]
set_property PACKAGE_PIN AR35     [get_ports frame_error_2]
set_property PACKAGE_PIN AP41     [get_ports activity_flash_2]
set_property PACKAGE_PIN AP42     [get_ports frame_error_3]
set_property PACKAGE_PIN AU39     [get_ports activity_flash_3]
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
set_property PACKAGE_PIN AV39     [get_ports update_speed]
set_property PACKAGE_PIN AW40     [get_ports config_board]
set_property PACKAGE_PIN AP40     [get_ports pause_req_s]
set_property PACKAGE_PIN AR40     [get_ports reset_error]
#set_property PACKAGE_PIN AU38     [get_ports NOT_USED]
set_property IOSTANDARD  LVCMOS18 [get_ports update_speed]
set_property IOSTANDARD  LVCMOS18 [get_ports config_board]
set_property IOSTANDARD  LVCMOS18 [get_ports pause_req_s]
set_property IOSTANDARD  LVCMOS18 [get_ports reset_error]
#set_property IOSTANDARD  LVCMOS18 [get_ports NOT_USED]

#### Module DIP_Switches_8Bit constraints
# VC709 has 8-bit DIP switch but we only use first 4 bits
# Unused DIPs 4,5,6,7 are connected to pins AW30, AY30, BA30, BB31
set_property PACKAGE_PIN AV30     [get_ports mac_speed[0]]
set_property PACKAGE_PIN AY33     [get_ports mac_speed[1]]
set_property PACKAGE_PIN BA31     [get_ports gen_tx_data]
set_property PACKAGE_PIN BA32     [get_ports chk_tx_data]
set_property IOSTANDARD  LVCMOS18 [get_ports mac_speed[0]]
set_property IOSTANDARD  LVCMOS18 [get_ports mac_speed[1]]
set_property IOSTANDARD  LVCMOS18 [get_ports gen_tx_data]
set_property IOSTANDARD  LVCMOS18 [get_ports chk_tx_data]

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
set_false_path -from [get_cells *_i/eth_driver_*/inst/pause_req* -filter {IS_SEQUENTIAL}]
set_false_path -from [get_cells *_i/eth_driver_*/inst/pause_val* -filter {IS_SEQUENTIAL}]


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
set axi_clk_name [get_clocks clk_out2_*_clk_wiz_0_0]
set_output_delay -clock $axi_clk_name 1 [get_ports mdio_io_port_*_mdc]

# no timing associated with output
set_false_path -from [get_cells -hier -filter {name =~ *phy_resetn_int_reg}] -to [get_ports reset_port_0]

############################################################
# Example design Clock Crossing Constraints                          #
############################################################
set_false_path -from [get_cells -hier -filter {name =~ *phy_resetn_int_reg}] -to [get_cells -hier -filter {name =~ *axi_lite_reset_gen/reset_sync*}]

############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/reset_sync.*}]]

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

# Configuration via BPI flash for VC709
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE DISABLE [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN DISABLE [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CONFIG_MODE BPI16 [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

