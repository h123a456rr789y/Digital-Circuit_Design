module Lab3_Pos_Edge_D_FF_gatelevel(
	output Q,NQ,
	input D,clock
);
	wire w1,w2,w3,w4;
	nand 	#(2)	G3(w3,clock,w4,w2),
			G2(w2,clock,w1),
			G1(w1,w2,w4),
			G4(w4,D,w3);

	Lab3_SbRb_Latch_gatelevel L1(Q,NQ,w2,w3);

endmodule 