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
          swx2   : in  std_logic_vector(3 downto 3);   -- entrada correspondente a x2
          swx1   : in  std_logic_vector(2 downto 2);   -- entrada correspondente a x1
          swx0   : in  std_logic_vector(1 downto 1);   -- entrada correspondente a x0
          swx3   : in  std_logic_vector(4 downto 4);   -- entrada correspondente a x3
          swxm1  : in  std_logic_vector(0 downto 0);   -- entrada correspondente a xm1
          
          leds   : out std_logic_vector(5 downto 0)
          );
end eqtop;

architecture arch of eqtop is

begin
    deslocador : entity work.mux_cod(arch)
        port map(
            shift => swcod(15 downto 13),
            x2    => swx2(3 downto 3),
            x1    => swx1(2 downto 2),
            x0    => swx0(1 downto 1),
            x3    => swx3(4 downto 4),
            xm1   => swxm1(0 downto 0),
            
            saida => leds(5 downto 0)
            
            
        );

end arch;
