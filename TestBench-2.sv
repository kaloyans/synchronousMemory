`include "mem_sync.sv"
module mem_sync_tb ();
   reg [7:0] addr;		
   reg [15:0] wdata;
   reg wenable;
   reg clock;

   wire [15:0] rdata;

   mem_sync memS(
		  .address(addr),
		  .wd(wdata),
		  .wen(wenable),
		  .clk(clock),
		  .rd(rdata)
		  );
   
  initial
       begin
      
	wenable <= 0;
	clock <= 0; 
	wdata <= 16'h8;
	addr <= 8'h9;

       #20 begin
	wenable <= 1;
	wdata <= 16'h10;
	  addr <= 8'h11;
       end 
  
       #15 begin
         wenable <= 1;
	wdata <= 16'h12;
	  addr <= 8'h13;
       end
   
       #20 begin
	  wenable <= 0;
	  wdata <= 16'h14;
	  addr <= 8'h15;
       end
       #20 begin
	 wenable <= 1;
	wdata <= 16'h16;
	  addr <= 8'h17;
       end

	 #30 begin
	 wenable <= 0;
	wdata <= 16'h18;
	  addr <= 8'h19;
	end
         
  	 $finish;
	end

	initial 
		begin
			forever #6 clock = ~clock;
		end
endmodule // testbench

	  
       

   
   
