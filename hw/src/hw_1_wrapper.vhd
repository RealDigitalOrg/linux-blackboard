--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
--Date        : Thu Feb 14 13:26:19 2019
--Host        : linux-a8n.allterrainsw.com running 64-bit CentOS Linux release 7.6.1810 (Core)
--Command     : generate_target hw_1_wrapper.bd
--Design      : hw_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hw_1_wrapper is
  port (
    CLK100_IN : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    N_ANODES : out STD_LOGIC_VECTOR ( 3 downto 0 );
    N_SEGMENTS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ONE_HZ : out STD_LOGIC;
    PS_GPIO_tri_io : inout STD_LOGIC_VECTOR ( 60 downto 0 );
    hdmi_ddc_scl_io : inout STD_LOGIC;
    hdmi_ddc_sda_io : inout STD_LOGIC;
    hdmi_hpd_tri_i : in STD_LOGIC;
    hdmi_out_tmds_clk_n : out STD_LOGIC;
    hdmi_out_tmds_clk_p : out STD_LOGIC;
    hdmi_out_tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    iic_gyro_scl_io : inout STD_LOGIC;
    iic_gyro_sda_io : inout STD_LOGIC
  );
end hw_1_wrapper;

architecture STRUCTURE of hw_1_wrapper is
  component hw_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    hdmi_ddc_sda_i : in STD_LOGIC;
    hdmi_ddc_sda_o : out STD_LOGIC;
    hdmi_ddc_sda_t : out STD_LOGIC;
    hdmi_ddc_scl_i : in STD_LOGIC;
    hdmi_ddc_scl_o : out STD_LOGIC;
    hdmi_ddc_scl_t : out STD_LOGIC;
    hdmi_hpd_tri_i : in STD_LOGIC;
    PS_GPIO_tri_i : in STD_LOGIC_VECTOR ( 60 downto 0 );
    PS_GPIO_tri_o : out STD_LOGIC_VECTOR ( 60 downto 0 );
    PS_GPIO_tri_t : out STD_LOGIC_VECTOR ( 60 downto 0 );
    iic_gyro_scl_i : in STD_LOGIC;
    iic_gyro_scl_o : out STD_LOGIC;
    iic_gyro_scl_t : out STD_LOGIC;
    iic_gyro_sda_i : in STD_LOGIC;
    iic_gyro_sda_o : out STD_LOGIC;
    iic_gyro_sda_t : out STD_LOGIC;
    hdmi_out_tmds_clk_n : out STD_LOGIC;
    hdmi_out_tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_tmds_clk_p : out STD_LOGIC;
    hdmi_out_tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    N_ANODES : out STD_LOGIC_VECTOR ( 3 downto 0 );
    N_SEGMENTS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ONE_HZ : out STD_LOGIC;
    CLK100_IN : in STD_LOGIC
  );
  end component hw_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal PS_GPIO_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PS_GPIO_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal PS_GPIO_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal PS_GPIO_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal PS_GPIO_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal PS_GPIO_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal PS_GPIO_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal PS_GPIO_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal PS_GPIO_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal PS_GPIO_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal PS_GPIO_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal PS_GPIO_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal PS_GPIO_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal PS_GPIO_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal PS_GPIO_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal PS_GPIO_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal PS_GPIO_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal PS_GPIO_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal PS_GPIO_tri_i_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal PS_GPIO_tri_i_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal PS_GPIO_tri_i_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal PS_GPIO_tri_i_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal PS_GPIO_tri_i_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal PS_GPIO_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal PS_GPIO_tri_i_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal PS_GPIO_tri_i_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal PS_GPIO_tri_i_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal PS_GPIO_tri_i_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal PS_GPIO_tri_i_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal PS_GPIO_tri_i_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal PS_GPIO_tri_i_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal PS_GPIO_tri_i_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal PS_GPIO_tri_i_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal PS_GPIO_tri_i_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal PS_GPIO_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal PS_GPIO_tri_i_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal PS_GPIO_tri_i_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal PS_GPIO_tri_i_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal PS_GPIO_tri_i_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal PS_GPIO_tri_i_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal PS_GPIO_tri_i_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal PS_GPIO_tri_i_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal PS_GPIO_tri_i_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal PS_GPIO_tri_i_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal PS_GPIO_tri_i_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal PS_GPIO_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal PS_GPIO_tri_i_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal PS_GPIO_tri_i_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal PS_GPIO_tri_i_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal PS_GPIO_tri_i_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal PS_GPIO_tri_i_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal PS_GPIO_tri_i_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal PS_GPIO_tri_i_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal PS_GPIO_tri_i_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal PS_GPIO_tri_i_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal PS_GPIO_tri_i_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal PS_GPIO_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal PS_GPIO_tri_i_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal PS_GPIO_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal PS_GPIO_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal PS_GPIO_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal PS_GPIO_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PS_GPIO_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal PS_GPIO_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal PS_GPIO_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal PS_GPIO_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal PS_GPIO_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal PS_GPIO_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal PS_GPIO_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal PS_GPIO_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal PS_GPIO_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal PS_GPIO_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal PS_GPIO_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal PS_GPIO_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal PS_GPIO_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal PS_GPIO_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal PS_GPIO_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal PS_GPIO_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal PS_GPIO_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal PS_GPIO_tri_io_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal PS_GPIO_tri_io_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal PS_GPIO_tri_io_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal PS_GPIO_tri_io_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal PS_GPIO_tri_io_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal PS_GPIO_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal PS_GPIO_tri_io_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal PS_GPIO_tri_io_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal PS_GPIO_tri_io_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal PS_GPIO_tri_io_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal PS_GPIO_tri_io_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal PS_GPIO_tri_io_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal PS_GPIO_tri_io_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal PS_GPIO_tri_io_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal PS_GPIO_tri_io_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal PS_GPIO_tri_io_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal PS_GPIO_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal PS_GPIO_tri_io_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal PS_GPIO_tri_io_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal PS_GPIO_tri_io_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal PS_GPIO_tri_io_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal PS_GPIO_tri_io_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal PS_GPIO_tri_io_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal PS_GPIO_tri_io_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal PS_GPIO_tri_io_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal PS_GPIO_tri_io_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal PS_GPIO_tri_io_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal PS_GPIO_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal PS_GPIO_tri_io_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal PS_GPIO_tri_io_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal PS_GPIO_tri_io_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal PS_GPIO_tri_io_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal PS_GPIO_tri_io_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal PS_GPIO_tri_io_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal PS_GPIO_tri_io_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal PS_GPIO_tri_io_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal PS_GPIO_tri_io_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal PS_GPIO_tri_io_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal PS_GPIO_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal PS_GPIO_tri_io_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal PS_GPIO_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal PS_GPIO_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal PS_GPIO_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal PS_GPIO_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PS_GPIO_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal PS_GPIO_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal PS_GPIO_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal PS_GPIO_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal PS_GPIO_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal PS_GPIO_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal PS_GPIO_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal PS_GPIO_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal PS_GPIO_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal PS_GPIO_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal PS_GPIO_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal PS_GPIO_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal PS_GPIO_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal PS_GPIO_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal PS_GPIO_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal PS_GPIO_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal PS_GPIO_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal PS_GPIO_tri_o_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal PS_GPIO_tri_o_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal PS_GPIO_tri_o_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal PS_GPIO_tri_o_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal PS_GPIO_tri_o_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal PS_GPIO_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal PS_GPIO_tri_o_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal PS_GPIO_tri_o_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal PS_GPIO_tri_o_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal PS_GPIO_tri_o_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal PS_GPIO_tri_o_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal PS_GPIO_tri_o_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal PS_GPIO_tri_o_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal PS_GPIO_tri_o_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal PS_GPIO_tri_o_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal PS_GPIO_tri_o_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal PS_GPIO_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal PS_GPIO_tri_o_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal PS_GPIO_tri_o_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal PS_GPIO_tri_o_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal PS_GPIO_tri_o_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal PS_GPIO_tri_o_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal PS_GPIO_tri_o_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal PS_GPIO_tri_o_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal PS_GPIO_tri_o_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal PS_GPIO_tri_o_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal PS_GPIO_tri_o_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal PS_GPIO_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal PS_GPIO_tri_o_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal PS_GPIO_tri_o_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal PS_GPIO_tri_o_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal PS_GPIO_tri_o_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal PS_GPIO_tri_o_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal PS_GPIO_tri_o_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal PS_GPIO_tri_o_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal PS_GPIO_tri_o_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal PS_GPIO_tri_o_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal PS_GPIO_tri_o_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal PS_GPIO_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal PS_GPIO_tri_o_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal PS_GPIO_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal PS_GPIO_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal PS_GPIO_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal PS_GPIO_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PS_GPIO_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal PS_GPIO_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal PS_GPIO_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal PS_GPIO_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal PS_GPIO_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal PS_GPIO_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal PS_GPIO_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal PS_GPIO_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal PS_GPIO_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal PS_GPIO_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal PS_GPIO_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal PS_GPIO_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal PS_GPIO_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal PS_GPIO_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal PS_GPIO_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal PS_GPIO_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal PS_GPIO_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal PS_GPIO_tri_t_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal PS_GPIO_tri_t_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal PS_GPIO_tri_t_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal PS_GPIO_tri_t_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal PS_GPIO_tri_t_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal PS_GPIO_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal PS_GPIO_tri_t_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal PS_GPIO_tri_t_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal PS_GPIO_tri_t_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal PS_GPIO_tri_t_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal PS_GPIO_tri_t_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal PS_GPIO_tri_t_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal PS_GPIO_tri_t_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal PS_GPIO_tri_t_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal PS_GPIO_tri_t_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal PS_GPIO_tri_t_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal PS_GPIO_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal PS_GPIO_tri_t_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal PS_GPIO_tri_t_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal PS_GPIO_tri_t_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal PS_GPIO_tri_t_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal PS_GPIO_tri_t_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal PS_GPIO_tri_t_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal PS_GPIO_tri_t_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal PS_GPIO_tri_t_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal PS_GPIO_tri_t_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal PS_GPIO_tri_t_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal PS_GPIO_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal PS_GPIO_tri_t_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal PS_GPIO_tri_t_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal PS_GPIO_tri_t_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal PS_GPIO_tri_t_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal PS_GPIO_tri_t_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal PS_GPIO_tri_t_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal PS_GPIO_tri_t_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal PS_GPIO_tri_t_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal PS_GPIO_tri_t_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal PS_GPIO_tri_t_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal PS_GPIO_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal PS_GPIO_tri_t_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal PS_GPIO_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal PS_GPIO_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal PS_GPIO_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal hdmi_ddc_scl_i : STD_LOGIC;
  signal hdmi_ddc_scl_o : STD_LOGIC;
  signal hdmi_ddc_scl_t : STD_LOGIC;
  signal hdmi_ddc_sda_i : STD_LOGIC;
  signal hdmi_ddc_sda_o : STD_LOGIC;
  signal hdmi_ddc_sda_t : STD_LOGIC;
  signal iic_gyro_scl_i : STD_LOGIC;
  signal iic_gyro_scl_o : STD_LOGIC;
  signal iic_gyro_scl_t : STD_LOGIC;
  signal iic_gyro_sda_i : STD_LOGIC;
  signal iic_gyro_sda_o : STD_LOGIC;
  signal iic_gyro_sda_t : STD_LOGIC;
begin
PS_GPIO_tri_iobuf_0: component IOBUF
     port map (
      I => PS_GPIO_tri_o_0(0),
      IO => PS_GPIO_tri_io(0),
      O => PS_GPIO_tri_i_0(0),
      T => PS_GPIO_tri_t_0(0)
    );
PS_GPIO_tri_iobuf_1: component IOBUF
     port map (
      I => PS_GPIO_tri_o_1(1),
      IO => PS_GPIO_tri_io(1),
      O => PS_GPIO_tri_i_1(1),
      T => PS_GPIO_tri_t_1(1)
    );
PS_GPIO_tri_iobuf_10: component IOBUF
     port map (
      I => PS_GPIO_tri_o_10(10),
      IO => PS_GPIO_tri_io(10),
      O => PS_GPIO_tri_i_10(10),
      T => PS_GPIO_tri_t_10(10)
    );
PS_GPIO_tri_iobuf_11: component IOBUF
     port map (
      I => PS_GPIO_tri_o_11(11),
      IO => PS_GPIO_tri_io(11),
      O => PS_GPIO_tri_i_11(11),
      T => PS_GPIO_tri_t_11(11)
    );
PS_GPIO_tri_iobuf_12: component IOBUF
     port map (
      I => PS_GPIO_tri_o_12(12),
      IO => PS_GPIO_tri_io(12),
      O => PS_GPIO_tri_i_12(12),
      T => PS_GPIO_tri_t_12(12)
    );
PS_GPIO_tri_iobuf_13: component IOBUF
     port map (
      I => PS_GPIO_tri_o_13(13),
      IO => PS_GPIO_tri_io(13),
      O => PS_GPIO_tri_i_13(13),
      T => PS_GPIO_tri_t_13(13)
    );
PS_GPIO_tri_iobuf_14: component IOBUF
     port map (
      I => PS_GPIO_tri_o_14(14),
      IO => PS_GPIO_tri_io(14),
      O => PS_GPIO_tri_i_14(14),
      T => PS_GPIO_tri_t_14(14)
    );
PS_GPIO_tri_iobuf_15: component IOBUF
     port map (
      I => PS_GPIO_tri_o_15(15),
      IO => PS_GPIO_tri_io(15),
      O => PS_GPIO_tri_i_15(15),
      T => PS_GPIO_tri_t_15(15)
    );
PS_GPIO_tri_iobuf_16: component IOBUF
     port map (
      I => PS_GPIO_tri_o_16(16),
      IO => PS_GPIO_tri_io(16),
      O => PS_GPIO_tri_i_16(16),
      T => PS_GPIO_tri_t_16(16)
    );
PS_GPIO_tri_iobuf_17: component IOBUF
     port map (
      I => PS_GPIO_tri_o_17(17),
      IO => PS_GPIO_tri_io(17),
      O => PS_GPIO_tri_i_17(17),
      T => PS_GPIO_tri_t_17(17)
    );
PS_GPIO_tri_iobuf_18: component IOBUF
     port map (
      I => PS_GPIO_tri_o_18(18),
      IO => PS_GPIO_tri_io(18),
      O => PS_GPIO_tri_i_18(18),
      T => PS_GPIO_tri_t_18(18)
    );
PS_GPIO_tri_iobuf_19: component IOBUF
     port map (
      I => PS_GPIO_tri_o_19(19),
      IO => PS_GPIO_tri_io(19),
      O => PS_GPIO_tri_i_19(19),
      T => PS_GPIO_tri_t_19(19)
    );
PS_GPIO_tri_iobuf_2: component IOBUF
     port map (
      I => PS_GPIO_tri_o_2(2),
      IO => PS_GPIO_tri_io(2),
      O => PS_GPIO_tri_i_2(2),
      T => PS_GPIO_tri_t_2(2)
    );
PS_GPIO_tri_iobuf_20: component IOBUF
     port map (
      I => PS_GPIO_tri_o_20(20),
      IO => PS_GPIO_tri_io(20),
      O => PS_GPIO_tri_i_20(20),
      T => PS_GPIO_tri_t_20(20)
    );
PS_GPIO_tri_iobuf_21: component IOBUF
     port map (
      I => PS_GPIO_tri_o_21(21),
      IO => PS_GPIO_tri_io(21),
      O => PS_GPIO_tri_i_21(21),
      T => PS_GPIO_tri_t_21(21)
    );
PS_GPIO_tri_iobuf_22: component IOBUF
     port map (
      I => PS_GPIO_tri_o_22(22),
      IO => PS_GPIO_tri_io(22),
      O => PS_GPIO_tri_i_22(22),
      T => PS_GPIO_tri_t_22(22)
    );
PS_GPIO_tri_iobuf_23: component IOBUF
     port map (
      I => PS_GPIO_tri_o_23(23),
      IO => PS_GPIO_tri_io(23),
      O => PS_GPIO_tri_i_23(23),
      T => PS_GPIO_tri_t_23(23)
    );
PS_GPIO_tri_iobuf_24: component IOBUF
     port map (
      I => PS_GPIO_tri_o_24(24),
      IO => PS_GPIO_tri_io(24),
      O => PS_GPIO_tri_i_24(24),
      T => PS_GPIO_tri_t_24(24)
    );
PS_GPIO_tri_iobuf_25: component IOBUF
     port map (
      I => PS_GPIO_tri_o_25(25),
      IO => PS_GPIO_tri_io(25),
      O => PS_GPIO_tri_i_25(25),
      T => PS_GPIO_tri_t_25(25)
    );
PS_GPIO_tri_iobuf_26: component IOBUF
     port map (
      I => PS_GPIO_tri_o_26(26),
      IO => PS_GPIO_tri_io(26),
      O => PS_GPIO_tri_i_26(26),
      T => PS_GPIO_tri_t_26(26)
    );
PS_GPIO_tri_iobuf_27: component IOBUF
     port map (
      I => PS_GPIO_tri_o_27(27),
      IO => PS_GPIO_tri_io(27),
      O => PS_GPIO_tri_i_27(27),
      T => PS_GPIO_tri_t_27(27)
    );
PS_GPIO_tri_iobuf_28: component IOBUF
     port map (
      I => PS_GPIO_tri_o_28(28),
      IO => PS_GPIO_tri_io(28),
      O => PS_GPIO_tri_i_28(28),
      T => PS_GPIO_tri_t_28(28)
    );
PS_GPIO_tri_iobuf_29: component IOBUF
     port map (
      I => PS_GPIO_tri_o_29(29),
      IO => PS_GPIO_tri_io(29),
      O => PS_GPIO_tri_i_29(29),
      T => PS_GPIO_tri_t_29(29)
    );
PS_GPIO_tri_iobuf_3: component IOBUF
     port map (
      I => PS_GPIO_tri_o_3(3),
      IO => PS_GPIO_tri_io(3),
      O => PS_GPIO_tri_i_3(3),
      T => PS_GPIO_tri_t_3(3)
    );
PS_GPIO_tri_iobuf_30: component IOBUF
     port map (
      I => PS_GPIO_tri_o_30(30),
      IO => PS_GPIO_tri_io(30),
      O => PS_GPIO_tri_i_30(30),
      T => PS_GPIO_tri_t_30(30)
    );
PS_GPIO_tri_iobuf_31: component IOBUF
     port map (
      I => PS_GPIO_tri_o_31(31),
      IO => PS_GPIO_tri_io(31),
      O => PS_GPIO_tri_i_31(31),
      T => PS_GPIO_tri_t_31(31)
    );
PS_GPIO_tri_iobuf_32: component IOBUF
     port map (
      I => PS_GPIO_tri_o_32(32),
      IO => PS_GPIO_tri_io(32),
      O => PS_GPIO_tri_i_32(32),
      T => PS_GPIO_tri_t_32(32)
    );
PS_GPIO_tri_iobuf_33: component IOBUF
     port map (
      I => PS_GPIO_tri_o_33(33),
      IO => PS_GPIO_tri_io(33),
      O => PS_GPIO_tri_i_33(33),
      T => PS_GPIO_tri_t_33(33)
    );
PS_GPIO_tri_iobuf_34: component IOBUF
     port map (
      I => PS_GPIO_tri_o_34(34),
      IO => PS_GPIO_tri_io(34),
      O => PS_GPIO_tri_i_34(34),
      T => PS_GPIO_tri_t_34(34)
    );
PS_GPIO_tri_iobuf_35: component IOBUF
     port map (
      I => PS_GPIO_tri_o_35(35),
      IO => PS_GPIO_tri_io(35),
      O => PS_GPIO_tri_i_35(35),
      T => PS_GPIO_tri_t_35(35)
    );
PS_GPIO_tri_iobuf_36: component IOBUF
     port map (
      I => PS_GPIO_tri_o_36(36),
      IO => PS_GPIO_tri_io(36),
      O => PS_GPIO_tri_i_36(36),
      T => PS_GPIO_tri_t_36(36)
    );
PS_GPIO_tri_iobuf_37: component IOBUF
     port map (
      I => PS_GPIO_tri_o_37(37),
      IO => PS_GPIO_tri_io(37),
      O => PS_GPIO_tri_i_37(37),
      T => PS_GPIO_tri_t_37(37)
    );
PS_GPIO_tri_iobuf_38: component IOBUF
     port map (
      I => PS_GPIO_tri_o_38(38),
      IO => PS_GPIO_tri_io(38),
      O => PS_GPIO_tri_i_38(38),
      T => PS_GPIO_tri_t_38(38)
    );
PS_GPIO_tri_iobuf_39: component IOBUF
     port map (
      I => PS_GPIO_tri_o_39(39),
      IO => PS_GPIO_tri_io(39),
      O => PS_GPIO_tri_i_39(39),
      T => PS_GPIO_tri_t_39(39)
    );
PS_GPIO_tri_iobuf_4: component IOBUF
     port map (
      I => PS_GPIO_tri_o_4(4),
      IO => PS_GPIO_tri_io(4),
      O => PS_GPIO_tri_i_4(4),
      T => PS_GPIO_tri_t_4(4)
    );
PS_GPIO_tri_iobuf_40: component IOBUF
     port map (
      I => PS_GPIO_tri_o_40(40),
      IO => PS_GPIO_tri_io(40),
      O => PS_GPIO_tri_i_40(40),
      T => PS_GPIO_tri_t_40(40)
    );
PS_GPIO_tri_iobuf_41: component IOBUF
     port map (
      I => PS_GPIO_tri_o_41(41),
      IO => PS_GPIO_tri_io(41),
      O => PS_GPIO_tri_i_41(41),
      T => PS_GPIO_tri_t_41(41)
    );
PS_GPIO_tri_iobuf_42: component IOBUF
     port map (
      I => PS_GPIO_tri_o_42(42),
      IO => PS_GPIO_tri_io(42),
      O => PS_GPIO_tri_i_42(42),
      T => PS_GPIO_tri_t_42(42)
    );
PS_GPIO_tri_iobuf_43: component IOBUF
     port map (
      I => PS_GPIO_tri_o_43(43),
      IO => PS_GPIO_tri_io(43),
      O => PS_GPIO_tri_i_43(43),
      T => PS_GPIO_tri_t_43(43)
    );
PS_GPIO_tri_iobuf_44: component IOBUF
     port map (
      I => PS_GPIO_tri_o_44(44),
      IO => PS_GPIO_tri_io(44),
      O => PS_GPIO_tri_i_44(44),
      T => PS_GPIO_tri_t_44(44)
    );
PS_GPIO_tri_iobuf_45: component IOBUF
     port map (
      I => PS_GPIO_tri_o_45(45),
      IO => PS_GPIO_tri_io(45),
      O => PS_GPIO_tri_i_45(45),
      T => PS_GPIO_tri_t_45(45)
    );
PS_GPIO_tri_iobuf_46: component IOBUF
     port map (
      I => PS_GPIO_tri_o_46(46),
      IO => PS_GPIO_tri_io(46),
      O => PS_GPIO_tri_i_46(46),
      T => PS_GPIO_tri_t_46(46)
    );
PS_GPIO_tri_iobuf_47: component IOBUF
     port map (
      I => PS_GPIO_tri_o_47(47),
      IO => PS_GPIO_tri_io(47),
      O => PS_GPIO_tri_i_47(47),
      T => PS_GPIO_tri_t_47(47)
    );
PS_GPIO_tri_iobuf_48: component IOBUF
     port map (
      I => PS_GPIO_tri_o_48(48),
      IO => PS_GPIO_tri_io(48),
      O => PS_GPIO_tri_i_48(48),
      T => PS_GPIO_tri_t_48(48)
    );
PS_GPIO_tri_iobuf_49: component IOBUF
     port map (
      I => PS_GPIO_tri_o_49(49),
      IO => PS_GPIO_tri_io(49),
      O => PS_GPIO_tri_i_49(49),
      T => PS_GPIO_tri_t_49(49)
    );
PS_GPIO_tri_iobuf_5: component IOBUF
     port map (
      I => PS_GPIO_tri_o_5(5),
      IO => PS_GPIO_tri_io(5),
      O => PS_GPIO_tri_i_5(5),
      T => PS_GPIO_tri_t_5(5)
    );
PS_GPIO_tri_iobuf_50: component IOBUF
     port map (
      I => PS_GPIO_tri_o_50(50),
      IO => PS_GPIO_tri_io(50),
      O => PS_GPIO_tri_i_50(50),
      T => PS_GPIO_tri_t_50(50)
    );
PS_GPIO_tri_iobuf_51: component IOBUF
     port map (
      I => PS_GPIO_tri_o_51(51),
      IO => PS_GPIO_tri_io(51),
      O => PS_GPIO_tri_i_51(51),
      T => PS_GPIO_tri_t_51(51)
    );
PS_GPIO_tri_iobuf_52: component IOBUF
     port map (
      I => PS_GPIO_tri_o_52(52),
      IO => PS_GPIO_tri_io(52),
      O => PS_GPIO_tri_i_52(52),
      T => PS_GPIO_tri_t_52(52)
    );
PS_GPIO_tri_iobuf_53: component IOBUF
     port map (
      I => PS_GPIO_tri_o_53(53),
      IO => PS_GPIO_tri_io(53),
      O => PS_GPIO_tri_i_53(53),
      T => PS_GPIO_tri_t_53(53)
    );
PS_GPIO_tri_iobuf_54: component IOBUF
     port map (
      I => PS_GPIO_tri_o_54(54),
      IO => PS_GPIO_tri_io(54),
      O => PS_GPIO_tri_i_54(54),
      T => PS_GPIO_tri_t_54(54)
    );
PS_GPIO_tri_iobuf_55: component IOBUF
     port map (
      I => PS_GPIO_tri_o_55(55),
      IO => PS_GPIO_tri_io(55),
      O => PS_GPIO_tri_i_55(55),
      T => PS_GPIO_tri_t_55(55)
    );
PS_GPIO_tri_iobuf_56: component IOBUF
     port map (
      I => PS_GPIO_tri_o_56(56),
      IO => PS_GPIO_tri_io(56),
      O => PS_GPIO_tri_i_56(56),
      T => PS_GPIO_tri_t_56(56)
    );
PS_GPIO_tri_iobuf_57: component IOBUF
     port map (
      I => PS_GPIO_tri_o_57(57),
      IO => PS_GPIO_tri_io(57),
      O => PS_GPIO_tri_i_57(57),
      T => PS_GPIO_tri_t_57(57)
    );
PS_GPIO_tri_iobuf_58: component IOBUF
     port map (
      I => PS_GPIO_tri_o_58(58),
      IO => PS_GPIO_tri_io(58),
      O => PS_GPIO_tri_i_58(58),
      T => PS_GPIO_tri_t_58(58)
    );
PS_GPIO_tri_iobuf_59: component IOBUF
     port map (
      I => PS_GPIO_tri_o_59(59),
      IO => PS_GPIO_tri_io(59),
      O => PS_GPIO_tri_i_59(59),
      T => PS_GPIO_tri_t_59(59)
    );
PS_GPIO_tri_iobuf_6: component IOBUF
     port map (
      I => PS_GPIO_tri_o_6(6),
      IO => PS_GPIO_tri_io(6),
      O => PS_GPIO_tri_i_6(6),
      T => PS_GPIO_tri_t_6(6)
    );
PS_GPIO_tri_iobuf_60: component IOBUF
     port map (
      I => PS_GPIO_tri_o_60(60),
      IO => PS_GPIO_tri_io(60),
      O => PS_GPIO_tri_i_60(60),
      T => PS_GPIO_tri_t_60(60)
    );
PS_GPIO_tri_iobuf_7: component IOBUF
     port map (
      I => PS_GPIO_tri_o_7(7),
      IO => PS_GPIO_tri_io(7),
      O => PS_GPIO_tri_i_7(7),
      T => PS_GPIO_tri_t_7(7)
    );
PS_GPIO_tri_iobuf_8: component IOBUF
     port map (
      I => PS_GPIO_tri_o_8(8),
      IO => PS_GPIO_tri_io(8),
      O => PS_GPIO_tri_i_8(8),
      T => PS_GPIO_tri_t_8(8)
    );
PS_GPIO_tri_iobuf_9: component IOBUF
     port map (
      I => PS_GPIO_tri_o_9(9),
      IO => PS_GPIO_tri_io(9),
      O => PS_GPIO_tri_i_9(9),
      T => PS_GPIO_tri_t_9(9)
    );
hdmi_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_ddc_scl_o,
      IO => hdmi_ddc_scl_io,
      O => hdmi_ddc_scl_i,
      T => hdmi_ddc_scl_t
    );
hdmi_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_ddc_sda_o,
      IO => hdmi_ddc_sda_io,
      O => hdmi_ddc_sda_i,
      T => hdmi_ddc_sda_t
    );
hw_1_i: component hw_1
     port map (
      CLK100_IN => CLK100_IN,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      N_ANODES(3 downto 0) => N_ANODES(3 downto 0),
      N_SEGMENTS(7 downto 0) => N_SEGMENTS(7 downto 0),
      ONE_HZ => ONE_HZ,
      PS_GPIO_tri_i(60) => PS_GPIO_tri_i_60(60),
      PS_GPIO_tri_i(59) => PS_GPIO_tri_i_59(59),
      PS_GPIO_tri_i(58) => PS_GPIO_tri_i_58(58),
      PS_GPIO_tri_i(57) => PS_GPIO_tri_i_57(57),
      PS_GPIO_tri_i(56) => PS_GPIO_tri_i_56(56),
      PS_GPIO_tri_i(55) => PS_GPIO_tri_i_55(55),
      PS_GPIO_tri_i(54) => PS_GPIO_tri_i_54(54),
      PS_GPIO_tri_i(53) => PS_GPIO_tri_i_53(53),
      PS_GPIO_tri_i(52) => PS_GPIO_tri_i_52(52),
      PS_GPIO_tri_i(51) => PS_GPIO_tri_i_51(51),
      PS_GPIO_tri_i(50) => PS_GPIO_tri_i_50(50),
      PS_GPIO_tri_i(49) => PS_GPIO_tri_i_49(49),
      PS_GPIO_tri_i(48) => PS_GPIO_tri_i_48(48),
      PS_GPIO_tri_i(47) => PS_GPIO_tri_i_47(47),
      PS_GPIO_tri_i(46) => PS_GPIO_tri_i_46(46),
      PS_GPIO_tri_i(45) => PS_GPIO_tri_i_45(45),
      PS_GPIO_tri_i(44) => PS_GPIO_tri_i_44(44),
      PS_GPIO_tri_i(43) => PS_GPIO_tri_i_43(43),
      PS_GPIO_tri_i(42) => PS_GPIO_tri_i_42(42),
      PS_GPIO_tri_i(41) => PS_GPIO_tri_i_41(41),
      PS_GPIO_tri_i(40) => PS_GPIO_tri_i_40(40),
      PS_GPIO_tri_i(39) => PS_GPIO_tri_i_39(39),
      PS_GPIO_tri_i(38) => PS_GPIO_tri_i_38(38),
      PS_GPIO_tri_i(37) => PS_GPIO_tri_i_37(37),
      PS_GPIO_tri_i(36) => PS_GPIO_tri_i_36(36),
      PS_GPIO_tri_i(35) => PS_GPIO_tri_i_35(35),
      PS_GPIO_tri_i(34) => PS_GPIO_tri_i_34(34),
      PS_GPIO_tri_i(33) => PS_GPIO_tri_i_33(33),
      PS_GPIO_tri_i(32) => PS_GPIO_tri_i_32(32),
      PS_GPIO_tri_i(31) => PS_GPIO_tri_i_31(31),
      PS_GPIO_tri_i(30) => PS_GPIO_tri_i_30(30),
      PS_GPIO_tri_i(29) => PS_GPIO_tri_i_29(29),
      PS_GPIO_tri_i(28) => PS_GPIO_tri_i_28(28),
      PS_GPIO_tri_i(27) => PS_GPIO_tri_i_27(27),
      PS_GPIO_tri_i(26) => PS_GPIO_tri_i_26(26),
      PS_GPIO_tri_i(25) => PS_GPIO_tri_i_25(25),
      PS_GPIO_tri_i(24) => PS_GPIO_tri_i_24(24),
      PS_GPIO_tri_i(23) => PS_GPIO_tri_i_23(23),
      PS_GPIO_tri_i(22) => PS_GPIO_tri_i_22(22),
      PS_GPIO_tri_i(21) => PS_GPIO_tri_i_21(21),
      PS_GPIO_tri_i(20) => PS_GPIO_tri_i_20(20),
      PS_GPIO_tri_i(19) => PS_GPIO_tri_i_19(19),
      PS_GPIO_tri_i(18) => PS_GPIO_tri_i_18(18),
      PS_GPIO_tri_i(17) => PS_GPIO_tri_i_17(17),
      PS_GPIO_tri_i(16) => PS_GPIO_tri_i_16(16),
      PS_GPIO_tri_i(15) => PS_GPIO_tri_i_15(15),
      PS_GPIO_tri_i(14) => PS_GPIO_tri_i_14(14),
      PS_GPIO_tri_i(13) => PS_GPIO_tri_i_13(13),
      PS_GPIO_tri_i(12) => PS_GPIO_tri_i_12(12),
      PS_GPIO_tri_i(11) => PS_GPIO_tri_i_11(11),
      PS_GPIO_tri_i(10) => PS_GPIO_tri_i_10(10),
      PS_GPIO_tri_i(9) => PS_GPIO_tri_i_9(9),
      PS_GPIO_tri_i(8) => PS_GPIO_tri_i_8(8),
      PS_GPIO_tri_i(7) => PS_GPIO_tri_i_7(7),
      PS_GPIO_tri_i(6) => PS_GPIO_tri_i_6(6),
      PS_GPIO_tri_i(5) => PS_GPIO_tri_i_5(5),
      PS_GPIO_tri_i(4) => PS_GPIO_tri_i_4(4),
      PS_GPIO_tri_i(3) => PS_GPIO_tri_i_3(3),
      PS_GPIO_tri_i(2) => PS_GPIO_tri_i_2(2),
      PS_GPIO_tri_i(1) => PS_GPIO_tri_i_1(1),
      PS_GPIO_tri_i(0) => PS_GPIO_tri_i_0(0),
      PS_GPIO_tri_o(60) => PS_GPIO_tri_o_60(60),
      PS_GPIO_tri_o(59) => PS_GPIO_tri_o_59(59),
      PS_GPIO_tri_o(58) => PS_GPIO_tri_o_58(58),
      PS_GPIO_tri_o(57) => PS_GPIO_tri_o_57(57),
      PS_GPIO_tri_o(56) => PS_GPIO_tri_o_56(56),
      PS_GPIO_tri_o(55) => PS_GPIO_tri_o_55(55),
      PS_GPIO_tri_o(54) => PS_GPIO_tri_o_54(54),
      PS_GPIO_tri_o(53) => PS_GPIO_tri_o_53(53),
      PS_GPIO_tri_o(52) => PS_GPIO_tri_o_52(52),
      PS_GPIO_tri_o(51) => PS_GPIO_tri_o_51(51),
      PS_GPIO_tri_o(50) => PS_GPIO_tri_o_50(50),
      PS_GPIO_tri_o(49) => PS_GPIO_tri_o_49(49),
      PS_GPIO_tri_o(48) => PS_GPIO_tri_o_48(48),
      PS_GPIO_tri_o(47) => PS_GPIO_tri_o_47(47),
      PS_GPIO_tri_o(46) => PS_GPIO_tri_o_46(46),
      PS_GPIO_tri_o(45) => PS_GPIO_tri_o_45(45),
      PS_GPIO_tri_o(44) => PS_GPIO_tri_o_44(44),
      PS_GPIO_tri_o(43) => PS_GPIO_tri_o_43(43),
      PS_GPIO_tri_o(42) => PS_GPIO_tri_o_42(42),
      PS_GPIO_tri_o(41) => PS_GPIO_tri_o_41(41),
      PS_GPIO_tri_o(40) => PS_GPIO_tri_o_40(40),
      PS_GPIO_tri_o(39) => PS_GPIO_tri_o_39(39),
      PS_GPIO_tri_o(38) => PS_GPIO_tri_o_38(38),
      PS_GPIO_tri_o(37) => PS_GPIO_tri_o_37(37),
      PS_GPIO_tri_o(36) => PS_GPIO_tri_o_36(36),
      PS_GPIO_tri_o(35) => PS_GPIO_tri_o_35(35),
      PS_GPIO_tri_o(34) => PS_GPIO_tri_o_34(34),
      PS_GPIO_tri_o(33) => PS_GPIO_tri_o_33(33),
      PS_GPIO_tri_o(32) => PS_GPIO_tri_o_32(32),
      PS_GPIO_tri_o(31) => PS_GPIO_tri_o_31(31),
      PS_GPIO_tri_o(30) => PS_GPIO_tri_o_30(30),
      PS_GPIO_tri_o(29) => PS_GPIO_tri_o_29(29),
      PS_GPIO_tri_o(28) => PS_GPIO_tri_o_28(28),
      PS_GPIO_tri_o(27) => PS_GPIO_tri_o_27(27),
      PS_GPIO_tri_o(26) => PS_GPIO_tri_o_26(26),
      PS_GPIO_tri_o(25) => PS_GPIO_tri_o_25(25),
      PS_GPIO_tri_o(24) => PS_GPIO_tri_o_24(24),
      PS_GPIO_tri_o(23) => PS_GPIO_tri_o_23(23),
      PS_GPIO_tri_o(22) => PS_GPIO_tri_o_22(22),
      PS_GPIO_tri_o(21) => PS_GPIO_tri_o_21(21),
      PS_GPIO_tri_o(20) => PS_GPIO_tri_o_20(20),
      PS_GPIO_tri_o(19) => PS_GPIO_tri_o_19(19),
      PS_GPIO_tri_o(18) => PS_GPIO_tri_o_18(18),
      PS_GPIO_tri_o(17) => PS_GPIO_tri_o_17(17),
      PS_GPIO_tri_o(16) => PS_GPIO_tri_o_16(16),
      PS_GPIO_tri_o(15) => PS_GPIO_tri_o_15(15),
      PS_GPIO_tri_o(14) => PS_GPIO_tri_o_14(14),
      PS_GPIO_tri_o(13) => PS_GPIO_tri_o_13(13),
      PS_GPIO_tri_o(12) => PS_GPIO_tri_o_12(12),
      PS_GPIO_tri_o(11) => PS_GPIO_tri_o_11(11),
      PS_GPIO_tri_o(10) => PS_GPIO_tri_o_10(10),
      PS_GPIO_tri_o(9) => PS_GPIO_tri_o_9(9),
      PS_GPIO_tri_o(8) => PS_GPIO_tri_o_8(8),
      PS_GPIO_tri_o(7) => PS_GPIO_tri_o_7(7),
      PS_GPIO_tri_o(6) => PS_GPIO_tri_o_6(6),
      PS_GPIO_tri_o(5) => PS_GPIO_tri_o_5(5),
      PS_GPIO_tri_o(4) => PS_GPIO_tri_o_4(4),
      PS_GPIO_tri_o(3) => PS_GPIO_tri_o_3(3),
      PS_GPIO_tri_o(2) => PS_GPIO_tri_o_2(2),
      PS_GPIO_tri_o(1) => PS_GPIO_tri_o_1(1),
      PS_GPIO_tri_o(0) => PS_GPIO_tri_o_0(0),
      PS_GPIO_tri_t(60) => PS_GPIO_tri_t_60(60),
      PS_GPIO_tri_t(59) => PS_GPIO_tri_t_59(59),
      PS_GPIO_tri_t(58) => PS_GPIO_tri_t_58(58),
      PS_GPIO_tri_t(57) => PS_GPIO_tri_t_57(57),
      PS_GPIO_tri_t(56) => PS_GPIO_tri_t_56(56),
      PS_GPIO_tri_t(55) => PS_GPIO_tri_t_55(55),
      PS_GPIO_tri_t(54) => PS_GPIO_tri_t_54(54),
      PS_GPIO_tri_t(53) => PS_GPIO_tri_t_53(53),
      PS_GPIO_tri_t(52) => PS_GPIO_tri_t_52(52),
      PS_GPIO_tri_t(51) => PS_GPIO_tri_t_51(51),
      PS_GPIO_tri_t(50) => PS_GPIO_tri_t_50(50),
      PS_GPIO_tri_t(49) => PS_GPIO_tri_t_49(49),
      PS_GPIO_tri_t(48) => PS_GPIO_tri_t_48(48),
      PS_GPIO_tri_t(47) => PS_GPIO_tri_t_47(47),
      PS_GPIO_tri_t(46) => PS_GPIO_tri_t_46(46),
      PS_GPIO_tri_t(45) => PS_GPIO_tri_t_45(45),
      PS_GPIO_tri_t(44) => PS_GPIO_tri_t_44(44),
      PS_GPIO_tri_t(43) => PS_GPIO_tri_t_43(43),
      PS_GPIO_tri_t(42) => PS_GPIO_tri_t_42(42),
      PS_GPIO_tri_t(41) => PS_GPIO_tri_t_41(41),
      PS_GPIO_tri_t(40) => PS_GPIO_tri_t_40(40),
      PS_GPIO_tri_t(39) => PS_GPIO_tri_t_39(39),
      PS_GPIO_tri_t(38) => PS_GPIO_tri_t_38(38),
      PS_GPIO_tri_t(37) => PS_GPIO_tri_t_37(37),
      PS_GPIO_tri_t(36) => PS_GPIO_tri_t_36(36),
      PS_GPIO_tri_t(35) => PS_GPIO_tri_t_35(35),
      PS_GPIO_tri_t(34) => PS_GPIO_tri_t_34(34),
      PS_GPIO_tri_t(33) => PS_GPIO_tri_t_33(33),
      PS_GPIO_tri_t(32) => PS_GPIO_tri_t_32(32),
      PS_GPIO_tri_t(31) => PS_GPIO_tri_t_31(31),
      PS_GPIO_tri_t(30) => PS_GPIO_tri_t_30(30),
      PS_GPIO_tri_t(29) => PS_GPIO_tri_t_29(29),
      PS_GPIO_tri_t(28) => PS_GPIO_tri_t_28(28),
      PS_GPIO_tri_t(27) => PS_GPIO_tri_t_27(27),
      PS_GPIO_tri_t(26) => PS_GPIO_tri_t_26(26),
      PS_GPIO_tri_t(25) => PS_GPIO_tri_t_25(25),
      PS_GPIO_tri_t(24) => PS_GPIO_tri_t_24(24),
      PS_GPIO_tri_t(23) => PS_GPIO_tri_t_23(23),
      PS_GPIO_tri_t(22) => PS_GPIO_tri_t_22(22),
      PS_GPIO_tri_t(21) => PS_GPIO_tri_t_21(21),
      PS_GPIO_tri_t(20) => PS_GPIO_tri_t_20(20),
      PS_GPIO_tri_t(19) => PS_GPIO_tri_t_19(19),
      PS_GPIO_tri_t(18) => PS_GPIO_tri_t_18(18),
      PS_GPIO_tri_t(17) => PS_GPIO_tri_t_17(17),
      PS_GPIO_tri_t(16) => PS_GPIO_tri_t_16(16),
      PS_GPIO_tri_t(15) => PS_GPIO_tri_t_15(15),
      PS_GPIO_tri_t(14) => PS_GPIO_tri_t_14(14),
      PS_GPIO_tri_t(13) => PS_GPIO_tri_t_13(13),
      PS_GPIO_tri_t(12) => PS_GPIO_tri_t_12(12),
      PS_GPIO_tri_t(11) => PS_GPIO_tri_t_11(11),
      PS_GPIO_tri_t(10) => PS_GPIO_tri_t_10(10),
      PS_GPIO_tri_t(9) => PS_GPIO_tri_t_9(9),
      PS_GPIO_tri_t(8) => PS_GPIO_tri_t_8(8),
      PS_GPIO_tri_t(7) => PS_GPIO_tri_t_7(7),
      PS_GPIO_tri_t(6) => PS_GPIO_tri_t_6(6),
      PS_GPIO_tri_t(5) => PS_GPIO_tri_t_5(5),
      PS_GPIO_tri_t(4) => PS_GPIO_tri_t_4(4),
      PS_GPIO_tri_t(3) => PS_GPIO_tri_t_3(3),
      PS_GPIO_tri_t(2) => PS_GPIO_tri_t_2(2),
      PS_GPIO_tri_t(1) => PS_GPIO_tri_t_1(1),
      PS_GPIO_tri_t(0) => PS_GPIO_tri_t_0(0),
      hdmi_ddc_scl_i => hdmi_ddc_scl_i,
      hdmi_ddc_scl_o => hdmi_ddc_scl_o,
      hdmi_ddc_scl_t => hdmi_ddc_scl_t,
      hdmi_ddc_sda_i => hdmi_ddc_sda_i,
      hdmi_ddc_sda_o => hdmi_ddc_sda_o,
      hdmi_ddc_sda_t => hdmi_ddc_sda_t,
      hdmi_hpd_tri_i => hdmi_hpd_tri_i,
      hdmi_out_tmds_clk_n => hdmi_out_tmds_clk_n,
      hdmi_out_tmds_clk_p => hdmi_out_tmds_clk_p,
      hdmi_out_tmds_data_n(2 downto 0) => hdmi_out_tmds_data_n(2 downto 0),
      hdmi_out_tmds_data_p(2 downto 0) => hdmi_out_tmds_data_p(2 downto 0),
      iic_gyro_scl_i => iic_gyro_scl_i,
      iic_gyro_scl_o => iic_gyro_scl_o,
      iic_gyro_scl_t => iic_gyro_scl_t,
      iic_gyro_sda_i => iic_gyro_sda_i,
      iic_gyro_sda_o => iic_gyro_sda_o,
      iic_gyro_sda_t => iic_gyro_sda_t
    );
iic_gyro_scl_iobuf: component IOBUF
     port map (
      I => iic_gyro_scl_o,
      IO => iic_gyro_scl_io,
      O => iic_gyro_scl_i,
      T => iic_gyro_scl_t
    );
iic_gyro_sda_iobuf: component IOBUF
     port map (
      I => iic_gyro_sda_o,
      IO => iic_gyro_sda_io,
      O => iic_gyro_sda_i,
      T => iic_gyro_sda_t
    );
end STRUCTURE;
