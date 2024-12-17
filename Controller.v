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


module Controller (
    input       clk,
    input [6:0] opcode,
    input [2:0] func3,
    input [6:0] func7,

    output reg  PCSrc,
    output reg  ResultSrc,
    output reg  RegDst,
    output reg  MemWrite,
    output reg  [2:0] ALUContol,
    output reg  ALUSrc,
    output reg  [1:0] ImmSrc,
    output reg  RegWrite
);

    always @(posedge clk) begin
        case (opcode)
            R_type: begin
                PCSrc = 0;
                ResultSrc = 
            end 
            I_load: begin
                PCSrc = 0;
                
            end 
            I_arth: begin
                PCSrc = 0;
                
            end 
            JALR: begin
                PCSrc = 0;
                
            end 
            I_type: begin
                PCSrc = 0;
                
            end 
            LUI: begin
                PCSrc = 0;
                
            end 
            AUIPC: begin
                PCSrc = 0;
                
            end 
            U_type: begin
                PCSrc = 0;
                
            end 
            S_type: begin
                PCSrc = 0;
                
            end 
            B_type: begin
                
            end 
            J_type: begin
                
            end 
            default: 
        endcase
    end
    


//imm sel by opcode (0010011/0011011-> I, 0100011-> S, 1100011-> B, 1101111 -> J)
    
endmodule