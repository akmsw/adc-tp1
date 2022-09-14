module my_alu#(
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
       	input wire i_clock,
        input [BUS_SIZE - 1 : 0] i_swiches,
    	input wire i_boton1,
       	input wire i_boton2,
       	input wire i_boton3,
        output [BUS_SIZE - 1 : 0] o_ALUout,
       	output wire o_carry
    );
  reg [BUS_SIZE - 1 : 0] datoA;
  reg [BUS_SIZE - 1 : 0] datoB;
  reg [OPCODE_SIZE - 1 : 0] opcode;
  reg [BUS_SIZE : 0] result;
  
  assign o_carry = result[BUS_SIZE];
  assign o_ALUout = result;
  always @(posedge i_clock)
  
    begin
    if(i_boton1)
      datoA <= i_swiches;
      
  	if(i_boton2)
      datoB <= i_swiches;
      
  	if(i_boton3)
      opcode <= i_swiches;
      
        case (opcode)
            ADD:
                result = datoA + datoB;
            SUB:
                result = datoA - datoB;
            AND:
                result = datoA & datoB;
            OR:
                result = datoA | datoB;
            XOR:
                result = datoA ^ datoB;
            NOR:
                result = ~(datoA | datoB);
            SRL:
                result = datoA >> 1;
            SRA:
                result = datoA >>> 1;
            default:
                result = datoA + datoB;           // Sum by default
        endcase
    end

endmodule

