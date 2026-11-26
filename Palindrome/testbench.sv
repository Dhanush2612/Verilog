// Code your testbench here
// or browse Examples

module tb;

reg [3:0] in;
wire result;

palindrome dut(in, result);

initial begin

    in = 4'b1001;
    #10;

    $display("Input = %b, Palindrome = %b", in, result);

    in = 4'b1010;
    #10;

    $display("Input = %b, Palindrome = %b", in, result);

    $finish;
end

endmodule