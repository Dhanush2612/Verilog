// Named block with disable

module disable_even;

integer i;

initial begin : even_block

    for(i = 0; i < 10; i = i + 1)
    begin
        $display("%0d", i * 2);

        if(i == 9)
            disable even_block;
    end

end

endmodule
