/*
Title: ALU implemented in Verilog for FPGA
Authors: Bonino, Francisco Ignacio;
         Luna, Lihué Leandro
*/

module alu
    #(
        parameter BUS_SIZE = 8,                 // 8-bits input/output bus
        parameter OPCODE_SIZE = 6,              // 6-bits operation codes

        // ALU opcodes
        parameter ADD = 6'b100000,
        parameter SUB = 6'b100010,
        parameter AND = 6'b100100,
        parameter OR  = 6'b100101,
        parameter XOR = 6'b100110,
        parameter NOR = 6'b100111,
        parameter SRL = 6'b000010,
        parameter SRA = 6'b000011
    )
    (
        input [BUS_SIZE - 1 : 0] num1,
                                 num2,
        input [OPCODE_SIZE - 1 : 0] opcode,
    
        output [BUS_SIZE - 1 : 0] ALU_out,
        output carry
    );

    reg [BUS_SIZE : 0] result;                  // 9-bits operation result
    reg carry;

    always @(*)
    begin: OPCODE_SWITCH
        case (opcode)
            ADD:
                result = num1 + num2;
            SUB:
                result = num1 - num2;
            AND:
                result = num1 & num2;
            OR:
                result = num1 | num2;
            XOR:
                result = num1 ^ num2;
            NOR:
                result = ~(num1 | num2);
            SRL:
                result = num1 + num2;           // TODO
            SRA:
                result = num1 + num2;           // TODO
            default:
                result = num1 + num2;           // Sum by default
        endcase
    end

endmodule
