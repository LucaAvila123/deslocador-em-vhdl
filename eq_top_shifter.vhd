library ieee;
use ieee.std_logic_1164.all;
entity eq_top is
   port(
      sw  : in  std_logic_vector(15 downto 0);
      led : out std_logic_vector(15 downto 0)
   );
end eq_top;

architecture struc_arch of eq_top is
begin
   
   shifter : entity work.Shifter3bits (ShifterBehavioral)
   port map(
        x => sw (2 downto 0),
        f => sw (15 downto 13),
        sout => led (9 downto 7),
        fill => sw(11)
   );
   
end struc_arch;
