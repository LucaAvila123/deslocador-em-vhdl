----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2022 02:10:05 PM
-- Design Name: 
-- Module Name: eqtop - arch
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

entity eqtop is
--  Port ( );
    port(
          sw     : in  std_logic_vector(7 downto 0);
          
          led   : out std_logic_vector(7 downto 0)
          );
end eqtop;

architecture arch of eqtop is

begin
    deslocador : entity work.mux_cod(arch)
        port map(
            shift => sw(7 downto 5),
            x     => sw(4 downto 0),
            
            saida => led(7 downto 0)
            
            
        );

end arch;
