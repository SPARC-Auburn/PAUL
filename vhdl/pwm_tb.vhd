library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm_tb is
end pwm_tb;
architecture Behave of pwm_tb is
  constant clk_period : time := 10 ns;
  constant serial_clk_period : time := 15 ns;
  constant counter_width : positive := 4;
  constant bus_width  : positive := 1;
  constant cells : positive := 2;


  signal clk : std_logic := '0';
  signal serial_clk : std_logic := '0';
  signal serial_select : std_logic := '1';
  signal din : std_logic_vector(bus_width-1 downto 0);
  signal wrap_in : std_logic := '0';
  signal wrap_out : std_logic := '0';
  signal pulldowns, pullups : std_logic_vector(cells-1 downto 0) := (others => '0'); 
begin

	controller : entity work.pwm_controller
		generic map (counter_width, bus_width, cells, 4)
		port map (clk, serial_clk, serial_select, din, wrap_in, wrap_out, pullups, pulldowns);

  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
  
	process
		constant test_phases : std_logic_vector(counter_width*2*cells - 1 downto 0) := "00101110" & "10000000";		--cell 0: 50% duty cycle, no phase shift; cell 1: 25% duty cycle, some phase shift
	begin
		wait for 500 ns;
		serial_select <= '0';
		for i in (test_phases'length / bus_width - 1) downto 0 loop
			din <= test_phases((i + 1) * bus_width - 1 downto i * bus_width);
			wait for serial_clk_period/2;
			serial_clk <= '1';
			wait for serial_clk_period/2;
			serial_clk <= '0';
		end loop;
		serial_select <= '1';
		wait;
	end process;

	wrap_in <= wrap_out;		--Represents physical wiring
end Behave;
