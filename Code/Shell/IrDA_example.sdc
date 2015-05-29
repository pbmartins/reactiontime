#
# timing constraints for the IrDA example
#
# LSD.TOS, February 2015
#

#
# general stuff
#
set_operating_conditions 7_slow_1200mv_85c

#
# clocks
#
set_time_format -decimal_places 3 -unit ns
create_clock -name clock_50 -period 20.000 [get_ports clock_50]
derive_pll_clocks
derive_clock_uncertainty

#
# I/O
#
# we don't care about delays concerning "slow" I/O signals
#
set_false_path -from [get_ports irda_rxd] -to [get_clocks clock_50]
set_false_path -from [get_clocks clock_50] -to [get_ports {ledg[*] hex*[*]}]
