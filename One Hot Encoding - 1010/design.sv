// Code your design here

module moore_1010_onehot (
    input clk,
    input rst,
    input din,
    output reg detected
);

    parameter S0 = 5'b00001,
              S1 = 5'b00010,
              S2 = 5'b00100,
              S3 = 5'b01000,
              S4 = 5'b10000;

    reg [4:0] state;
    reg [4:0] next_state;

    always @(posedge clk) begin

        if (rst)
            state <= S0;

        else
            state <= next_state;

    end

    always @(*) begin

        next_state = S0;

        case (state)

            S0: begin
                if (din)
                    next_state = S1;
                else
                    next_state = S0;
            end

            S1: begin
                if (din)
                    next_state = S1;
                else
                    next_state = S2;
            end

            S2: begin
                if (din)
                    next_state = S3;
                else
                    next_state = S0;
            end

            S3: begin
                if (din)
                    next_state = S1;
                else
                    next_state = S4;
            end

            S4: begin
                if (din)
                    next_state = S3;
                else
                    next_state = S0;
            end

            default: begin
                next_state = S0;
            end

        endcase

    end

    always @(*) begin

        detected = 1'b0;

        case (state)

            S4: detected = 1'b1;

            default: detected = 1'b0;

        endcase

    end

endmodule