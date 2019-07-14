module Lab3_Mealy_SerialAdder_structural(
	output s,
	input x,y,clock,reset
);
	//page 113
	wire D,Q;
	
	
	assign D=(x&&Q)||(x&&y)||(y&&Q);
	assign s=(Q^x)^y;

	D_ff_AR ff1(Q,D,clock,reset);

endmodule 