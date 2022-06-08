library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Shifter3bits is
      Port ( 
      
        x: in std_logic_vector (2 downto 0);
        fill: in std_logic;
        
        f: in std_logic_vector (2 downto 0);
        sout: out std_logic_vector (2 downto 0)
      );
end Shifter3bits;

architecture ShifterBehavioral of Shifter3bits is

    signal output : std_logic_vector (2 downto 0);
    signal inCode : std_logic_vector (1 downto 0);
    
begin

   PrioEncoder : entity work.PrioEncoder3x2 (EncoderBehavioral)
   port map(
        e => f,
        code => inCode   
   );
   
   Mux01 : entity work.MUX4x1(MuxBehavioral)
   port map(
        y(0) => x(2),
        y(1) => x(1),
        y(2) => fill,
        y(3) => x(0),
        c => inCode,
        s => output(2)
   ); 
    
   Mux02 : entity work.MUX4x1(MuxBehavioral)
   port map(
        y(0) => x(1),
        y(1) => x(0),
        y(2) => x(2),
        y(3) => x(2),
        c => inCode,
        s => output(1)
   ); 
    
   Mux03 : entity work.MUX4x1(MuxBehavioral)
   port map(
        y(0) => x(0),
        y(1) => fill,
        y(2) => x(1),
        y(3) => x(1),
        c => inCode,
        s => output(0)
   );
   
   sout <= output;

end ShifterBehavioral;
