module prtp_generator(
  output reg [4:0] A,
  input clk,
  input rst,
  input [4:0] load 
);

always @(posedge clk or negedge rst) begin
 if (!rst) begin
    A <= load; 
  end 
  else begin
    A[0] <= A[1] ^ A[4];
    A[4:1] <= A[3:0];    
    end
  end
endmodule

