module alutest();

// Local parameters
localparam BUS_SIZE = 8;

// Outputs
wire [BUS_SIZE - 1 : 0] o_ALUout ;
wire carry;

// Inputs
reg [BUS_SIZE - 1 : 0] i_swiches ;
reg i_boton1 ;
reg i_boton2 ;
reg i_boton3 ;
reg i_clock ;

// ALU opcodes
localparam ADD = 6'b100000;
localparam SUB = 6'b100010;
localparam AND = 6'b100100;
localparam OR  = 6'b100101;
localparam XOR = 6'b100110;
localparam NOR = 6'b100111;
localparam SRL = 6'b000010;
localparam SRA = 6'b000011;

initial
begin
  $dumpfile("dump.vcd");
  $dumpvars;

  #0
  i_swiches = 9'd0;
  i_boton1 = 1'b0;
  i_boton2 = 1'b0;
  i_boton3 = 1'b0;
  i_clock = 1'b0;

  // ADD
  #1
  i_swiches = 9'd255;
  i_boton1 = 1'b1;
  #1
  i_boton1 = 1'b0;
  #1
  i_swiches = 9'd2;
  i_boton2 = 1'b1;
  #1
  i_boton2 = 1'b0;
  #1
  i_swiches = ADD;
  i_boton3 = 1'b1;
  #1
  i_boton3 = 1'b0;

  // SUB
  #1
  i_swiches = 9'd10;
  i_boton1 = 1'b1;
  #1
  i_boton1 = 1'b0;
  #1
  i_swiches = 9'd4;
  i_boton2 = 1'b1;
  #1
  i_boton2 = 1'b0;
  #1
  i_swiches = SUB;
  i_boton3 = 1'b1;
  #1
  i_boton3 = 1'b0;

  // AND
  #1
  i_swiches = 9'b00110111;
  i_boton1 = 1'b1;
  #1
  i_boton1 = 1'b0;
  #1
  i_swiches = 9'b01100101;
  i_boton2 = 1'b1;
  #1
  i_boton2 = 1'b0;
  #1
  i_swiches = AND;
  i_boton3 = 1'b1;
  #1
  i_boton3 = 1'b0;
  #100
  $finish;
end

always
begin
  #1
  i_clock = ~i_clock ;
end

alu #()
alu_instance
(
  .o_ALUout ( o_ALUout ),
  .i_clock ( i_clock ),
  .i_boton1 ( i_boton1 ),
  .i_boton2 ( i_boton2 ),
  .i_boton3 ( i_boton3 ),
  .i_swiches ( i_swiches ),
  .o_carry(carry)
);

endmodule