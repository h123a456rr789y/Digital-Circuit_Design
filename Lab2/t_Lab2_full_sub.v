module t_Lab2_full_sub;
	
  	wire D,B;
	reg x,y,z;
	parameter stop_time=2000;

	Lab2_full_sub F1(D,B,x,y,z);
	
	initial #stop_time $finish;

	initial 
	begin 
		x=1'b0; y=1'b0; z=1'b0;

		#100 x=1'b0;y=1'b0;z=1'b1;
		#100 x=1'b0;y=1'b1;z=1'b0;
		#100 x=1'b0;y=1'b1;z=1'b1;
		#100 x=1'b1;y=1'b0;z=1'b0;
		#100 x=1'b1;y=1'b0;z=1'b1;
		#100 x=1'b1;y=1'b1;z=1'b0;
		#100 x=1'b1;y=1'b1;z=1'b1;
	end 

endmodule 