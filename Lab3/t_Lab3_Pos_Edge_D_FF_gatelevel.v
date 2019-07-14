module t_Lab3_Pos_Edge_D_FF_gatelevel;
	wire Q,NQ;
	reg D,clock;
	parameter Stop_time=100;
	
	Lab3_Pos_Edge_D_FF_gatelevel M1(Q,NQ,D,clock);
	
	initial #Stop_time $finish; 
	initial begin clock=0;forever #10 clock=~clock;end
	initial 
	begin D=1'b0;
	#15	D=1'b1;
	#20	D=1'b0;
	#30	D=1'b1;
	#25	D=1'b0;
	end


endmodule
