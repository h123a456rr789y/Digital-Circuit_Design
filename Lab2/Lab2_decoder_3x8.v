module Lab2_decoder_3x8 (
	output [7:0] Dout, 
	input [2:0] A, 
	input enable
);

	assign 	Dout[0]=A[0]&&A[1]&&A[2]&&enable,
		Dout[1]=(!A[0])&&A[1]&&A[2]&&enable,
		Dout[2]=A[0]&&(!A[1])&&A[2]&&enable,
		Dout[3]=(!A[0])&&(!A[1])&&A[2]&&enable,
		Dout[4]=A[0]&&A[1]&&(!A[2])&&enable,
		Dout[5]=(!A[0])&&A[1]&&(!A[2])&&enable,
		Dout[6]=A[0]&&(!A[1])&&(!A[2])&&enable,
		Dout[7]=(!A[0])&&(!A[1])&&(!A[2])&&enable;

endmodule 