module t_Lab3_Mealy_SerialAdder;
	wire	s;
	reg 	x,y,clock,reset;
	parameter Stop_time=500;


	Lab3_Mealy_SerialAdder_state_diagram M1(s,x,y,clock,reset);
	Lab3_Mealy_SerialAdder_structural M2(s,x,y,clock,reset);

	initial #Stop_time $finish;
	initial begin 
	reset=0;
	clock=0;
	#5 reset=1; clock=1;
	repeat(16)
	#5 clock=~clock;
	end
	initial 
	begin	x=1'b0; y=1'b0;
	#20	x=1'b0; y=1'b1;
	#20	x=1'b1; y=1'b0;
	#20	x=1'b1; y=1'b1;
	end
	// p114

endmodule 