module tb_decoder3to8;

parameter N=3;

//var for input and output port
reg [N-1:0] s;
wire [(2**N)-1:0]y;

integer i;

//instantiation
decoder3to8 #(.N(N)) dut(.s(s),.y(y));

//Drive input to design
initial 
	begin
$monitor("Time = %0t | s=%b | y =%b",$time,s,y);
 for(i=0;i<2**N;i++) begin
       s=i;
        #1;
end
$finish;
end
endmodule
		