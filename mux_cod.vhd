library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux_cod is
    port(
        shift :      in  std_logic_vector(2 downto 0);
        x :          in std_logic_vector(4 downto 0); 
        saida      : out std_logic_vector(7 downto 0)
    );
end mux_cod;

architecture arch of mux_cod is
      
begin
       -- os primeios numeros impressos são desnecessarios funcionalmente, mas eles orientam qual operacao eh realizada
       saida <= "100" & '0' & '0' & x(2) & x(1)  &x(0) when (shift(2) = '1') else -- deslocamento para a direita
                "010" & '0' & x(1) & x(3) & x(2) & '0' when (shift(1) = '1') else -- deslocamento circular para a direita
                "001" & x(4) & x(3) & x(2) & '0' & '0' when (shift(0) = '1') else -- deslocamento para a esquerda
                "000" & '0' & x(3) & x(2) & x(1) & '0';                           -- sem deslocamento
end arch;
