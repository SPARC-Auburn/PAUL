library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm_top is
  generic (data_width : positive := 8;
           bus_width  : positive := 8;
           cells      : positive := 32
           );

  port(
    clk_in, dclk, dlatch : in  std_logic;
    din               : in  std_logic_vector(bus_width-1 downto 0);
    xs, ys            : out std_logic_vector(cells-1 downto 0) := (others => '0')
    );
end pwm_top;
architecture Behave of pwm_top is
  constant clk_period : time := 10 ns;
  signal clk : std_logic := '0';
  signal dcount : std_logic_vector(data_width-1 downto 0) := (others => '0');
  type DataThrough is array (cells downto 0) of std_logic_vector(bus_width-1 downto 0);
  signal dxchg  : DataThrough                             := (others => (others => '0'));

begin
  ck0 : entity work.clk_wiz_v3_6 port map (clk_in, clk);
  
  parr : for I in 0 to cells-1 generate
    REGX : entity work.pwm generic map (bus_width, data_width) port map(clk, dcount, dxchg(I), dxchg(I+1), dclk, dlatch, xs(I), ys(I));
  end generate parr;

  process (clk)
  begin
    if rising_edge(clk) then
      dcount <= std_logic_vector(unsigned(dcount)+1);
    end if;
  end process;

  dxchg(0) <= din;

end Behave;
