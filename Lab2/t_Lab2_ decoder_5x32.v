module t_Lab2_decoder_5x32;
	wire [31:0] Dout;
	reg [4:0] A;
	reg enable;
	parameter stop_time=6400;
	
	Lab2_decoder_5x32 M1(Dout,A,enable);
	
	initial #stop_time $finish;
	initial 
	begin 
		enable=0;A=5'b00000;
		repeat(31) #100	A=A+1'b1;
		#100 enable=1;A=5'b00000;
		repeat(31) #100	A=A+1'b1;
	end 
	initial
	begin
		$display("Enable A Dout");
		$monitor("%b   %b%b%b%b%b   %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b",enable,A[4],A[3],A[2],A[1],A[0],
		Dout[31],Dout[30],Dout[29],Dout[28],Dout[27],Dout[26],Dout[25],Dout[24],Dout[23],Dout[22],Dout[21],Dout[20],
		Dout[19],Dout[18],Dout[17],Dout[16],Dout[15],Dout[14],Dout[13],Dout[12],Dout[11],Dout[10],
		Dout[9],Dout[8],Dout[7],Dout[6],Dout[5],Dout[4],Dout[3],Dout[2],Dout[1],Dout[0],);
	end 
endmodule 