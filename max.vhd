library ieee;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity max1 is port (
	clock		: in std_logic;
	left_val	: in std_logic_vector(7 downto 0);
	right_val	: in std_logic_vector(7 downto 0);
	max_val		: out std_logic_vector(7 downto 0);
	dir 		: out std_logic
	);
end max1;

architecture main of max1 is 
	process(clock)
	begin
		if (rising_edge(clock)) then
			if (left_val > right_val) then
				max_val <= left_val;
				dir <= '0';
			else
				max_val <= right_val;
				dir <= '1';
			end if;
		end if ;
	end process;
end main;