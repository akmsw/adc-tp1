# Clock signal
set_property PACKAGE_PIN W5 [get_ports i_clock]
	set_property IOSTANDARD LVCMOS33 [get_ports i_clock]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports i_clock]

# Switches
set_property PACKAGE_PIN V17 [get_ports {i_swiches[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[0]}]
set_property PACKAGE_PIN V16 [get_ports {i_swiches[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[1]}]
set_property PACKAGE_PIN W16 [get_ports {i_swiches[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[2]}]
set_property PACKAGE_PIN W17 [get_ports {i_swiches[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[3]}]
set_property PACKAGE_PIN W15 [get_ports {i_swiches[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[4]}]
set_property PACKAGE_PIN V15 [get_ports {i_swiches[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[5]}]
set_property PACKAGE_PIN W14 [get_ports {i_swiches[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[6]}]
set_property PACKAGE_PIN W13 [get_ports {i_swiches[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {i_swiches[7]}]

# LEDs
set_property PACKAGE_PIN U16 [get_ports {o_ALUout[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[0]}]
set_property PACKAGE_PIN E19 [get_ports {o_ALUout[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[1]}]
set_property PACKAGE_PIN U19 [get_ports {o_ALUout[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[2]}]
set_property PACKAGE_PIN V19 [get_ports {o_ALUout[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[3]}]
set_property PACKAGE_PIN W18 [get_ports {o_ALUout[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[4]}]
set_property PACKAGE_PIN U15 [get_ports {o_ALUout[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[5]}]
set_property PACKAGE_PIN U14 [get_ports {o_ALUout[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[6]}]
set_property PACKAGE_PIN V14 [get_ports {o_ALUout[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_ALUout[7]}]
set_property PACKAGE_PIN V13 [get_ports {o_carry}]
	set_property IOSTANDARD LVCMOS33 [get_ports {o_carry}]

# Buttons
set_property PACKAGE_PIN U18 [get_ports i_boton2]
	set_property IOSTANDARD LVCMOS33 [get_ports i_boton2]
set_property PACKAGE_PIN W19 [get_ports i_boton1]
	set_property IOSTANDARD LVCMOS33 [get_ports i_boton1]
set_property PACKAGE_PIN T17 [get_ports i_boton3]
	set_property IOSTANDARD LVCMOS33 [get_ports i_boton3]