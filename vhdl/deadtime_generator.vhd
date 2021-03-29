library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

--todo: this could be implemented more efficiently with a single deadtime signal coming from pwm_controller (possibly in the form of a delayed version of the one or two LSBs of the PWM counter)

entity deadtime_generator is
    port (
		clk : in std_logic;
		target_output : in  std_logic;
		pullup : out  std_logic := '0';
		pulldown : out  std_logic := '0');
	constant dg_counter_width : integer := 6;
	constant delay_counts : unsigned (dg_counter_width-1 downto 0) := to_unsigned(5, dg_counter_width);
end deadtime_generator;

architecture Behavioral of deadtime_generator is
	signal deadtime_counter : unsigned (dg_counter_width-1 downto 0) := (others => '0');
	signal target_follower : STD_LOGIC := '0';
begin
	process (clk)
	begin
		if rising_edge(clk) then
			target_follower <= target_output;
			if (deadtime_counter = to_unsigned(0, dg_counter_width) and target_follower /= target_output) then
				pullup <= '0';
				pulldown <= '0';
				deadtime_counter <= to_unsigned(1, dg_counter_width);
			end if;
			
			if (deadtime_counter /= to_unsigned(0, dg_counter_width)) then
				deadtime_counter <= deadtime_counter + 1;
			end if;
			
			if(deadtime_counter = DELAY_COUNTS) then
				deadtime_counter <= (others => '0');
				pullup <= target_output;
				pulldown <= not target_output;
			end if;
		end if;
	end process;

end Behavioral;

