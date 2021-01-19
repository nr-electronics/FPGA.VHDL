LIBRARY ieee;
use ieee.std_logic_1164.ALL;
	
	entity KEYsLEDs is
	port(
	key: in std_logic_vector (1 downto 0);
	led: out std_logic_vector (7 downto 0)
	);
	end KEYsLEDs;
	
architecture RTL of KEYsLEDs is
begin
	
   LED(0) <= not key(0);
	LED(1) <= not key(1);
	LED(2) <= not key(0);
	LED(3) <= not key(1);
	LED(4) <= not key(0);
	
	LED(5) <= not key(0) xor not key(1);
	LED(6) <= not key(0) and not key(1);
	LED(7) <= not key(0)  or not key(1);
		
end RTL;
	