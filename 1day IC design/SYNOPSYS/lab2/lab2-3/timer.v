module timer(time_load, clk, cook ,load, min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next, done);
	input [15:0] time_load;
        input clk, cook, load;
        output [3:0] min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next;
	output done;
        reg  [3:0] min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next;
	reg  [3:0] min_msb, min_lsb, sec_msb, sec_lsb;
        wire [15:0] time_leave;
	wire done;
		
	assign time_leave = (load == 1'b1) ? time_load:{min_msb_next,min_lsb_next,sec_msb_next,sec_lsb_next};

	always @(time_leave or cook) begin
		min_msb = time_leave[15:12];
                min_lsb = time_leave[11:8];
                sec_msb = time_leave[7:4];
		sec_lsb = time_leave[3:0];
		if (cook) begin
			if (sec_lsb > 4'b0)
				begin
					sec_lsb = sec_lsb - 4'b1;
				end
			else if (sec_msb > 4'b0) 
                                begin
					sec_lsb = 4'd9;
					sec_msb = sec_msb - 4'b1;
				end
			else if (min_lsb > 4'b0) 
				begin
					sec_lsb = 4'd9;
					sec_msb = 4'd5;
					min_lsb = min_lsb - 4'b1;
				end
			else if (min_msb > 4'b0) 
				begin
					sec_lsb = 4'd9;
					sec_msb = 4'd5;
					min_lsb = 4'd9;
					min_msb = min_msb - 4'b1;
				end
			else
				begin
					sec_lsb = 4'd13; 
					sec_msb = 4'd12;
					min_lsb = 4'd11;
					min_msb = 4'd10;
				end
		end
	end


	always @(posedge clk) begin
        	min_msb_next = min_msb;
        	min_lsb_next = min_lsb;
		sec_msb_next = sec_msb;
        	sec_lsb_next = sec_lsb;
        end

	assign done = ({min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next} == 0);


endmodule
