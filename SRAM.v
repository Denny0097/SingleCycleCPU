module Mem (
    input               clk,
    input       [3:0]   memWrite,
    input       [15:0]  addr,
    input       [31:0]  writeData,
    output reg  [31:0]  readData
);
    reg [7:0] mem[0:65535];
    
    always @(posedge clk) begin
        if(memWrite[0]) begin
            mem[addr] <= writeData[7:0];
        end
        if(memWrite[1]) begin
            mem[addr + 1] <= writeData[15:8];
        end
        if(memWrite[2]) begin
            mem[addr + 2] <= writeData[23:16];
        end
        if(memWrite[3]) begin
            mem[addr + 3] <= writeData[31:24];
        end
    end

    // Output Combinational
    assign readData = {mem[addr + 3], mem[addr + 2], mem[addr + 1], mem[addr]};

endmodule