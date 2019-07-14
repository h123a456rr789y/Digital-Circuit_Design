module t_Lab1_gatelevel_UDP;
	wire 	F;
	reg 	A, B, C;

	Lab1_gatelevel_UDP M1(F,A,B,C);
		
	initial begin 
		A=1'b0; B=1'b0; C=1'b0;
		#100 A=1'b1; B=1'b1; C=1'b1;
	end
	initial #200 $finish;

endmodule 