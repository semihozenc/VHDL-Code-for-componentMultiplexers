library ieee;
use ieee.std_logic_1164.all;
entity mux_8x1 is
port(giris:in std_logic_vector(7 downto 0);
			s:in std_logic_vector(2 downto 0);
			q:out std_logic);
end mux_8x1;
architecture calismasi of mux_8x1 is
component mux_2x1 is
port(a,b,s:in  std_logic;
		out21:out  std_logic);
end component;
component mux_4x1 is
port(c:in std_logic_vector(3 downto 0);
			s:in std_logic_vector(1 downto 0);
			out41:out  std_logic);
end component;
signal wire: std_logic_vector(1 downto 0);
begin
m0:mux_4x1 port map(c(0)=>giris(0),c(1)=>giris(1),c(2)=>giris(2),c(3)=>giris(3),s(0)=>s(0),s(1)=>s(1),out41=>wire(0));
m1:mux_4x1 port map(c(0)=>giris(4),c(1)=>giris(5),c(2)=>giris(6),c(3)=>giris(7),s(0)=>s(0),s(1)=>s(1),out41=>wire(1));
m2:mux_2x1 port map(a=>wire(0),b=>wire(1),s=>s(2),out21=>q);
end calismasi;