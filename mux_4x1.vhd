library ieee;
use ieee.std_logic_1164.all;
entity mux_4x1 is
port(c:in std_logic_vector(3 downto 0);
			s:in std_logic_vector(1 downto 0);
			out41:out std_logic);
end mux_4x1;
architecture calismasi of mux_4x1 is
component mux_2x1 is
port(a,b,s:in std_logic;
		out21:out std_logic);
end component;
signal wire: std_logic_vector(2 downto 0);
begin
m0:mux_2x1 port map(a=>c(0),b=>c(1),s=>s(0),out21=>wire(0));
m1:mux_2x1 port map(a=>c(2),b=>c(3),s=>s(0),out21=>wire(1));
m2:mux_2x1 port map(a=>wire(0),b=>wire(1),s=>s(1),out21=>out41);
end calismasi;