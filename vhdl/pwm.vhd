library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm is
  generic (
    bus_width  : positive := 1;
    data_width : positive := 8);
  port (
    clk    : in  std_logic;
    dcount : in  std_logic_vector(data_width-1 downto 0);
    din    : in  std_logic_vector(bus_width-1 downto 0);
    dout   : out std_logic_vector(bus_width-1 downto 0);
    dclk   : in  std_logic;
    dlatch : in  std_logic;
    xo, yo : out std_logic
    );


end pwm;
architecture Behave of pwm is
  signal buf, setting                       : std_logic_vector(2*data_width-1 downto 0) := (others => '0');
  signal last_dclk, last_dlatch, last_count : std_logic                                 := '0';
  signal outs, state                        : std_logic_vector(1 downto 0)              := "00";

begin
  process (clk)
  begin
    if rising_edge(clk) then
      if last_dclk = '0' and dclk = '1' then
        buf <= buf(2*data_width-1-bus_width downto 0) & din;
      end if;
      if last_dlatch = '0' and dlatch = '1' then
        setting <= buf;
      end if;

      last_dclk   <= dclk;
      last_dlatch <= dlatch;
      last_count  <= dcount(0);
    end if;
  end process;

  process (clk)
  begin
    if rising_edge(clk) then
      if not last_count = dcount(0) then
        case state is
          when "00" =>
            if unsigned(dcount(data_width-1 downto 0)) = unsigned(setting(data_width-1 downto 0)) then
              outs  <= "00";
              state <= "01";
            end if;
          when "11" =>
            if unsigned(dcount(data_width-1 downto 0)) = unsigned(setting(2*data_width-1 downto data_width)) then
              outs  <= "00";
              state <= "10";
            end if;
          when "01" =>
            outs  <= "01";
            state <= "11";
          when "10" =>
            outs  <= "10";
            state <= "00";
          when others =>
            outs  <= "00";
            state <= "00";
        end case;
      end if;
    end if;
  end process;
  xo   <= outs(0);
  yo   <= outs(1);
  dout <= buf(2*data_width-1 downto 2*data_width-bus_width);
end Behave;
