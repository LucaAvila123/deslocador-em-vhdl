library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity eqtop is
    port(
        
          sw    : in  std_logic_vector(7 downto 0);
          
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
