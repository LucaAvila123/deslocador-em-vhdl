library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4x1 is
    port(
        y: in std_logic_vector(3 downto 0);
        c: in std_logic_vector(1 downto 0);
        
        s: out std_logic
    );
    
end MUX4x1;


architecture MuxBehavioral of MUX4x1 is

begin
    
    s <= y(0) when (c = "00") else
         y(1) when (c = "01") else
         y(2) when (c = "10") else
         y(3);

end MuxBehavioral;
