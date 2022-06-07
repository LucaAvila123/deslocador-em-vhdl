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
          swcod  : in  std_logic_vector(15 downto 13); -- 3 switches para o codificador
          swx    : in  std_logic_vector(4 downto 0);
          
          leds   : out std_logic_vector(7 downto 0)
          );
end eqtop;

architecture arch of eqtop is

begin
    deslocador : entity work.mux_cod(arch)
        port map(
            shift => swcod(15 downto 13),
            x     => swx(4 downto 0),
            
            saida => leds(7 downto 0)
            
            
        );

end arch;
