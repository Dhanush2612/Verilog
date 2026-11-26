// Code your testbench here
// or browse Examples

module tb;

reg trigger;
wire done;

event_example uut(trigger, done);

initial
begin
   
    trigger = 0;
    #10 trigger = 1;
    #5  trigger = 0;
    #10 trigger = 1;
    #10 $finish;
end

initial
  
    $monitor("Time=%0t trigger=%b done=%b",$time, trigger, done);

endmodule