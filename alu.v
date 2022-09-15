module alu
  #(
    parameter OPCODE_SIZE = 6,              // 6-bits operation codes
    parameter BUS_SIZE = 8                  // 8-bits input/output bus
  )
  (
    input wire i_clock,
    input wire i_boton1,
    input wire i_boton2,
    input wire i_boton3,
    input wire [BUS_SIZE - 1 : 0] i_swiches,

    output wire o_carry,
    output wire [BUS_SIZE - 1 : 0] o_ALUout
  );

  // ALU opcodes
  localparam ADD = 6'b100000;
  localparam SUB = 6'b100010;
  localparam AND = 6'b100100;
  localparam OR  = 6'b100101;
  localparam XOR = 6'b100110;
  localparam NOR = 6'b100111;
  localparam SRL = 6'b000010;
  localparam SRA = 6'b000011;

  reg [OPCODE_SIZE - 1 : 0] opcode;
  reg [BUS_SIZE - 1 : 0] datoA;
  reg [BUS_SIZE - 1 : 0] datoB;
  reg [BUS_SIZE : 0] result;

  assign o_carry = result[BUS_SIZE];
  assign o_ALUout = result;

  // Button check
  always @(posedge i_clock)
  begin
    if (i_boton1)
      datoA <= i_swiches;
    else if (i_boton2)
      datoB <= i_swiches;
    else if (i_boton3)
      opcode <= i_swiches;
  end

  // Combinational logic
  always @(*)
  begin
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
