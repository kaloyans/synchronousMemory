module mem_sync(
		 address,            //address
		 wd,                //write data
		 wen,              //write enable
		 clk,             //clock
		 rd              //read data
		 );
input [7:0] address;
input [15:0] wd;
input wen;
input clk;

output [15:0] rd;

reg [15:0] rd;
reg [15:0] memory [0:255];

always @ (posedge clk)
	begin
     		if (wen)
	 		begin
       				memory [address] <= wd;
  	 	 
			end
		rd <= memory [address];
	end
 
endmodule // mem_sync


