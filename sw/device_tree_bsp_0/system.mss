
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = device_tree
 PARAMETER PROC_INSTANCE = ps7_cortexa9_0
 PARAMETER console_device = ps7_uart_1
 PARAMETER main_memory = ps7_ddr_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu_cortexa9
 PARAMETER HW_INSTANCE = ps7_cortexa9_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER HW_INSTANCE = axi_gpio_hdmi
 PARAMETER clock-names = s_axi_aclk
 PARAMETER clocks = clkc 15
 PARAMETER interrupt-names = ip2intc_irpt
 PARAMETER interrupt-parent = intc
 PARAMETER interrupts = 0 29 4
 PARAMETER reg = 0x41230000 0x10000
 PARAMETER xlnx,all-inputs = 1
 PARAMETER xlnx,all-inputs-2 = 0
 PARAMETER xlnx,all-outputs = 0
 PARAMETER xlnx,all-outputs-2 = 0
 PARAMETER xlnx,dout-default = 0x00000000
 PARAMETER xlnx,dout-default-2 = 0x00000000
 PARAMETER xlnx,gpio-width = 1
 PARAMETER xlnx,gpio2-width = 32
 PARAMETER xlnx,interrupt-present = 1
 PARAMETER xlnx,is-dual = 0
 PARAMETER xlnx,tri-default = 0xFFFFFFFF
 PARAMETER xlnx,tri-default-2 = 0xFFFFFFFF
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axi_vdma
 PARAMETER HW_INSTANCE = axi_vdma_0
 PARAMETER clock-names = s_axi_lite_aclk m_axi_mm2s_aclk m_axi_mm2s_aclk
 PARAMETER clocks = clkc 15>, <&clkc 16>, <&clkc 16
 PARAMETER interrupt-names = mm2s_introut
 PARAMETER interrupt-parent = intc
 PARAMETER interrupts = 0 30 4
 PARAMETER reg = 0x43000000 0x10000
 PARAMETER xlnx,addrwidth = 32
 PARAMETER xlnx,flush-fsync = 1
 PARAMETER xlnx,num-fstores = 1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_coresight_comp_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrps
 PARAMETER HW_INSTANCE = ps7_ddr_0
 PARAMETER reg = 0x0 0x20000000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrcps
 PARAMETER HW_INSTANCE = ps7_ddrc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = devcfg
 PARAMETER HW_INSTANCE = ps7_dev_cfg_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = none
 PARAMETER HW_INSTANCE = ps7_dma_ns
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = ps7_dma_s
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = globaltimerps
 PARAMETER HW_INSTANCE = ps7_globaltimer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpiops
 PARAMETER HW_INSTANCE = ps7_gpio_0
 PARAMETER emio-gpio-width = 61
 PARAMETER gpio-mask-high = 0
 PARAMETER gpio-mask-low = 22016
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_gpv_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER HW_INSTANCE = ps7_i2c_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER HW_INSTANCE = ps7_i2c_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_intc_dist_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_iop_bus_config_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_l2cachec_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ocmcps
 PARAMETER HW_INSTANCE = ps7_ocmc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pl310ps
 PARAMETER HW_INSTANCE = ps7_pl310_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pmups
 PARAMETER HW_INSTANCE = ps7_pmu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = qspips
 PARAMETER HW_INSTANCE = ps7_qspi_0
 PARAMETER is-dual = 0
 PARAMETER spi-rx-bus-width = 4
 PARAMETER spi-tx-bus-width = 4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_qspi_linear_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ramps
 PARAMETER HW_INSTANCE = ps7_ram_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = none
 PARAMETER HW_INSTANCE = ps7_ram_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_scuc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scugic
 PARAMETER HW_INSTANCE = ps7_scugic_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scutimer
 PARAMETER HW_INSTANCE = ps7_scutimer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scuwdt
 PARAMETER HW_INSTANCE = ps7_scuwdt_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_sd_0
 PARAMETER xlnx,has-cd = 1
 PARAMETER xlnx,has-power = 0
 PARAMETER xlnx,has-wp = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = slcrps
 PARAMETER HW_INSTANCE = ps7_slcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = spips
 PARAMETER HW_INSTANCE = ps7_spi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER HW_INSTANCE = ps7_ttc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER HW_INSTANCE = ps7_uart_0
 PARAMETER port-number = 1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER HW_INSTANCE = ps7_uart_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = usbps
 PARAMETER HW_INSTANCE = ps7_usb_0
 PARAMETER phy_type = ulpi
 PARAMETER usb-reset = gpio0 46 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = xadcps
 PARAMETER HW_INSTANCE = ps7_xadc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = v_tc_0
 PARAMETER compatible = xlnx,v-tc-6.1
 PARAMETER interrupt-names = irq
 PARAMETER interrupt-parent = intc
 PARAMETER interrupts = 0 31 4
 PARAMETER reg = 0x43c00000 0x10000
 PARAMETER xlnx,det-achroma-en = 0
 PARAMETER xlnx,det-avideo-en = 1
 PARAMETER xlnx,det-fieldid-en = 0
 PARAMETER xlnx,det-hblank-en = 1
 PARAMETER xlnx,det-hsync-en = 1
 PARAMETER xlnx,det-vblank-en = 1
 PARAMETER xlnx,det-vsync-en = 1
 PARAMETER xlnx,detect-en = 0
 PARAMETER xlnx,fsync-hstart0 = 0
 PARAMETER xlnx,fsync-hstart1 = 0
 PARAMETER xlnx,fsync-hstart10 = 0
 PARAMETER xlnx,fsync-hstart11 = 0
 PARAMETER xlnx,fsync-hstart12 = 0
 PARAMETER xlnx,fsync-hstart13 = 0
 PARAMETER xlnx,fsync-hstart14 = 0
 PARAMETER xlnx,fsync-hstart15 = 0
 PARAMETER xlnx,fsync-hstart2 = 0
 PARAMETER xlnx,fsync-hstart3 = 0
 PARAMETER xlnx,fsync-hstart4 = 0
 PARAMETER xlnx,fsync-hstart5 = 0
 PARAMETER xlnx,fsync-hstart6 = 0
 PARAMETER xlnx,fsync-hstart7 = 0
 PARAMETER xlnx,fsync-hstart8 = 0
 PARAMETER xlnx,fsync-hstart9 = 0
 PARAMETER xlnx,fsync-vstart0 = 0
 PARAMETER xlnx,fsync-vstart1 = 0
 PARAMETER xlnx,fsync-vstart10 = 0
 PARAMETER xlnx,fsync-vstart11 = 0
 PARAMETER xlnx,fsync-vstart12 = 0
 PARAMETER xlnx,fsync-vstart13 = 0
 PARAMETER xlnx,fsync-vstart14 = 0
 PARAMETER xlnx,fsync-vstart15 = 0
 PARAMETER xlnx,fsync-vstart2 = 0
 PARAMETER xlnx,fsync-vstart3 = 0
 PARAMETER xlnx,fsync-vstart4 = 0
 PARAMETER xlnx,fsync-vstart5 = 0
 PARAMETER xlnx,fsync-vstart6 = 0
 PARAMETER xlnx,fsync-vstart7 = 0
 PARAMETER xlnx,fsync-vstart8 = 0
 PARAMETER xlnx,fsync-vstart9 = 0
 PARAMETER xlnx,gen-achroma-en = 0
 PARAMETER xlnx,gen-achroma-polarity = 1
 PARAMETER xlnx,gen-auto-switch = 0
 PARAMETER xlnx,gen-avideo-en = 1
 PARAMETER xlnx,gen-avideo-polarity = 1
 PARAMETER xlnx,gen-cparity = 0
 PARAMETER xlnx,gen-f0-vblank-hend = 1280
 PARAMETER xlnx,gen-f0-vblank-hstart = 1280
 PARAMETER xlnx,gen-f0-vframe-size = 750
 PARAMETER xlnx,gen-f0-vsync-hend = 1280
 PARAMETER xlnx,gen-f0-vsync-hstart = 1280
 PARAMETER xlnx,gen-f0-vsync-vend = 729
 PARAMETER xlnx,gen-f0-vsync-vstart = 724
 PARAMETER xlnx,gen-f1-vblank-hend = 1280
 PARAMETER xlnx,gen-f1-vblank-hstart = 1280
 PARAMETER xlnx,gen-f1-vframe-size = 750
 PARAMETER xlnx,gen-f1-vsync-hend = 1280
 PARAMETER xlnx,gen-f1-vsync-hstart = 1280
 PARAMETER xlnx,gen-f1-vsync-vend = 729
 PARAMETER xlnx,gen-f1-vsync-vstart = 724
 PARAMETER xlnx,gen-fieldid-en = 0
 PARAMETER xlnx,gen-fieldid-polarity = 1
 PARAMETER xlnx,gen-hactive-size = 1280
 PARAMETER xlnx,gen-hblank-en = 1
 PARAMETER xlnx,gen-hblank-polarity = 1
 PARAMETER xlnx,gen-hframe-size = 1650
 PARAMETER xlnx,gen-hsync-en = 1
 PARAMETER xlnx,gen-hsync-end = 1430
 PARAMETER xlnx,gen-hsync-polarity = 1
 PARAMETER xlnx,gen-hsync-start = 1390
 PARAMETER xlnx,gen-interlaced = 0
 PARAMETER xlnx,gen-vactive-size = 720
 PARAMETER xlnx,gen-vblank-en = 1
 PARAMETER xlnx,gen-vblank-polarity = 1
 PARAMETER xlnx,gen-video-format = 2
 PARAMETER xlnx,gen-vsync-en = 1
 PARAMETER xlnx,gen-vsync-polarity = 1
 PARAMETER xlnx,generate-en = 1
 PARAMETER xlnx,has-axi4-lite = 1
 PARAMETER xlnx,has-intc-if = 0
 PARAMETER xlnx,interlace-en = 0
 PARAMETER xlnx,max-lines = 4096
 PARAMETER xlnx,max-pixels = 4096
 PARAMETER xlnx,num-fsyncs = 1
 PARAMETER xlnx,sync-en = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axi_iic
 PARAMETER HW_INSTANCE = axi_iic_0
 PARAMETER clock-names = s_axi_aclk
 PARAMETER clocks = clkc 15
 PARAMETER interrupt-names = iic2intc_irpt
 PARAMETER interrupt-parent = intc
 PARAMETER interrupts = 0 32 4
 PARAMETER reg = 0x43c30000 0x10000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = display_7seg_cntr_0
 PARAMETER compatible = xlnx,display-7seg-cntr-1.0
 PARAMETER reg = 0x43c20000 0x10000
 PARAMETER xlnx,freq-cntrs = 2
 PARAMETER xlnx,s00-axi-addr-width = 4
 PARAMETER xlnx,s00-axi-data-width = 32
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axi_clk_wiz
 PARAMETER HW_INSTANCE = clk_wiz_0
 PARAMETER clock-names = clk_in1 s_axi_aclk
 PARAMETER clock-output-names = clk_out0 clk_out1 clk_out2 clk_out3 clk_out4 clk_out5 clk_out6 clk_out7
 PARAMETER clocks = clkc 15>, <&clkc 15
 PARAMETER reg = 0x43c40000 0x10000
 PARAMETER speed-grade = (-1)
END


