// Nested Block

module nested_gate(
    input a,
    input b,
    output reg y
);

reg and_out;

always @(*) begin : and_block

    and_out = a & b;

    begin : not_block
      
        y = ~and_out;
        $display("AND = %b, NAND = %b", and_out, y);
      
    end

end

endmodule
