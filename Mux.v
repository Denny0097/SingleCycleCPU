module Mux (
    input selSignal,
    input op1,
    input op2,
    output selOp
);
    assign selOp = selSignal? op2: op1;
endmodule