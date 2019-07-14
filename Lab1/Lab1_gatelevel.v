module Lab1_gatelevel(F,A,B,C);
	output F;
	input A,B,C;
	wire w1,w2,w3,w4;

	and	G1(w1,!A,B);
	and 	G2(w2,A,C); 
	and	G3(w3,B,C);
	or  	G4(w4,w1,w2);
	or	G5(F,w4,w3);

endmodule 