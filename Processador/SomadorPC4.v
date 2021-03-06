module SomadorPC4(clock, PC, PC4, PCW);

input clock;
input [31:0]PC;
input PCWrite;
output [31:0]PC4;
reg PC4;

always @ (*)begin
  while (PCWrite == 0) begin
    PC4 = PC;
  end
  
  if (PCWrite == 1) begin
    PC4 = PC + 32'b00000000000000000000000000000100; //PC+4
  end
end

endmodule