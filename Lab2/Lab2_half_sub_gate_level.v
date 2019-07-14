module Lab2_half_sub_gate_level(D,B,x,y);
	output D,B;
	input x,y;
	wire x_not,y_not,w1;
	
	not G1(x_not,x),G2(y_not,y);
	and G3(B,x_not,y);
	xor G4(D,x,y);

endmodule 