library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm_comparator is
  generic (
    bus_width  : positive;
    counter_width : positive;
	 pwm_max : unsigned);		--deliberately unconstrained size; can't use counter_width in another generic
  port (
    clk    : in  std_logic;
    pwm_counter : in  unsigned(counter_width-1 downto 0);
    din    : in  std_logic_vector(bus_width-1 downto 0);
    dout   : out std_logic_vector(bus_width-1 downto 0);
    serial_clk   : in  std_logic;
	 serial_select : in std_logic;		--not synchronized to clk
    update_ready : in  std_logic;		--this is synchronized to clk
    pullup, pulldown : out std_logic
    );


end pwm_comparator;

architecture Behave of pwm_comparator is
	signal buf, setting                       : std_logic_vector(2*counter_width-1 downto 0) := (others => '0');
	signal last_dclk, last_dlatch, last_count : std_logic                                 := '0';
	signal output		                        : std_logic              						  := '0';
  
	alias rise_value : std_logic_vector(counter_width-1 downto 0) is setting(counter_width-1 downto 0);		--Not sure how to do an unsigned alias of a std_logic_vector type
	alias fall_value : std_logic_vector(counter_width-1 downto 0) is setting(2*counter_width-1 downto counter_width);

begin

	deadtime_generator : entity work.deadtime_generator
		port map (clk, output, pullup, pulldown);

	process (clk)
	begin
		if rising_edge(clk) then
			if (pwm_counter = unsigned(fall_value)) then
				output <= '0';
			elsif (pwm_counter = unsigned(rise_value)) then
				output <= '1';
			end if;
			
			if (update_ready = '1' and pwm_counter = pwm_max) then
				setting <= buf;
			end if;
		end if;
	end process;

	process (serial_clk)
	begin
		if rising_edge(serial_clk) then
			if (serial_select = '0') then
				buf <= buf(2*counter_width-1-bus_width downto 0) & din;
			end if;
		end if;
	end process;
	
	dout <= buf(2*counter_width-1 downto 2*counter_width-bus_width);
end Behave;
