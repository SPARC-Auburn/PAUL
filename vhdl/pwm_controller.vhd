library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

-- The pwm_controller instantiates pwm_comparators and contains counter logic.
-- Serial communication is SPI with CPOL = 0 and CPHA = 0. Data is read on the rising edge, and the clock is low when idle.

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_controller is
  generic (counter_width : positive;
           bus_width  : positive;
           cells      : positive;
			  prescale_factor : positive);

  port(
    clk, serial_clk : in std_logic;
	 serial_select : in std_logic;		--active low
    din               : in  std_logic_vector(bus_width-1 downto 0);
	 wrap_in : in std_logic;		--The signal that causes the pwm_counter to wrap around; used for synchronizing multiple FPGAs.
	 wrap_out : out std_logic;		--A wraparound is signaled with a positive pulse that lasts for at least a single increment of the pwm counter.
    pullups, pulldowns            : out std_logic_vector(cells-1 downto 0) := (others => '0')
    );
end pwm_controller;

architecture Behave of pwm_controller is
	constant pwm_max : unsigned(counter_width-1 downto 0) := (others => '1');		--Stops counting at this value and waits for wrap_in
	signal pwm_counter : unsigned(counter_width-1 downto 0) := (others => '0');
	signal update_ready : std_logic := '0';		--Phase updates should only occur when the counter wraps around. A new serial transmission should not begin until the wraparound has been reached.
	signal has_updated : std_logic := '0';
	signal serial_select_1, serial_select_2, serial_select_3 : std_logic := '1';
	signal wrap_in_1, wrap_in_2, wrap_in_3 : std_logic := '0';
	signal prescaler_counter : unsigned(15 downto 0) := (others => '0');
	type DataThrough is array (cells downto 0) of std_logic_vector(bus_width-1 downto 0);
	signal dxchg  : DataThrough                             := (others => (others => '0'));		--connects the pwm comparators into a long shift register

begin

	parr : for I in 0 to cells-1 generate
		REGX : entity work.pwm_comparator
			generic map (bus_width, counter_width, pwm_max)
			port map(clk, pwm_counter, dxchg(I), dxchg(I+1), serial_clk, serial_select, update_ready, pullups(I), pulldowns(I));
	end generate parr;

	process (clk)
	begin
		if rising_edge(clk) then
			wrap_in_1 <= wrap_in;
			wrap_in_2 <= wrap_in_1;
			wrap_in_3 <= wrap_in_2;
			if (wrap_in_2 = '1' and wrap_in_3 = '0') then
				pwm_counter <= (others => '0');
				prescaler_counter <= (others => '0');
				if (update_ready = '1') then
					has_updated <= '1';
				end if;
			else
				prescaler_counter <= prescaler_counter + 1;
				if (prescaler_counter = to_unsigned(prescale_factor, prescaler_counter'length) - 1) then
					prescaler_counter <= (others => '0');
					if (pwm_counter /= pwm_max) then
						pwm_counter <= pwm_counter + 1;
						if (has_updated = '1') then
							update_ready <= '0';
							has_updated <= '0';
						end if;
						wrap_out <= '0';
					else
						wrap_out <= '1';
					end if;
				end if;
			end if;
			
			serial_select_1 <= serial_select;
			serial_select_2 <= serial_select_1;
			serial_select_3 <= serial_select_2;
			if (serial_select_2 = '1' and serial_select_3 = '0') then
				update_ready <= '1';
			end if;
		end if;
	end process;

	dxchg(0) <= din;

end Behave;