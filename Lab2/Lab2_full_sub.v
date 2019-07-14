module Lav2_full_sub(
	output D,B, 
	input x,y,z
);
	 
	wire B1,D1,B2;

	Lab2_half_sub_gate_level HS1(D1,B1,x,y);
	Lab2_half_sub_gate_level HS2(D,B2,D1,z);
	
	or G1(B,B1,B2);

endmodule 