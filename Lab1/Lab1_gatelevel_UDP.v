module Lab1_gatelevel_UDP(F,A,B,C);
	output F;
	input A,B,C;
	wire w1,w2;

	Lab1_UDP M0(w1,A,B,C);

	and (w2,B,C);
	or (F,w1,w2);

endmodule 