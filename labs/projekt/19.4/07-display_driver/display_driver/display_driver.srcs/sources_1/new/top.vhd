----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2022 12:32:31
-- Design Name: 
-- Module Name: top - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( CLK100MHz : in STD_LOGIC;
           --SW : in STD_LOGIC_VECTOR (5 downto 0);
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           DP : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           BTNC : in STD_LOGIC);
end top;

architecture Behavioral of top is
------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------
begin

  --------------------------------------------------------
  -- Instance (copy) of driver_7seg_4digits entity
  driver_seg_4 : entity work.driver_7seg_4digits
      port map(
          clk        => CLK100MHZ,
          reset      => BTNC,
          --data0_i(5) => SW(5),
          --data0_i(4) => SW(4),
          --data0_i(3) => SW(3),
          --data0_i(2) => SW(2),
          --data0_i(1) => SW(1),
          --data0_i(0) => SW(0),
          -- WRITE YOUR CODE HERE
          --data1_i(5) => SW(5),
          --data1_i(4) => SW(4),
          --data1_i(3) => SW(3),
          --data1_i(2) => SW(2),
          --data1_i(1) => SW(1),
          --data1_i(0) => SW(0),
          
          --data2_i(5) => SW(5),
          --data2_i(4) => SW(4),
          --data2_i(3) => SW(3),
          --data2_i(2) => SW(2),
          --data2_i(1) => SW(1),
          --data2_i(0) => SW(0),
          
          --data3_i(5) => SW(5),
          --data3_i(4) => SW(4),
          --data3_i(3) => SW(3),
          --data3_i(2) => SW(2),
          --data3_i(1) => SW(1),
          --data3_i(0) => SW(0),
          
          --data4_i(5) => SW(5),
          --data4_i(4) => SW(4),
          --data4_i(3) => SW(3),
          --data4_i(2) => SW(2),
          --data4_i(1) => SW(1),
          --data4_i(0) => SW(0),
          
          --data5_i(5) => SW(5),
          --data5_i(4) => SW(4),
          --data5_i(3) => SW(3),
          --data5_i(2) => SW(2),
          --data5_i(1) => SW(1),
          --data5_i(0) => SW(0),
          
          --data6_i(5) => SW(5),
          --data6_i(4) => SW(4),
          --data6_i(3) => SW(3),
          --data6_i(2) => SW(2),
          --data6_i(1) => SW(1),
          --data6_i(0) => SW(0),
          
          --data7_i(5) => SW(5),
          --data7_i(4) => SW(4),
          --data7_i(3) => SW(3),
          --data7_i(2) => SW(2),
          --data7_i(1) => SW(1),
          --data7_i(0) => SW(0),
          dp_i => "11111110",
          
          seg_o(7) => DP,
          seg_o(6) => CA,
          seg_o(5) => CB,
          seg_o(4) => CC,
          seg_o(3) => CD,
          seg_o(2) => CE,
          seg_o(1) => CF,
          seg_o(0) => CG,
          
          
          dig_o(7 downto 0) => AN(7 downto 0)
      );

  -- Disconnect the top four digits of the 7-segment display
 

end architecture Behavioral;
--begin


--end Behavioral;
