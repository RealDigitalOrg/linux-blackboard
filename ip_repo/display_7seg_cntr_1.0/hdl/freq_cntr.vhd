----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/15/2017 05:09:55 PM
-- Design Name: 
-- Module Name: freq_cntr - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity freq_cntr is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           MeasClk : in STD_LOGIC;
           Div10 : in STD_LOGIC;
           FreqOut : out STD_LOGIC_VECTOR (31 downto 0);
           OneHz : out STD_LOGIC);
end freq_cntr;

architecture arch_imp of freq_cntr is

SIGNAL ClkToMeasure: STD_LOGIC;
SIGNAL ClkDiv10: STD_LOGIC;
SIGNAL Count: INTEGER RANGE 0 TO 9;
SIGNAL Counter: INTEGER RANGE 0 TO 100E6;
SIGNAL Flag: STD_LOGIC;
SIGNAL Pulses: INTEGER RANGE 0 TO 100E6;
SIGNAL SyncClock: STD_LOGIC;

begin
  ClkToMeasure <= MeasClk WHEN Div10 = '0' else
                  ClkDiv10 WHEN Div10 = '1';
                  
  ClkDiv10Proc: PROCESS (MeasClk, Reset)
  -- Proces to divide MeasClk by 10.  ClkDiv10 output has a 50% duty cycle.
  BEGIN
    IF (Reset = '1') THEN
      Count <= 0;
      ClkDiv10 <= '0';
      
    ELSIF (rising_edge(MeasClk)) THEN
      IF (Count < 9) THEN
         Count <= Count + 1;
      ELSE
         Count <= 0;
      END IF;
      
      IF (Count < 5) THEN
        ClkDiv10 <= '0';
      ELSE
        ClkDiv10 <= '1';
      END IF;
    END IF;
  END PROCESS ClkDiv10Proc;

  CounterProc: PROCESS (Clk, Reset)
  BEGIN
    IF (Reset = '1') THEN
      OneHz <= '0';
      Pulses <= 0;
      FreqOut <= (OTHERS => '0');
      SyncClock <= '0';
      
    ELSIF (rising_edge(Clk)) THEN
      IF (Counter < 100e6) THEN
        IF (Counter < 50e6) THEN
          OneHz <= '0';
        ELSE
          OneHz <= '1';
        END IF;
          
        IF (SyncClock = '1' AND Flag = '1') THEN
          -- Increment clock count on rising edge
          Pulses <= Pulses + 1;
          Flag <= '0';
        ELSIF (SyncClock = '0') THEN
          -- Clock is now low, set rising-edge trigger Flag
          Flag <= '1';
        END IF;
        
        -- Increment main clock counter
        Counter <= Counter + 1;
        
      ELSE
        -- Measurement time of 1 second complete, latch freqeuncy count
        -- and restart measurement for next interval
        Counter <= 0;
        FreqOut <= std_logic_vector(to_unsigned(Pulses, FreqOut'LENGTH));
        Pulses<=0;
      END IF;
      
      -- Bring ClkToMeasure into main clock domain
      SyncClock <= ClkToMeasure;
    END IF;
  END PROCESS CounterProc;

end arch_imp;
