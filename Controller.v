`define R_type  7'b0110011
`define I_load  7'b0000011
`define I_arth  7'b0010011
`define JALR    7'b1100111
`define I_type  `I_load, `I_arth, `JALR
`define LUI     7'b0110111
`define AUIPC   7'b0010111
`define U_type  `LUI, `AUIPC
`define S_type  7'b0100011
`define B_type  7'b1100011
`define J_type  7'b1101111



module Contr (
    input [6:0] opcode,
    input [2:0] func3,
    input       func7,

    output reg  next_pc_sel,
    output reg  [3:0] im_w_en,
    output reg  wb_en,
    output reg  jb_op1_sel,
    output reg  alu_op1_sel,
    output reg  alu_op2_sel,
    output reg  wb_sel,
    output reg  [3:0] ALU,
    output reg  [3:0] mem_write,
    output reg  wb_sel
);

//imm sel by opcode (0010011/0011011-> I, 0100011-> S, 1100011-> B, 1101111 -> J)
    
endmodule