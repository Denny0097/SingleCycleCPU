`define ADD     3'b000
`define SUB     3'b001
`define AND     3'b010
`define OR      3'b011
`define XOR     3'b100
`define SLL     3'b101
`define SRL     3'b110
`define SRA     3'b111

module ALU (
    input   [31:0]      input1,
    input   [31:0]      input2,
    input   [2:0]       ALUControll,   //0:+, 1:-, 2:and, 3:or, 4:xor, 5:shiftLeftL, 6:shiftRightL, 7:shiftLeftA
    output  reg [31:0]  ALUReslut
);
    
    always @(*) begin
        
        case (ALUControll)
            ADD:    begin
                ALUReslut = input1 + input2;
            end     
            SUB:    begin
                ALUReslut = input1 - input2;
            end     
            AND:    begin
                ALUReslut = input1 & input2;
            end     
            OR:     begin
                ALUReslut = input1 | input2;
            end     
            XOR:    begin
                ALUReslut = input1 ^ input2;
            end     
            SLL:    begin
                ALUReslut = input1 << input2[4:0];
            end     
            SRL:    begin
                ALUReslut = input1 >> input2[4:0];
            end     
            SRA:    begin
                ALUReslut = input1 >>> input2[4:0];
            end     
            default: 
                ALUReslut = 32'bx;
        endcase
        
    end



    
endmodule