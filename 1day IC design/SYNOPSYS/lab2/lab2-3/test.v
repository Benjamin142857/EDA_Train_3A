`define period 100

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
#(`period*500) test=0; set_time=1; cook_time=16'h0DEF;
#(`period*2) set_time=0; start_cook=1; 
#(`period*1) start_cook=0;
#(`period*1500) $stop;
end

initial begin
$gr_waves("clk", clk, "reset", reset, "test", test, "set_time", set_time, "start_cook", start_cook, "cook_time %h", cook_time, "mm_next %h", top.min_msb_next, "ml_next %h", top.min_lsb_next, "sm_next %h", top.sec_msb_next, "sl_next %h", top.sec_lsb_next,
//microwave
"state %d", top.microwave.micro_st.state, "load_8888", top.microwave.load_8888, "load_clk", top.microwave.load_clk,"done_d", top.done,"load_done", top.microwave.load_done, "cook_k", top.cook, "load_l", top.load, "time_load %h", top.time_load,
//timer
"leave %h", top.timer.time_leave, "min_m %h", top.timer.min_msb, "min_lsb %h", top.timer.min_lsb, "sec_m %h", top.timer.sec_msb, "sec_lsb %h", top.timer.sec_lsb,
//display
"mm_led %b", min_msb_led, "ml_led %b", min_lsb_led, "sm_led %b", sec_msb_led, "sl_led %b", sec_lsb_led);

$define_group_waves(1, "top", "clk", "reset", "test", "set_time", "start_cook", "cook_time %h", "mm_next %h", "ml_next %h", "sm_next %h", "sl_next %h");

$define_group_waves(2, "microwave", "clk", "reset", "test", "set_time", "start_cook", "cook_time", "state %d", "load_8888", "load_clk", "load_done", "done_d","cook_k", "load_l", "time_load %h");

$define_group_waves(3, "timer", "clk","load_l", "time_load %h", "cook_k", "leave %h", "min_m %h", "min_lsb %h", "sec_m %h", "sec_lsb %h", "mm_next %h", "ml_next %h", "sm_next %h", "sl_next %h");

$define_group_waves(4, "display", "mm_next %h", "ml_next %h", "sm_next %h", "sl_next %h", "mm_led %b", "ml_led %b", "sm_led %b", "sl_led %b");

$gr_waves_memsize(40000000);

$shm_open("test.shm");
$shm_probe("A");

end

endmodule
