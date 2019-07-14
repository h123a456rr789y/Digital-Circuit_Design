module t_Lab2_half_sub;
	
	wire D,B;
	reg x,y;
	parameter stop_time=2000;

	Lab2_half_sub_gate_level H1(D,B,x,y);
	Lab2_half_sub_dataflow H2(D,B,x,y);
	Lab2_half_sub_behavior H3(D,B,x,y);
	
	initial #stop_time $finish;

	initial 
	begin 
		x=1'b0; y=1'b0; 

		#100 x=1'b0;y=1'b1;
		#100 x=1'b1;y=1'b0;
		#100 x=1'b0;y=1'b1;
	end 

endmodule 