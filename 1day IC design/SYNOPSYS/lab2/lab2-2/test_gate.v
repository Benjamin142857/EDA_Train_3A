`define period 300

module test;

reg clk, reset, test, set_time, start_cook;
reg [15:0] cook_time;
wire [6:0] min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led;

top top(clk, reset, test, set_time, start_cook, cook_time,  min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led);

//bus wiring

wire [3:0] min_msb_next = {top.\min_msb_next[3] ,top.\min_msb_next[2] ,top.\min_msb_next[1] ,top.\min_msb_next[0] };
wire [3:0] min_lsb_next={top.\min_lsb_next[3] ,top.\min_lsb_next[2] ,top.\min_lsb_next[1] ,top.\min_lsb_next[0] };
wire [3:0] sec_msb_next={top.\sec_msb_next[3] ,top.\sec_msb_next[2] ,top.\sec_msb_next[1] ,top.\sec_msb_next[0] };
wire [3:0] sec_lsb_next={top.\sec_lsb_next[3] ,top.\sec_lsb_next[2] ,top.\sec_lsb_next[1] ,top.\sec_lsb_next[0] };
//wire [2:0] state = {top.microwave.micro_st.
wire [15:0] time_load = {top.\time_load[15] ,top.\time_load[14] ,top.\time_load[13] ,top.\time_load[12] ,top.\time_load[11] ,top.\time_load[10] ,top.\time_load[9] ,top.\time_load[8] ,top.\time_load[7] ,top.\time_load[6] ,top.\time_load[5] ,top.\time_load[4] ,top.\time_load[3] ,top.\time_load[2] ,top.\time_load[1] ,top.\time_load[0] };
//wire [15:0] time_leave = {top.timer.\time_leave[15] ,top.timer.\time_leave[14] ,top.timer.\time_leave[13] ,top.timer.\time_leave[12] ,top.timer.\time_leave[11] ,top.timer.\time_leave[10] ,top.timer.\time_leave[9] ,top.timer.\time_leave[8] ,top.timer.\time_leave[7] ,top.timer.\time_leave[6] ,top.timer.\time_leave[5] ,top.timer.\time_leave[4] ,top.timer.\time_leave[3] ,top.timer.\time_leave[2] ,top.timer.\time_leave[1] ,top.timer.\time_leave[0] };
wire [3:0] min_msb = {top.timer.\min_msb[3] ,top.timer.\min_msb[2] ,top.timer.\min_msb[1] ,top.timer.\min_msb[0] };
wire [3:0] min_lsb = {top.timer.\min_lsb[3] ,top.timer.\min_lsb[2] ,top.timer.\min_lsb[1] ,top.timer.\min_lsb[0] };
wire [3:0] sec_msb = {top.timer.\sec_msb[3] ,top.timer.\sec_msb[2] ,top.timer.\sec_msb[1] ,top.timer.\sec_msb[0] };
wire [3:0] sec_lsb = {top.timer.\sec_lsb[3] ,top.timer.\sec_lsb[2] ,top.timer.\sec_lsb[1] ,top.timer.\sec_lsb[0] };



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

initial begin
$gr_waves("clk", clk, "reset", reset, "test", test, "set_time", set_time, "start_cook", start_cook, "cook_time %h", cook_time,"mm_next %h", min_msb_next, "ml_next %h", min_lsb_next, "sm_next %h", sec_msb_next, "sl_next %h", sec_lsb_next,
//microwave
//"state %d", top.microwave.micro_st.state,
 "load_8888", top.microwave.load_8888, "load_clk", top.microwave.load_clk,"done_d", top.done,"load_done", top.microwave.load_done, "cook_k", top.cook, "load_l", top.load, "time_load %h", time_load,
//timer
//"leave %h", time_leave, 
"min_m %h", min_msb, "min_lsb %h", min_lsb, "sec_m %h", sec_msb, "sec_lsb %h", sec_lsb,
//display
"mm_led %b", min_msb_led, "ml_led %b", min_lsb_led, "sm_led %b", sec_msb_led, "sl_led %b", sec_lsb_led);

$define_group_waves(1, "top", "clk", "reset", "test", "set_time", "start_cook", "cook_time %h", "mm_next %h", "ml_next %h", "sm_next %h", "sl_next %h");

$define_group_waves(2, "microwave", "clk", "reset", "test", "set_time", "start_cook", "cook_time", "state %d", "load_8888", "load_clk", "load_done", "done_d","cook_k", "load_l", "time_load %h");

$define_group_waves(3, "timer", "clk","load_l", "time_load %h", "cook_k", "leave %h", "min_m %h", "min_lsb %h", "sec_m %h", "sec_lsb %h", "mm_next %h", "ml_next %h", "sm_next %h", "sl_next %h");

$define_group_waves(4, "display", "mm_next %h", "ml_next %h", "sm_next %h", "sl_next %h", "mm_led %b", "ml_led %b", "sm_led %b", "sl_led %b");

$gr_waves_memsize(40000000);
end

endmodule
