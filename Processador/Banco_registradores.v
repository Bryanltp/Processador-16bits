module Banco_registradores(clock, RegWrite, registrador1, registrador2, registrador3, dado_escrita, dado1, dado2);

    input clock;
    input [4:0]registrador1;
    input [4:0]registrador2;
    input [4:0]registrador3;
	 input RegWrite;
    input [31:0]dado_escrita;

    output reg [4:0]dado1;
    output reg [4:0]dado2;

    reg [5:0]registradores[31:0];
	 
    initial begin
    registradores[0] = 5'b00000;
    registradores[1] = 5'b00001;
    registradores[2] = 5'b00010;
    registradores[3] = 5'b00011;
    registradores[4] = 5'b00100;
    registradores[5] = 5'b00101;
    registradores[6] = 5'b00110;
    registradores[7] = 5'b00111;
    registradores[8] = 5'b01000;
    registradores[9] = 5'b01001;
    registradores[10] = 5'b01010;    
    registradores[11] = 5'b01011;
    registradores[12] = 5'b01100;
    registradores[13] = 5'b01101;
    registradores[14] = 5'b01110;
    registradores[15] = 5'b01111;
    registradores[16] = 5'b10000;
    registradores[17] = 5'b10001;
    registradores[18] = 5'b10010;
    registradores[19] = 5'b10011;
    registradores[20] = 5'b10100;
    registradores[21] = 5'b10101;
    registradores[22] = 5'b10110;
    registradores[23] = 5'b10111;
    registradores[24] = 5'b11000;
    registradores[25] = 5'b11001;
    registradores[26] = 5'b11010;
    registradores[27] = 5'b11011;
    registradores[28] = 5'b11100;
    registradores[29] = 5'b11101;
    registradores[30] = 5'b11110;
    registradores[31] = 5'b11111;
    end

    always @ (posedge clock)begin
      dado1 = registradores[registrador1];
      dado2 = registradores[registrador2];
    end

    always @ (negedge clock)begin
      if(RegWrite == 1)begin
        registradores[registrador3] = dado_escrita;
      end
    end
      
endmodule