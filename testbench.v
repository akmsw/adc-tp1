`timescale 1 ns / 10 ps

module test;

    reg [7 : 0] num1,
                num2;
    reg [5 : 0] opcode;

    wire [7 : 0] out;
    wire carry;
    
    alu UUT
    (
        .num1(num1),
        .num2(num2),
        .opcode(opcode),
        .out(out),
        .carry(carry)
    );
    
    initial
    begin
        num1 = 8'h1;
        num2 = 8'h2;
        opcode = 6'b100100;
        $finish;
    end

endmodule
