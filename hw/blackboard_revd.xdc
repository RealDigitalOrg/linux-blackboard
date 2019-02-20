# clk100_in is from the 100 MHz oscillator on Blackboard
create_clock -period 10.000 -name gclk [get_ports CLK100_IN]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports CLK100_IN]

# Set false path from pxl_clk to AXI 100 MHz clock
set fclk0 [get_clocks -of_objects [get_pins "*/processing_system7_0/FCLK_CLK0"] ]
set pxl_clk [get_clocks -of_objects [get_pins "*/clk_wiz_0/clk_out1"] ]
set_clock_groups -name pxl_clk_async -asynchronous -group [get_clocks $fclk0] -group [get_clocks $pxl_clk]

# The video core's MMCM must be close to the HDMI I/O's pins, because it drives
# the OSERDES' clock directly
set_property LOC MMCME2_ADV_X0Y0 [get_cells -match_style ucf */clk_wiz_0/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst]

# PS_GPIO pins -- Rev. B:
# GPIO pins 3-0 four pushbuttons
# GPIO pins 11-4 eight slide switches
# GPIO pins 27-12 two PMOD connectors
# GPIO pins 39-28 four RGB LEDs
# GPIO pins 41-40 HDMI SDA and SCL signals
# GPIO pins 44-42 three Red LEDs LED3:1, LED0 blinks
# GPIO pins 48-45 four servo controllers

# PS_GPIO pins -- Rev. D:
# GPIO pins 3-0 four pushbuttons
# GPIO pins 39-36, 11-4 twelve slide switches
# GPIO pins 35-12 three PMOD connectors
# GPIO pins 41-40 Not used for Rev. D, but are used for Rev. C.
# GPIO pins 50-42 nine Red LEDs LED9:1, LED0 blinks
# GPIO pins 54-51 four servo controllers
# GPIO pins 60-55 two RGB LEDs

# On-board Pushbuttons
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[0]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[1]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[2]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[3]}]

# On-board Slide Switches
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[4]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[5]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[6]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[7]}]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[8]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[9]}]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[10]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[11]}]
#Rev C Adds 4 Slide Switches
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[36]}]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[37]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[38]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[39]}]

# The PMODs have been assigned so that software that ran on the Zedboard sees
# the same A-B-C mapping w.r.t. the GPIO number assignments

## Pmod Header JA (XADC)
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[12]}]
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[13]}]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[14]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[15]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[16]}]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[17]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[18]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[19]}]

## Pmod Header JB
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[20]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[21]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[22]}]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[23]}]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[24]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[25]}]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[26]}]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[27]}]

## Rev. C adds Pmod Header JC
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[28]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[29]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[30]}]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[31]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[32]}]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[33]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[34]}]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[35]}]

# LED 0 is mapped to one Hz output
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports ONE_HZ]

# LED 3:1 pins are mapped to GPIO
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[42]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[43]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[44]}]
# Rev. D adds LED 9:4 and are mapped to GPIO
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[45]}]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[46]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[47]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[48]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[49]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[50]}]

# Rev. D only Servo outputs
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[51]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[52]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[53]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[54]}]

## Rev. D only -- RGB LED 10
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[55]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[56]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[57]}]

## Rev. D only -- RGB LED 11
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[58]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[59]}]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[60]}]

# HDMI (DVI) outputs
set_property -dict {PACKAGE_PIN U19 IOSTANDARD TMDS_33} [get_ports hdmi_out_tmds_clk_n]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD TMDS_33} [get_ports hdmi_out_tmds_clk_p]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD TMDS_33} [get_ports {hdmi_out_tmds_data_n[0]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD TMDS_33} [get_ports {hdmi_out_tmds_data_p[0]}]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD TMDS_33} [get_ports {hdmi_out_tmds_data_n[1]}]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD TMDS_33} [get_ports {hdmi_out_tmds_data_p[1]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD TMDS_33} [get_ports {hdmi_out_tmds_data_n[2]}]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD TMDS_33} [get_ports {hdmi_out_tmds_data_p[2]}]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports hdmi_hpd_tri_i]

# HDMI I2C interface
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports hdmi_ddc_scl_io]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports hdmi_ddc_sda_io]

# iNEMO inertial module I2C interface
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports iic_gyro_scl_io]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports iic_gyro_sda_io]

# 7-Segment display outputs
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[0]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[1]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[2]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[3]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[4]}]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[5]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[6]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {N_SEGMENTS[7]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports {N_ANODES[0]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {N_ANODES[1]}]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {N_ANODES[2]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {N_ANODES[3]}]

# Dummy ESP32 pins for Rev. C only and are required as defined here to be able to communicate
# with and program the ESP32 module
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[40]}]
set_property PULLUP true [get_ports {PS_GPIO_tri_io[40]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {PS_GPIO_tri_io[41]}]
set_property PULLUP true [get_ports {PS_GPIO_tri_io[41]}]

## Rev. D only -- UART1 for ESP32 is not connected in this configuration.  NOTE: UART1 is
# only available for Rev. D and requires custom ESP32 firmware that utilizes UART1 for
# communication and UART0 for debug.
#set_property -dict "PACKAGE_PIN U14 IOSTANDARD LVCMOS33" [get_ports "ESP32_RXD1"]
#set_property -dict "PACKAGE_PIN U15 IOSTANDARD LVCMOS33" [get_ports "ESP32_TXD1"]

