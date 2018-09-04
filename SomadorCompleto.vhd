entity SomadorCompleto is
	port(A,B,C,D : IN BIT;
		  s0, s, ts : OUT BIT);
		  
end SomadorCompleto;
Architecture comportamento of SomadorCompleto is
	signal s1: BIT;
begin
	s0 <= (A XOR B);
	s1 <= (A AND B);
	
	s <= (C XOR D) XOR s1;
	ts <= (C AND D) OR ((C XOR D) AND s1);
end comportamento;