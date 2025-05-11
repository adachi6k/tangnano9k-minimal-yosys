module top (
    input  logic clk,
    output logic led1,
    output logic led2,
    output logic led3,
    output logic led4,
    output logic led5,
    output logic led6
);
    logic [29:0] counter = 0;
    always_ff @(posedge clk)
        counter <= counter + 1;

    assign led1 = ~counter[24]; // 約0.75Hz点滅（27MHz想定）
    assign led2 = ~counter[25];
    assign led3 = ~counter[26];
    assign led4 = ~counter[27];
    assign led5 = ~counter[28];
    assign led6 = ~counter[29];
endmodule
