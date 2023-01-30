--Adder of 2 number of n bits
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

library ieee;
use ieee.std_logic_1164.all;

entity registro_sostenimiento is
	generic ( n: integer :=50);
	port(
		Clk,resetn,en: in std_logic;
		d: in std_logic_vector(n-1 downto 0);
		q: out std_logic_vector(n-1 downto 0));
end registro_sostenimiento;

architecture solve of registro_sostenimiento is
	begin
	process(resetn,clk)
		begin
			if not(resetn) ='0' then
				q<=(others => '0');
			elsif clk='1' and en='1' then
 				q<=d;
			end if;
	end process;
end solve;