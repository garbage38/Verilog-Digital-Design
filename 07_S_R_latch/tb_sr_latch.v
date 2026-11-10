module  tb_sr_latch();

reg enb,rst,s,r;
wire q,q_bar;

sr_latch dut (.enb(enb),.rst(rst),.s(s),.r(r),.q(q),.q_bar(q_bar));

initial
	begin
		{enb,rst,s,r}=0;
	end

always #5 enb=~enb;

initial 
         begin
     $monitor("Time=%0t | enb = %b | rst = %b | s=%b | r = %b | q=%b | q_bar = %b ", $time,enb,rst,s,r,q,q_bar);
	end
initial	begin
		rst =1;
 		#10;
		rst=0;
		//hold condition
		s=0;r=0;
		#10;
		//reset
		s=0; r=1;
		#10;
		//set
		s=1;r=0;
		#10;
		//Invalid
		s=1;r=1;
		#10;
		$finish;
	end
endmodule
