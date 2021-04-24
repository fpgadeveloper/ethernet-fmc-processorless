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

set_property PACKAGE_PIN BD13 [get_ports {rgmii_port_1_rd[0]}]
set_property PACKAGE_PIN BE13 [get_ports mdio_io_port_0_io]
set_property PACKAGE_PIN BB12 [get_ports {rgmii_port_1_rd[2]}]
set_property PACKAGE_PIN AW8 [get_ports {ref_clk_fsel[0]}]
set_property PACKAGE_PIN AW7 [get_ports mdio_io_port_1_io]
set_property PACKAGE_PIN AP12 [get_ports rgmii_port_3_rxc]
set_property PACKAGE_PIN AR12 [get_ports rgmii_port_3_rx_ctl]
set_property PACKAGE_PIN AL14 [get_ports {rgmii_port_3_rd[1]}]
set_property PACKAGE_PIN AM14 [get_ports {rgmii_port_3_rd[3]}]
set_property PACKAGE_PIN BF10 [get_ports rgmii_port_1_rxc]
set_property PACKAGE_PIN BF9 [get_ports rgmii_port_1_rx_ctl]
set_property PACKAGE_PIN BE14 [get_ports mdio_io_port_0_mdc]
set_property PACKAGE_PIN BF14 [get_ports reset_port_0]
set_property PACKAGE_PIN BA14 [get_ports {rgmii_port_1_rd[1]}]
set_property PACKAGE_PIN BB14 [get_ports {rgmii_port_1_rd[3]}]
set_property PACKAGE_PIN AY8 [get_ports {ref_clk_oe[0]}]
set_property PACKAGE_PIN AY7 [get_ports mdio_io_port_1_mdc]
set_property PACKAGE_PIN AR14 [get_ports rgmii_port_2_rxc]
set_property PACKAGE_PIN AN16 [get_ports {rgmii_port_2_rd[2]}]
set_property PACKAGE_PIN AP16 [get_ports {rgmii_port_2_rd[3]}]
set_property PACKAGE_PIN AK15 [get_ports {rgmii_port_3_rd[0]}]
set_property PACKAGE_PIN AL15 [get_ports {rgmii_port_3_rd[2]}]
set_property PACKAGE_PIN AY9 [get_ports rgmii_port_0_rxc]
set_property PACKAGE_PIN BA9 [get_ports rgmii_port_0_rx_ctl]
set_property PACKAGE_PIN BD12 [get_ports {rgmii_port_0_rd[2]}]
set_property PACKAGE_PIN BE12 [get_ports {rgmii_port_0_rd[3]}]
set_property PACKAGE_PIN BE15 [get_ports {rgmii_port_0_td[1]}]
set_property PACKAGE_PIN BF15 [get_ports {rgmii_port_0_td[2]}]
set_property PACKAGE_PIN BC13 [get_ports {rgmii_port_1_td[0]}]
set_property PACKAGE_PIN AV9 [get_ports {rgmii_port_1_td[2]}]
set_property PACKAGE_PIN AV8 [get_ports {rgmii_port_1_td[3]}]
set_property PACKAGE_PIN AW11 [get_ports rgmii_port_2_rx_ctl]
set_property PACKAGE_PIN AY10 [get_ports {rgmii_port_2_rd[0]}]
set_property PACKAGE_PIN AW13 [get_ports {rgmii_port_2_td[1]}]
set_property PACKAGE_PIN AY13 [get_ports {rgmii_port_2_td[2]}]
set_property PACKAGE_PIN AT12 [get_ports rgmii_port_2_tx_ctl]
set_property PACKAGE_PIN AU12 [get_ports mdio_io_port_2_io]
set_property PACKAGE_PIN AP15 [get_ports {rgmii_port_3_td[0]}]
set_property PACKAGE_PIN AM13 [get_ports {rgmii_port_3_td[2]}]
set_property PACKAGE_PIN AM12 [get_ports {rgmii_port_3_td[3]}]
set_property PACKAGE_PIN BC9 [get_ports ref_clk_clk_p]
set_property PACKAGE_PIN BC8 [get_ports ref_clk_clk_n]
set_property PACKAGE_PIN BC11 [get_ports {rgmii_port_0_rd[0]}]
set_property PACKAGE_PIN BD11 [get_ports {rgmii_port_0_rd[1]}]
set_property PACKAGE_PIN BF12 [get_ports {rgmii_port_0_td[0]}]
set_property PACKAGE_PIN BF11 [get_ports rgmii_port_0_txc]
set_property PACKAGE_PIN BC15 [get_ports {rgmii_port_0_td[3]}]
set_property PACKAGE_PIN BD15 [get_ports rgmii_port_0_tx_ctl]
set_property PACKAGE_PIN BA16 [get_ports {rgmii_port_1_td[1]}]
set_property PACKAGE_PIN BA15 [get_ports rgmii_port_1_txc]
set_property PACKAGE_PIN BB16 [get_ports rgmii_port_1_tx_ctl]
set_property PACKAGE_PIN BC16 [get_ports reset_port_1]
set_property PACKAGE_PIN AW12 [get_ports {rgmii_port_2_rd[1]}]
set_property PACKAGE_PIN AY12 [get_ports {rgmii_port_2_td[0]}]
set_property PACKAGE_PIN AU11 [get_ports rgmii_port_2_txc]
set_property PACKAGE_PIN AV11 [get_ports {rgmii_port_2_td[3]}]
set_property PACKAGE_PIN AP13 [get_ports mdio_io_port_2_mdc]
set_property PACKAGE_PIN AR13 [get_ports reset_port_2]
set_property PACKAGE_PIN AV10 [get_ports {rgmii_port_3_td[1]}]
set_property PACKAGE_PIN AW10 [get_ports rgmii_port_3_txc]
set_property PACKAGE_PIN AK12 [get_ports rgmii_port_3_tx_ctl]
set_property PACKAGE_PIN AL12 [get_ports mdio_io_port_3_mdc]
set_property PACKAGE_PIN AJ13 [get_ports mdio_io_port_3_io]
set_property PACKAGE_PIN AJ12 [get_ports reset_port_3]

# Global reset (CPU_RESET pushbutton)
set_property PACKAGE_PIN L19      [get_ports glbl_rst]
set_property IOSTANDARD  LVCMOS12 [get_ports glbl_rst]
set_false_path -from [get_ports glbl_rst]

#### Module LEDs_8Bit constraints
set_property PACKAGE_PIN AT32     [get_ports frame_error_0]
set_property PACKAGE_PIN AV34     [get_ports activity_flash_0]
set_property PACKAGE_PIN AY30     [get_ports frame_error_1]
set_property PACKAGE_PIN BB32     [get_ports activity_flash_1]
set_property PACKAGE_PIN BF32     [get_ports frame_error_2]
set_property PACKAGE_PIN AU37     [get_ports activity_flash_2]
set_property PACKAGE_PIN AV36     [get_ports frame_error_3]
set_property PACKAGE_PIN BA37     [get_ports activity_flash_3]
set_property IOSTANDARD  LVCMOS12 [get_ports frame_error_0]
set_property IOSTANDARD  LVCMOS12 [get_ports activity_flash_0]
set_property IOSTANDARD  LVCMOS12 [get_ports frame_error_1]
set_property IOSTANDARD  LVCMOS12 [get_ports activity_flash_1]
set_property IOSTANDARD  LVCMOS12 [get_ports frame_error_2]
set_property IOSTANDARD  LVCMOS12 [get_ports activity_flash_2]
set_property IOSTANDARD  LVCMOS12 [get_ports frame_error_3]
set_property IOSTANDARD  LVCMOS12 [get_ports activity_flash_3]

#### Module Push_Buttons_4Bit constraints
# CENTER: update_speed
# WEST:   config_board
# SOUTH:  pause_req_s
# NORTH:  reset_error
# EAST:   NOT USED
set_property PACKAGE_PIN BD23     [get_ports update_speed]
set_property PACKAGE_PIN BF22     [get_ports config_board]
set_property PACKAGE_PIN BE22     [get_ports pause_req_s]
set_property PACKAGE_PIN BB24     [get_ports reset_error]
#set_property PACKAGE_PIN BE23     [get_ports NOT_USED]
set_property IOSTANDARD  LVCMOS18 [get_ports update_speed]
set_property IOSTANDARD  LVCMOS18 [get_ports config_board]
set_property IOSTANDARD  LVCMOS18 [get_ports pause_req_s]
set_property IOSTANDARD  LVCMOS18 [get_ports reset_error]
#set_property IOSTANDARD  LVCMOS18 [get_ports NOT_USED]

#### Module DIP_Switches_4Bit constraints
set_property PACKAGE_PIN B17      [get_ports mac_speed[0]]
set_property PACKAGE_PIN G16      [get_ports mac_speed[1]]
set_property PACKAGE_PIN J16      [get_ports gen_tx_data]
set_property PACKAGE_PIN D21      [get_ports chk_tx_data]
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


# BPI flash physical constraints for VCU118

#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[0]]
#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[1]]
#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[2]]
#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[3]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[4]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[5]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[6]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[7]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[8]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[9]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[10]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[11]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[12]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[13]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[14]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[15]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[0]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[1]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[2]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[3]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[4]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[5]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[6]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[7]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[8]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[9]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[10]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[11]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[12]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[13]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[14]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[15]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[16]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[17]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[18]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[19]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[20]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[21]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[22]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[23]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[24]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[25]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_adv_ldn]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_we_n]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_oe_n]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_wait[0]]


#set_property PACKAGE_PIN AP11 [get_ports Linear_Flash_dq_io[0]]
#set_property PACKAGE_PIN AN11 [get_ports Linear_Flash_dq_io[1]]
#set_property PACKAGE_PIN AM11 [get_ports Linear_Flash_dq_io[2]]
#set_property PACKAGE_PIN AL11 [get_ports Linear_Flash_dq_io[3]]
set_property PACKAGE_PIN AM19 [get_ports Linear_Flash_dq_io[4]]
set_property PACKAGE_PIN AM18 [get_ports Linear_Flash_dq_io[5]]
set_property PACKAGE_PIN AN20 [get_ports Linear_Flash_dq_io[6]]
set_property PACKAGE_PIN AP20 [get_ports Linear_Flash_dq_io[7]]
set_property PACKAGE_PIN AN19 [get_ports Linear_Flash_dq_io[8]]
set_property PACKAGE_PIN AN18 [get_ports Linear_Flash_dq_io[9]]
set_property PACKAGE_PIN AR18 [get_ports Linear_Flash_dq_io[10]]
set_property PACKAGE_PIN AR17 [get_ports Linear_Flash_dq_io[11]]
set_property PACKAGE_PIN AT20 [get_ports Linear_Flash_dq_io[12]]
set_property PACKAGE_PIN AT19 [get_ports Linear_Flash_dq_io[13]]
set_property PACKAGE_PIN AT17 [get_ports Linear_Flash_dq_io[14]]
set_property PACKAGE_PIN AU17 [get_ports Linear_Flash_dq_io[15]]
set_property PACKAGE_PIN AR20 [get_ports Linear_Flash_address[0]]
set_property PACKAGE_PIN AR19 [get_ports Linear_Flash_address[1]]
set_property PACKAGE_PIN AV20 [get_ports Linear_Flash_address[2]]
set_property PACKAGE_PIN AW20 [get_ports Linear_Flash_address[3]]
set_property PACKAGE_PIN AU19 [get_ports Linear_Flash_address[4]]
set_property PACKAGE_PIN AU18 [get_ports Linear_Flash_address[5]]
set_property PACKAGE_PIN AV19 [get_ports Linear_Flash_address[6]]
set_property PACKAGE_PIN AV18 [get_ports Linear_Flash_address[7]]
set_property PACKAGE_PIN AW18 [get_ports Linear_Flash_address[8]]
set_property PACKAGE_PIN AY18 [get_ports Linear_Flash_address[9]]
set_property PACKAGE_PIN AY19 [get_ports Linear_Flash_address[10]]
set_property PACKAGE_PIN BA19 [get_ports Linear_Flash_address[11]]
set_property PACKAGE_PIN BA17 [get_ports Linear_Flash_address[12]]
set_property PACKAGE_PIN BB17 [get_ports Linear_Flash_address[13]]
set_property PACKAGE_PIN BB19 [get_ports Linear_Flash_address[14]]
set_property PACKAGE_PIN BC19 [get_ports Linear_Flash_address[15]]
set_property PACKAGE_PIN BB18 [get_ports Linear_Flash_address[16]]
set_property PACKAGE_PIN BC18 [get_ports Linear_Flash_address[17]]
set_property PACKAGE_PIN AY20 [get_ports Linear_Flash_address[18]]
set_property PACKAGE_PIN BA20 [get_ports Linear_Flash_address[19]]
set_property PACKAGE_PIN BD18 [get_ports Linear_Flash_address[20]]
set_property PACKAGE_PIN BD17 [get_ports Linear_Flash_address[21]]
set_property PACKAGE_PIN BC20 [get_ports Linear_Flash_address[22]]
set_property PACKAGE_PIN BD20 [get_ports Linear_Flash_address[23]]
set_property PACKAGE_PIN BE18 [get_ports Linear_Flash_address[24]]
set_property PACKAGE_PIN BE17 [get_ports Linear_Flash_address[25]]
set_property PACKAGE_PIN AW17 [get_ports Linear_Flash_adv_ldn]
set_property PACKAGE_PIN BF16 [get_ports Linear_Flash_we_n]
set_property PACKAGE_PIN BF17 [get_ports Linear_Flash_oe_n]
set_property PACKAGE_PIN AL19 [get_ports Linear_Flash_wait[0]]

# Configuration via BPI flash for VCU118
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CONFIG_MODE BPI16 [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

# [DRC PDRC-203] BITSLICE0 not available during BISC: The port mdio_io_port_3_io is assigned to a PACKAGE_PIN that uses BITSLICE_1 of a Byte that will be using calibration. The signal connected to mdio_io_port_3_io will not be available during calibration and will only be available after RDY asserts. If this condition is not acceptable for your design and board layout, mdio_io_port_3_io will have to be moved to another PACKAGE_PIN that is not undergoing calibration or be moved to a PACKAGE_PIN location that is not BITSLICE_0 or BITSLICE_6 on that same Byte. If this condition is acceptable for your design and board layout, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint: 
set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports mdio_io_port_3_io]

# [DRC PDRC-203] BITSLICE0 not available during BISC: The port rgmii_port_1_rxc is assigned to a PACKAGE_PIN that uses BITSLICE_1 of a Byte that will be using calibration. The signal connected to rgmii_port_1_rxc will not be available during calibration and will only be available after RDY asserts. If this condition is not acceptable for your design and board layout, rgmii_port_1_rxc will have to be moved to another PACKAGE_PIN that is not undergoing calibration or be moved to a PACKAGE_PIN location that is not BITSLICE_0 or BITSLICE_6 on that same Byte. If this condition is acceptable for your design and board layout, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint: 
set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports rgmii_port_1_rxc]

# [DRC PDRC-203] BITSLICE0 not available during BISC: The port rgmii_port_3_rxc is assigned to a PACKAGE_PIN that uses BITSLICE_1 of a Byte that will be using calibration. The signal connected to rgmii_port_3_rxc will not be available during calibration and will only be available after RDY asserts. If this condition is not acceptable for your design and board layout, rgmii_port_3_rxc will have to be moved to another PACKAGE_PIN that is not undergoing calibration or be moved to a PACKAGE_PIN location that is not BITSLICE_0 or BITSLICE_6 on that same Byte. If this condition is acceptable for your design and board layout, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint: 
set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports rgmii_port_3_rxc]

# [Place 30-675] Sub-optimal placement for a global clock-capable IO pin and BUFG pair.If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets vcu118_procless_i/temac_1/inst/rgmii_interface/rgmii_rxc_ibuf_i/O]

# [Place 30-675] Sub-optimal placement for a global clock-capable IO pin and BUFG pair.If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets vcu118_procless_i/temac_3/inst/rgmii_interface/rgmii_rxc_ibuf_i/O]

