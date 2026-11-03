module tb_demux1to4;

//var declare for input and output port input reg and output wire
reg  i;
reg [1:0]s;
wire [3:0]y;

//Instantiation

demux1to4 dut ( .i(i),.s(s),.y(y));

//input initialization
initial
	begin
	i=1'b0;
	s=2'b00;
	end
//Drive the input value to the design and print value

initial
	begin
$monitor("Time=%0t | i=%b | s= %b | y=%b",$time,i,s,y);
                i=1'b1;s=2'b00;#1;
		i=1'b1;s=2'b01;#1;
		i=1'b1;s=2'b10;#1;
	        i=1'b1;s=2'b11;#1;
	end
endmodule
		
		