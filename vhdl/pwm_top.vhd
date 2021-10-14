library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm_top is
  generic (counter_width : positive := 8;
           bus_width  : positive := 1;
           cells      : positive := 80
           );

  port(
    clk_in, serial_clk, serial_select : in  std_logic;
    din               : in  std_logic_vector(bus_width-1 downto 0);
	 wrap_in : in std_logic;
	 wrap_out : out std_logic := '0';
	 tp1, tn1             : out std_logic_vector(15 downto 0) := (others => '0');
    tp2, tn2             : out std_logic_vector(15 downto 0) := (others => '0');
    tp3, tn3             : out std_logic_vector(15 downto 0) := (others => '0');
    tp4, tn4             : out std_logic_vector(15 downto 0) := (others => '0');
    tp5, tn5             : out std_logic_vector(15 downto 0) := (others => '0')
    );
end pwm_top;

architecture Behave of pwm_top is
  constant clk_period : time := 10 ns;
  signal clk : std_logic := '0';
  signal pullups, pulldowns : std_logic_vector(cells-1 downto 0) := (others => '0');

begin
	tp1 <= pullups(15 downto 0);
	tp2 <= pullups(31 downto 16);
	tp3 <= pullups(47 downto 32);
	tp4 <= pullups(63 downto 48);
	tp5 <= pullups(79 downto 64);

	tn1 <= pulldowns(15 downto 0);
	tn2 <= pulldowns(31 downto 16);
	tn3 <= pulldowns(47 downto 32);
	tn4 <= pulldowns(63 downto 48);
	tn5 <= pulldowns(79 downto 64);

	--ck0 : entity work.clk_wiz_v3_6 port map (clk_in, clk);
	ck0 : entity work.clock_pll port map(clk_in, clk);
	--todo: run serial clock through a BUFG. Not sure if that's done automatically

	controller : entity work.pwm_controller
		generic map (counter_width, bus_width, cells, 10)
		port map (clk, serial_clk, serial_select, din, wrap_in, wrap_out, pullups, pulldowns);

end Behave;
