module Lab2_decoder_5x32 (
	output [31:0] Dout, 
	input [4:0] A, 
	input enable
);
	wire	[3:0]enableline;

	Lab2_decoder_2x4	d2x4(enableline[3:0],A[4:3],enable);
	Lab2_decoder_3x8	d3x81(Dout[7:0],A[2:0],enableline[0]);
	Lab2_decoder_3x8	d3x82(Dout[15:8],A[2:0],enableline[1]);
	Lab2_decoder_3x8	d3x83(Dout[23:16],A[2:0],enableline[2]);
	Lab2_decoder_3x8	d3x84(Dout[31:24],A[2:0],enableline[3]);

endmodule 