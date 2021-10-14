library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity clock_pll is 
    port 
    (
        clk_in : in std_ulogic;
        clk : out std_ulogic
    );
end clock_pll;

architecture behave of clock_pll is

component SB_PLL40_PAD is
    generic
    (
        DIVR : std_ulogic_vector(3 downto 0);
        DIVF : std_ulogic_vector(6 downto 0);
        DIVQ : std_ulogic_vector(2 downto 0);
        FILTER_RANGE : std_ulogic_vector(2 downto 0);
        FEEDBACK_PATH : bit_vector(47 downto 0); --should be a String = "SIMPLE"
        DELAY_ADJUSTMENT_MODE_FEEDBACK : bit_vector(39 downto 0); -- should be a string = "FIXED"
        FDA_FEEDBACK : std_ulogic_vector(3 downto 0);
        DELAY_ADJUSTMENT_MODE_RELATIVE : bit_vector(39 downto 0); -- should be a string = "FIXED"
        FDA_RELATIVE : std_ulogic_vector(3 downto 0);
        SHIFTREG_DIV_MODE : std_ulogic_vector(1 downto 0);
        PLLOUT_SELECT : bit_vector(47 downto 0); -- should be a string = "GENCLK"
        ENABLE_ICEGATE : std_ulogic;
        EXTERNAL_DIVIDE_FACTOR : std_ulogic
    );
    port
    (
        PACKAGEPIN : in std_ulogic;
        PLLOUTCORE : out std_ulogic;
        PLLOUTGLOBAL : out std_ulogic;
        EXTFEEDBACK : in std_ulogic;
        DYNAMICDELAY : in std_ulogic_vector;
        RESETB : in std_ulogic;
        BYPASS : in std_ulogic;
        LATCHINPUTVALUE : in std_ulogic;
        LOCK : out std_ulogic;
        SDI : in std_ulogic;
        SDO : in std_ulogic;
        SCLK : in std_ulogic
    );
end component;
    
begin
    internal_clk : SB_PLL40_PAD
    generic map
    (
        DIVR => "0000",
        DIVF => "1001111",
        DIVQ => "011",
        FILTER_RANGE => "001",
        FEEDBACK_PATH => "010100110100100101001101010100000100110001000101", --should be a String = "SIMPLE"
        DELAY_ADJUSTMENT_MODE_FEEDBACK => "0100011001001001010110000100010101000100", -- should be a string = "FIXED"
        FDA_FEEDBACK => "0000",
        DELAY_ADJUSTMENT_MODE_RELATIVE => "0100011001001001010110000100010101000100", -- should be a string = "FIXED"
        FDA_RELATIVE => "0000",
        SHIFTREG_DIV_MODE => "00",
        PLLOUT_SELECT => "010001110100010101001110010000110100110001001011", -- should be a string = "GENCLK"
        ENABLE_ICEGATE => '0',
        EXTERNAL_DIVIDE_FACTOR => '1'
    )
    port map 
    (
        PACKAGEPIN => clk_in,
        PLLOUTCORE => clk,
        PLLOUTGLOBAL => open,
        EXTFEEDBACK => open,
        DYNAMICDELAY => "0000000",
        RESETB => '1',
        BYPASS => '0',
        LATCHINPUTVALUE => open,
        LOCK => open,
        SDI => open,
        SDO => open,
        SCLK => open
    );

end architecture behave;