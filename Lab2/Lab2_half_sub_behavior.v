module Lab2_half_sub_behavior(
	output 	reg 	D,B,
	input 	 	x,y
);
	always @(x or y)
	begin 
	B=(!x)&y;
	D=x^y;
	end

endmodule 