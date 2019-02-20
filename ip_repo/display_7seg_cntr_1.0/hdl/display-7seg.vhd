----------------------------------------------------------------------------------
-- Company: Real Digital
-- Engineer: Rick Hoover
-- 
-- Create Date: 12/13/2017 08:54:21 AM
-- Design Name: 7-Segment display control module
-- Module Name: display-7seg - Behavioral
-- Project Name: Blackboard
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
--
-- Display layout
--     AN3     AN2    AN1    AN0
--      0
--     ----    ----   ----   ---- 
--    5|  |1   |  |   |  |   |  |
--    6----    ----   ----   ----
--    4|  |2   |  |   |  |   |  |
--     ----    ---- . ---- . ---- .
--      3           7
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_7seg is
    Port ( Data : in STD_LOGIC_VECTOR (31 downto 0);
           Segments : out STD_LOGIC_VECTOR (7 downto 0);
           Anodes : out STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end display_7seg;

architecture arch_imp of display_7seg is

TYPE state_type is (Blank_1, Anode_On, Blank_2);
  
SIGNAL state: state_type;        -- Current state
SIGNAL nexts: state_type;        -- Next state
SIGNAL anode: integer;           -- Current anode being driven
SIGNAL count: integer;           -- Counter
  
begin
  next_state: PROCESS (count)
  BEGIN
    IF (count = 0) THEN
      nexts <= Blank_1;
    ELSIF (count >= 249999) THEN
      nexts <= Blank_2;
    ELSE
      nexts <= Anode_On;
    END IF; 
  END PROCESS next_state;
  
  clock_sm: PROCESS (Clk, Reset)
  BEGIN
    IF (Reset = '1') THEN
      count <= 0;
      state <= Blank_1;
      anode <= 0;
      Anodes <= (others => '0');
        
    ELSIF rising_edge(Clk) THEN
      state <= nexts;
      
      CASE anode IS              -- Digit selection logic
        WHEN 0 =>
          Anodes <= b"1000";
          Segments <= Data (31 downto 24);
          
        WHEN 1 =>
          Anodes <= b"0100";
          Segments <= Data (23 downto 16);
          
        WHEN 2 =>
          Anodes <= b"0010";
          Segments <= Data (15 downto 8);
            
        WHEN 3 =>
          Anodes <= b"0001";
          Segments <= Data (7 downto 0);
          
        WHEN OTHERS =>
          Anodes <= (others => '0');
          Segments <= (others => '0');
      END CASE anode;

                                 -- Blank display during blank states
      IF (nexts = blank_1 OR nexts = blank_2) THEN
        Anodes <= (others => '0');
      END IF;
      
      IF (nexts = blank_2) THEN  -- Advance to next anode during blank_2
        count <= 0;
        IF (anode < 3) THEN
          anode <= anode + 1;
        ELSE
          anode <= 0;
        END IF;
      ELSE
        count <= count + 1;
      END IF;
    END IF;
  END PROCESS clock_sm;

end arch_imp;
