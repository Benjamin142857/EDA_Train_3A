`define period 300

module test;

reg clk, reset, test, set_time, start_cook;
reg [15:0] cook_time;
wire [6:0] min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led;

top top(clk, reset, test, set_time, start_cook, cook_time,  min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led);


initial 
clk=0;

always
#(`period/2) clk = ~clk;

initial begin
reset=0; test=0; set_time=0; start_cook=0; cook_time=0;
#(`period*20) reset=1;
#(`period*2) test=1;
#(`period*2) test=0; set_time=1; cook_time=16'h0515;
#(`period*2) set_time=0; start_cook=1;
#(`period*1) start_cook=0;
#(`period*500)  set_time=1; cook_time=16'h3617;
#(`period*2) set_time=0; start_cook=1;
#(`period*1) start_cook=0;
#(`period*2200) $stop;
end

/* please complete the display command by yourself */

endmodule
