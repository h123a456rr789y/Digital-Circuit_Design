module t_Lab2_decoder_2x4;
	
	wire 	[3:0] Dout;
	reg	[1:0] A;
	reg 	enable;
	parameter stop_time=2000;

	Lab2_decoder_2x4 M1(Dout,A,enable);

	initial #stop_time $finish;
	initial 
	begin 
		/*enable=0;A[0]=1'b0;A[1]=1'b0;
		#100 enable=0;A[0]=1'b0;A[1]=1'b1;
		#100 enable=0;A[0]=1'b1;A[1]=1'b0;
		#100 enable=0;A[0]=1'b1;A[1]=1'b1;
		#100 enable=1;A[0]=1'b0;A[1]=1'b0;
		#100 enable=1;A[0]=1'b0;A[1]=1'b1;
		#100 enable=1;A[0]=1'b1;A[1]=1'b0;
		#100 enable=1;A[0]=1'b1;A[1]=1'b1;
		*/
		enable=0;A=2'b00;
		repeat(3) #100 A= A+1'b1;
		#100 enable=1;A=2'b00;
		repeat(3) #100 A= A+1'b1;
	end
	initial 
	begin
		$display("Enable A Dout");
		$monitor("%b   %b%b   %b%b%b%b",enable,A[1],A[0],Dout[3],Dout[2],Dout[1],Dout[0]) ;
	end

endmodule 