module loader(cook_time, load_done, load_8888, load_clk, time_load, load);
input [15:0] cook_time;
input load_done, load_8888, load_clk;
output [15:0] time_load;
output load;
reg [15:0] time_load;
wire load_data;

parameter [15:0] led_8888 = {4'd8, 4'd8, 4'd8, 4'd8},
		 led_done = {4'hA, 4'hB, 4'hC, 4'hD};


	assign load = (load_done | load_8888 | load_clk);

always @ (load_8888 or load_done or cook_time)
	case(1'b1) //synopsys parallel_case
		load_8888: time_load = led_8888;
		load_done: time_load = led_done;
		default:   time_load = cook_time;
	endcase

endmodule
