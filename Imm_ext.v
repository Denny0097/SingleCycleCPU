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

module SignEx (
    input [31:0] inst,
    output reg [31:0] exImm
);
//imm sel by opcode (0010011/0011011-> I, 0100011-> S, 1100011-> B, 1101111 -> J)
    always @(*) begin
        case (inst[6:0])
            `R_type:    exImm <= 32'b0;
            `I_type:    exImm <= {{20{inst[31]}}, inst[31:20]};
            `S_type:    exImm <= {{20{inst[31]}}, inst[31:25], inst[11:7]};
            `B_type:    exImm <= {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
            `U_type:    exImm <= {inst[31:12], 12'b0};
            `J_type:    exImm <= {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};
            default:    exImm <= 32'bx;
        endcase
    end
    
endmodule




