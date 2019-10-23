library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity avalon_pwm is
port (
	clk : in std_logic;
	wr_data : in std_logic_vector (31 downto 0);
	cs : in std_logic;
	wr_n : in std_logic;
	addr : in std_logic;
	clr_n : in std_logic;
	rd_data : out std_logic_vector (31 downto 0);
	pwm_out : out std_logic_vector (7 downto 0));
end avalon_pwm;

architecture behave of avalon_pwm is

signal div, duty, counter : std_logic_vector (31 downto 0);
signal pwm_on : std_logic;

begin

rd_data <= div when addr = '0' else duty;

write: process (clk, clr_n)
begin
	if clr_n = '0' then
		div <= (others => '0');
		duty <= (others => '0');

	elsif clk'event and clk = '1' then
		if cs ='1' and wr_n = '0' then
			if addr = '0' then

				div (31 downto 0) <= wr_data (31 downto 0);
		
			else

				duty (31 downto 0) <= wr_data (31 downto 0);
				
			end if;
		end if;
	end if;
end process;

divider: process (clk, clr_n)
begin
	if clr_n = '0' then
		counter <= (others => '0');
	elsif clk'event and clk = '1' then
		if counter >= conv_integer (div) then 
			counter <= (others => '0');
		else	
			counter <= counter + '1';
		end if;
	end if;
end process;

duty_cyle: process (clk, clr_n)
begin
	if clr_n = '0' then
		pwm_on <= '1';
	elsif clk'event and clk = '1' then
		if counter >= conv_integer (duty) then
			pwm_on <= '0';
		elsif counter = "00000000000000000000000000000000" then
			pwm_on <= '1';
		else
			pwm_on <= pwm_on;	
		end if;
	end if;
end process;

pwm_out <= pwm_on & pwm_on & pwm_on & pwm_on & pwm_on & pwm_on & pwm_on & pwm_on;
	
end behave;
