library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm_top is
  generic (data_width : positive := 8;
           bus_width  : positive := 1;
           cells      : positive := 80
           );

  port(
    clk_in, dclk, dlatch : in  std_logic;
    din                  : in  std_logic_vector(bus_width-1 downto 0);
    tp1, tn1             : out std_logic_vector(15 downto 0) := (others => '0');
    tp2, tn2             : out std_logic_vector(15 downto 0) := (others => '0');
    tp3, tn3             : out std_logic_vector(15 downto 0) := (others => '0');
    tp4, tn4             : out std_logic_vector(15 downto 0) := (others => '0');
    tp5, tn5             : out std_logic_vector(15 downto 0) := (others => '0')
    );
end pwm_top;
architecture Behave of pwm_top is
  constant clk_period : time                                    := 10 ns;
  signal clk          : std_logic                               := '0';
  signal dcount       : std_logic_vector(data_width-1 downto 0) := (others => '0');
  type DataThrough is array (cells downto 0) of std_logic_vector(bus_width-1 downto 0);
  signal dxchg        : DataThrough                             := (others => (others => '0'));
  signal xs, ys       : std_logic_vector(cells-1 downto 0)      := (others => '0');


begin
  tp1 <= xs(15 downto 0);
  tp2 <= xs(31 downto 16);
  tp3 <= xs(47 downto 32);
  tp4 <= xs(63 downto 48);
  tp5 <= xs(79 downto 64);

  tn1 <= ys(15 downto 0);
  tn2 <= ys(31 downto 16);
  tn3 <= ys(47 downto 32);
  tn4 <= ys(63 downto 48);
  tn5 <= ys(79 downto 64);

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
