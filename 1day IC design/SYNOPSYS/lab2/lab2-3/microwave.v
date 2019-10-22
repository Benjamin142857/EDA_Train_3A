module microwave(clk, reset, test, set_time, start_cook, done, cook_time, time_load,  cook, load);

input clk, reset, test, set_time, start_cook, done;
input [15:0] cook_time;
output [15:0] time_load;
output cook, load;

micro_st  micro_st(clk, reset, test, set_time, start_cook, done,
                         cook,load_8888, load_clk, load_done);
loader    loader(cook_time, load_done, load_8888, load_clk, time_load, load);


endmodule
