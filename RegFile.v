module Reg (
    input clk,
    input wbSignal,
    input [4:0] Rs1,
    input [4:0] Rs2,
    input [4:0] Rd,
    input [31:0] wbData,
    output [31:0] regData1,
    output [31:0] regData2
);
    reg [31:0] register [31:0];


// write
    always @(posedge clk) begin
        if (wbSignal)
            register[Rd] <= wbData;
        register [0] <= 32'b0;
    end

// read
    assign regData1 = register[Rs1];
    assign regData2 = register[Rs2];

endmodule