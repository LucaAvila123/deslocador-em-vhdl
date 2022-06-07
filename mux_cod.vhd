----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2022 01:44:02 PM
-- Design Name: 
-- Module Name: mux_cod - arch
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

entity mux_cod is
--  Port ( );
    port(
        shift :      in  std_logic_vector(2 downto 0); -- entrada do codificador de prioridade
        -- c1c0  :      inout std_logic_vector(1 downto 0); -- saida do codificador de prioridade (vendo se dá pra usar entrada e saída ao mesmo tempo)
        
        x : in std_logic (4 downto 0); --entradas usando um vetor
        
        
        saida      : out std_logic_vector(7 downto 0)
        
    );
end mux_cod;

architecture arch of mux_cod is
      
begin
      -- c1c0 <= "11" when (shift(3) = '1') else
              -- "10" when (shift(2) = '1') else
              -- "01" when (shift(1) = '1') else
              -- "00";
       
       -- os primeios numeros impressos são desnecessarios funcionalmente, mas eles orientam qual operacao eh realizada
       saida <= "100" & '0' & x(1) & x(3) & x(2) & '0' when (shift(2) = '1') else -- deslocamento circular para a direita
                "010" & '0' & '0' & x(2) & x(1) &x(0) when (shift(1) = '1') else -- deslocamento para a direita
                "001" & x(4) & x(3) & x(2) & '0' & '0' when (shift(0) = '1') else -- deslocamento para a esquerda
                "000" & '0' & x(3) & x(2) & x(1) & '0';                           -- sem deslocamento
end arch;
