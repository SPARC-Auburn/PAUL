library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm_tb is
end pwm_tb;
architecture Behave of pwm_tb is
  constant clk_period : time                                    := 10 ns;
  constant data_width : positive                                := 8;
  constant bus_width  : positive                                := 8;
  constant cells : positive := 64;


  signal clk          : std_logic                               := '0';
  signal dcount       : std_logic_vector(data_width-1 downto 0) := (others => '0');
  signal dclk         : std_logic                               := '0';
  signal dlatch       : std_logic                               := '0';

  type DataThrough is array (cells downto 0) of std_logic_vector(bus_width-1 downto 0);
  signal dxchg : DataThrough  := (others => (others => '0'));

  signal xs,ys : std_logic_vector(cells-1 downto 0) := (others => '0'); 
begin

  parr: for I in 0 to cells-1 generate
    REGX : entity work.pwm generic map (bus_width, data_width) port map(clk, dcount, dxchg(I), dxchg(I+1), dclk, dlatch, xs(I), ys(I));
  end generate parr;
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

  process (clk)
  begin
    if rising_edge(clk) then
      dcount <= std_logic_vector(unsigned(dcount)+1);
    end if;
  end process;
  dxchg(0) <= "1100" & "0100", "0000" & "1000" after 2*clk_period;

  dclk <= '0', '1' after 1*clk_period,
          '0' after 2*clk_period, '1' after 3*clk_period,
          '0' after 4*clk_period;

  dlatch <= '0', '1' after 5*clk_period;
end Behave;
