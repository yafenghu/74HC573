
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
port(CLK:in std_logic; 
clkc:out std_logic;
clkb:out std_logic;
--G: in std_logic_vector(0 to 5); 
D: OUT std_logic_vector(0 to 7));
--E: OUT std_logic_vector(0 to 7));
end top; 

architecture Behavioral of top is
--signal clka:std_logic;
--signal clkb:std_logic;
--signal tmp1:std_logic:='0';
signal count: std_logic_vector(26 downto 0):=(others=>'0'); 

begin

process (clk)  
begin 
if rising_edge(clk) then
count<=count+1;   
end if; 
end process;
clkb<= count(2);
clkc<= count(2); 
D <= count(26 downto 19);
--E <= count(13 downto 6);



end Behavioral;