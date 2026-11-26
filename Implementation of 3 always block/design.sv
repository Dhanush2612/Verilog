// 3 always block

module three_always(
    input a,
    input b,
    output reg y1,
    output reg y2,
    output reg y3
);

always @(*)
begin
    y1 = a & b;
    $display("AND = %b", y1);
end

always @(*)
begin
    y2 = a | b;
    $display("OR = %b", y2);
end

always @(*)
begin
    y3 = a ^ b;
    $display("XOR = %b", y3);
end

endmodule
