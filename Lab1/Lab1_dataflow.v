module Lab1_dataflow(F,A,B,C);
	output F;
	input A,B,C;
	
	assign F=(((!A)&&B)||(A&&C))||(B&&C);
endmodule 