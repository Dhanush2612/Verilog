// Mealy overlapping for 1010

module mealy_1010
  (
    input reg in,clk,rst,
    output reg out,reg[1:0] present,next
  );

  parameter [1:0] s0 = 2'b00,
                  s1 = 2'b01,
                  s2 = 2'b10,
                  s3 = 2'b11;

  always@(posedge clk,posedge rst)

    begin

      if(rst==1)

        present <= s0;

      else

        present <= next;

    end

  always@(present,in)

    begin

      case(present)

        s0: begin

            if(in == 1)

              begin

                next = s1;
                out = 0;

              end

            else

              begin

                next = s0;
                out = 0;

              end

          end

        s1: begin

            if(in == 0)

              begin

                next = s2;
                out = 0;

              end

            else

              begin

                next = s1;
                out = 0;

              end

          end

        s2: begin

            if(in == 1)

              begin

                next = s3;
                out = 0;

              end

            else

              begin

                next = s0;
                out = 0;

              end

          end

        s3: begin

            if(in == 0)

              begin

                next = s2;
                out = 1;

              end

            else

              begin

                next = s1;
                out = 0;

              end

          end

      endcase

    end

endmodule