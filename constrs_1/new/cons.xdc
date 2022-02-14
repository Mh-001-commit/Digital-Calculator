set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
#rst and clk
set_property PACKAGE_PIN V17 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]


#Inputs
set_property PACKAGE_PIN W19 [get_ports in[0]]
set_property IOSTANDARD LVCMOS33 [get_ports in[0]]
set_property PACKAGE_PIN T18 [get_ports in[1]]
set_property IOSTANDARD LVCMOS33 [get_ports in[1]]
set_property PACKAGE_PIN T17 [get_ports in[2]]
set_property IOSTANDARD LVCMOS33 [get_ports in[2]]
set_property PACKAGE_PIN U17 [get_ports in[3]]
set_property IOSTANDARD LVCMOS33 [get_ports in[3]]
set_property PACKAGE_PIN R2 [get_ports in[4]]
set_property IOSTANDARD LVCMOS33 [get_ports in[4]]
set_property PACKAGE_PIN T1 [get_ports in[5]]
set_property IOSTANDARD LVCMOS33 [get_ports in[5]]
set_property PACKAGE_PIN U1 [get_ports in[6]]
set_property IOSTANDARD LVCMOS33 [get_ports in[6]]
set_property PACKAGE_PIN W2 [get_ports in[7]]
set_property IOSTANDARD LVCMOS33 [get_ports in[7]]
set_property PACKAGE_PIN R3 [get_ports in[8]]
set_property IOSTANDARD LVCMOS33 [get_ports in[8]]

#outputts
set_property PACKAGE_PIN V7 [get_ports out[7]]
set_property IOSTANDARD LVCMOS33 [get_ports out[7]]
set_property PACKAGE_PIN W7 [get_ports out[6]]
set_property IOSTANDARD LVCMOS33 [get_ports out[6]]
set_property PACKAGE_PIN W6 [get_ports out[5]]
set_property IOSTANDARD LVCMOS33 [get_ports out[5]]
set_property PACKAGE_PIN U8 [get_ports out[4]]
set_property IOSTANDARD LVCMOS33 [get_ports out[4]]
set_property PACKAGE_PIN V8 [get_ports out[3]]
set_property IOSTANDARD LVCMOS33 [get_ports out[3]]
set_property PACKAGE_PIN U5 [get_ports out[2]]
set_property IOSTANDARD LVCMOS33 [get_ports out[2]]
set_property PACKAGE_PIN V5 [get_ports out[1]]
set_property IOSTANDARD LVCMOS33 [get_ports out[1]]
set_property PACKAGE_PIN U7 [get_ports out[0]]
set_property IOSTANDARD LVCMOS33 [get_ports out[0]]

#digital select
set_property PACKAGE_PIN W4 [get_ports digitSelect[3]]
set_property IOSTANDARD LVCMOS33 [get_ports digitSelect[3]]
set_property PACKAGE_PIN V4 [get_ports digitSelect[2]]
set_property IOSTANDARD LVCMOS33 [get_ports digitSelect[2]]
set_property PACKAGE_PIN U4 [get_ports digitSelect[1]]
set_property IOSTANDARD LVCMOS33 [get_ports digitSelect[1]]
set_property PACKAGE_PIN U2 [get_ports digitSelect[0]]
set_property IOSTANDARD LVCMOS33 [get_ports digitSelect[0]]
