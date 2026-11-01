module tb_mux2to1;

//step 1 : declare var

reg [1:0]i;
reg s;
wire y;

//step 2 dut
mux2to1 dut(.i(i),.s(s),.y(y));
//Intialization of input
initial
	begin
		{i,s}=3'b000;
	end
//Drive inputs
initial
	begin
     $monitor("Time =%0t | i=%b | s=%b | y = %b",$time,i,s,y);
		i=2'b00 ; s=0;#10;
		i=2'b01 ; s=0;#10;
                i=2'b10 ; s=0;#10;
                 i=2'b11 ; s=0;#10;
		i=2'b00 ; s=1;#10;
		i=2'b01 ; s=1;#10;
                i=2'b10 ; s=1;#10;
                 i=2'b11 ; s=1;#10;
    $finish;
	end
endmodule