module sr_latch(
input s,
input r,
input enb,
input rst,
output reg q,
output reg q_bar
);

always @(enb,rst)
	if(enb) begin
		//reset logic
		if(rst) begin
		q<=1'b0;
		q_bar <= 1'b1;
		end
		// hold
		else if (s==0 && r==0) begin
		q <= q;
		q_bar <= q_bar;
		end
		//set
		else if (s==1 && r==0) begin
		q <= 1'b1;
		q_bar <= 1'b0;
		end
		// reset
		else if (s==0 && r==1) begin
		q <= 1'b0;
		q_bar <= 1'b1;
		end
		//Invalid
		else if (s==1 && r==1) begin
		q <= 'bx;
		q_bar <= 'bx;
		end
     	end
endmodule