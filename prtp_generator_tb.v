module prtp_generator_tb;
  wire [4:0] A;
  reg [4:0] load;
  reg rst, clk;
 
prtp_generator dUT (
  .A(A),
  .load(load),
  .clk(clk),
  .rst(rst)
);
always #5 clk = ~clk;
initial begin
 clk = 0;
 rst = 1;
 load = 5'b10000; 
 #1 
 rst = 0;    
 #1 
 rst = 1;   
 #320 
 $finish;   
  end
endmodule

