module mux2to1(input [1:0]i,input s,output reg y);
always@(*)
	begin
		case(s)
			1'b0: y=i[0];
			1'b1: y=i[1];
			default: y=0;
        	endcase

    //      if(s)
    //      y=i[1];
    //   else
     //     y=i[0];
	end
endmodule