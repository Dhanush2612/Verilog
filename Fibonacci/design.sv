// Code your design here

module fibonacci(
    input clk,
    input reset,
    output reg [7:0] out
);

reg [7:0] a, b;

always @(posedge clk) begin
    if (reset) begin
        a <= 0;
        b <= 1;
        out <= 0;
    end
    else begin
        out <= a;
        a <= b;
        b <= a + b;
    end
end

endmodule