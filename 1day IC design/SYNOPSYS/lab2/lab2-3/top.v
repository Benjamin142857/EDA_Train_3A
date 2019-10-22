module top(clk, reset, test, set_time, start_cook, cook_time,  min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led);

input clk, reset, test, set_time, start_cook;
input [15:0] cook_time;
output [6:0] min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led;

wire clk, reset, test, set_time, start_cook;
wire [15:0] cook_time, time_load;
wire [6:0] min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led;
wire [3:0] min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next;

microwave microwave(clk, reset, test, set_time, start_cook, done, cook_time, time_load,  cook, load);
timer timer(time_load, clk, cook ,load, min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next, done);
display display( min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next ,
                min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led);

endmodule
