library ieee;
use ieee.std_logic_1164.all;
entity mux_2x1 is
port(a,b,s: in std_logic;
		out21: out std_logic);
end mux_2x1;
architecture calismasi of mux_2x1 is
begin
out21<=((not s) and a) or (s and b);
end calismasi;