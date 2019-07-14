module t_Lab2_decoder_3x8;

	wire 	[7:0] Dout;
	reg  	[2:0] A;
	reg	 enable;
	parameter stop_time=2000;

	Lab2_decoder_3x8 M1(Dout,A,enable);
	
	initial #stop_time $finish;
	initial 
	begin 
		enable=0;A=3'b000;
		repeat(7) #100	A=A+1'b1;
		#100 enable=1;A=3'b000;
		repeat(7) #100	A=A+1'b1;
	end
	
	initial 
	begin
		$display ("Enable A Dout");
		$monitor("%b   %b%b%b   %b%b%b%b%b%b%b%b",enable,A[2],A[1],A[0],Dout[7],Dout[6],Dout[5],Dout[4],Dout[3],Dout[2],Dout[1],Dout[0]);
	end

endmodule

