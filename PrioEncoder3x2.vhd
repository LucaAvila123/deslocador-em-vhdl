library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity PrioEncoder3x2 is

    port(
        e: in std_logic_vector (2 downto 0);
        code: out std_logic_vector (1 downto 0)
    );

end PrioEncoder3x2;

architecture EncoderBehavioral of PrioEncoder3x2 is

begin

    code <= "11" when (e(2) = '1') else
            "10" when (e(1) = '1') else
            "01" when (e(0) = '1') else
            "00";

end EncoderBehavioral;
