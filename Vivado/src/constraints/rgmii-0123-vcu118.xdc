
# This constraints file is set for LATE processing order so that it can override the set_input_delay and set_output_delay
# contraints in the AXI Ethernet Subsystem IP's in-built XDC files.

# Use these constraints to modify input delay on RGMII signals
set_input_delay -clock [get_clocks *temac_0/inst_rgmii_rx_clk] -max -1.2 [get_ports -of [get_nets -of [get_pins "*/temac_0/rgmii_rxd[*] */temac_0/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_0/inst_rgmii_rx_clk] -min -2.8 [get_ports -of [get_nets -of [get_pins "*/temac_0/rgmii_rxd[*] */temac_0/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_0/inst_rgmii_rx_clk] -clock_fall -max -1.2 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_0/rgmii_rxd[*] */temac_0/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_0/inst_rgmii_rx_clk] -clock_fall -min -2.8 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_0/rgmii_rxd[*] */temac_0/rgmii_rx_ctl"]]]

set_input_delay -clock [get_clocks *temac_1/inst_rgmii_rx_clk] -max -1.2 [get_ports -of [get_nets -of [get_pins "*/temac_1/rgmii_rxd[*] */temac_1/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_1/inst_rgmii_rx_clk] -min -2.3 [get_ports -of [get_nets -of [get_pins "*/temac_1/rgmii_rxd[*] */temac_1/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_1/inst_rgmii_rx_clk] -clock_fall -max -1.2 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_1/rgmii_rxd[*] */temac_1/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_1/inst_rgmii_rx_clk] -clock_fall -min -2.3 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_1/rgmii_rxd[*] */temac_1/rgmii_rx_ctl"]]]

set_input_delay -clock [get_clocks *temac_2/inst_rgmii_rx_clk] -max -1.2 [get_ports -of [get_nets -of [get_pins "*/temac_2/rgmii_rxd[*] */temac_2/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_2/inst_rgmii_rx_clk] -min -2.8 [get_ports -of [get_nets -of [get_pins "*/temac_2/rgmii_rxd[*] */temac_2/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_2/inst_rgmii_rx_clk] -clock_fall -max -1.2 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_2/rgmii_rxd[*] */temac_2/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_2/inst_rgmii_rx_clk] -clock_fall -min -2.8 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_2/rgmii_rxd[*] */temac_2/rgmii_rx_ctl"]]]

set_input_delay -clock [get_clocks *temac_3/inst_rgmii_rx_clk] -max -1.2 [get_ports -of [get_nets -of [get_pins "*/temac_3/rgmii_rxd[*] */temac_3/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_3/inst_rgmii_rx_clk] -min -2.4 [get_ports -of [get_nets -of [get_pins "*/temac_3/rgmii_rxd[*] */temac_3/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_3/inst_rgmii_rx_clk] -clock_fall -max -1.2 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_3/rgmii_rxd[*] */temac_3/rgmii_rx_ctl"]]]
set_input_delay -clock [get_clocks *temac_3/inst_rgmii_rx_clk] -clock_fall -min -2.4 -add_delay [get_ports -of [get_nets -of [get_pins "*/temac_3/rgmii_rxd[*] */temac_3/rgmii_rx_ctl"]]]

# Use these constraints to modify output delay on RGMII signals if 2ns delay is added by external PHY
#set_output_delay -clock [get_clocks rgmii_port_0_txc] -max -1.0 [get_ports {rgmii_port_0_td[*] rgmii_port_0_tx_ctl}]
#set_output_delay -clock [get_clocks rgmii_port_0_txc] -min -2.5 [get_ports {rgmii_port_0_td[*] rgmii_port_0_tx_ctl}] -add_delay
#set_output_delay -clock [get_clocks rgmii_port_0_txc] -clock_fall -max -1.0 [get_ports {rgmii_port_0_td[*] rgmii_port_0_tx_ctl}] 
#set_output_delay -clock [get_clocks rgmii_port_0_txc] -clock_fall -min -2.5 [get_ports {rgmii_port_0_td[*] rgmii_port_0_tx_ctl}]

#set_output_delay -clock [get_clocks rgmii_port_2_txc] -max -1.0 [get_ports {rgmii_port_2_td[*] rgmii_port_2_tx_ctl}]
#set_output_delay -clock [get_clocks rgmii_port_2_txc] -min -2.5 [get_ports {rgmii_port_2_td[*] rgmii_port_2_tx_ctl}] -add_delay
#set_output_delay -clock [get_clocks rgmii_port_2_txc] -clock_fall -max -1.0 [get_ports {rgmii_port_2_td[*] rgmii_port_2_tx_ctl}] 
#set_output_delay -clock [get_clocks rgmii_port_2_txc] -clock_fall -min -2.5 [get_ports {rgmii_port_2_td[*] rgmii_port_2_tx_ctl}]

