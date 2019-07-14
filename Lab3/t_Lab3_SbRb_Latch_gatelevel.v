module t_Lab3_SbRb_Latch_gatelevel;
	wire Q,NQ;
	reg Sb,Rb;
	parameter Stop_time=60;
	
	Lab3_SbRb_Latch_gatelevel SRL1(Q,NQ,Sb,Rb);
	initial #Stop_time $finish;
	
	initial
	begin
	Sb=1'b1; Rb=1'b0;
	
	#10 Sb=1'b1; Rb=1'b1;
	#10 Sb=1'b0; Rb=1'b1;
	#10 Sb=1'b1; Rb=1'b1;
	#10 Sb=1'b0; Rb=1'b0;
	#10 Sb=1'b1; Rb=1'b1;
	end 

endmodule 