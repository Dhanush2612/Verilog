// Code your design here

module palindrome(
    input [3:0] in,
    output reg result
);

always @(*) begin
    if (in[3] == in[0] && in[2] == in[1])
        result = 1;
    else
        result = 0;
end

endmodule