module top (
    input  wire clk,
    output wire led
);
    reg [24:0] counter = 0;
    always @(posedge clk)
        counter <= counter + 1;

    assign led = counter[24]; // 約0.75Hz点滅（27MHz想定）
endmodule
