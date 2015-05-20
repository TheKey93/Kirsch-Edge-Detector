library ieee;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity max8 is port (
	clock		: in std_logic;
	left_val	: in unsigned(15 downto 0);
	right_val	: in unsigned(15 downto 0);
	max_val		: out unsigned(15 downto 0);
	dir 		: out std_logic
	);
end max8;

architecture main of max8 is 
	signal difference : signed (16 downto 0);
begin 
	process (right_val, left_val)
	begin
		--wait until rising_edge(clock);
		--difference <= signed("0" & right_val) - signed("0" & left_val);
		--if difference(16) = '1' then
		if (left_val > right_val) then
			max_val <= unsigned(left_val);
			dir <= '0';
		else
			max_val <= unsigned(right_val);
			dir <= '1';
		end if;
		
	end process;
end main;