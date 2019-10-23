module avalon_pwm
(
	clk, wr_data, cs, wr_n, addr, clr_n, rd_data, pwm_out
);



	input clk;
	input [31:0] wr_data;
	input cs;
	input wr_n;
	input addr;
	input clr_n;
	output [31:0] rd_data;
	output [7:0] pwm_out;

	reg [7:0]	div3, div2, div1, div0;
	reg [7:0]	duty3, duty2, duty1, duty0;
	reg [31:0] counter;
	reg off;
	reg [31:0] rd_data;
	wire div_en3, div_en2, div_en1, div_en0, duty_en3, duty_en2, duty_en1, duty_en0;
	
	always @(posedge clk or negedge clr_n)
	begin
		if (clr_n == 0)
		begin
			div3 <= 8'h 00;
			div2 <= 8'h 00;
			div1 <= 8'h 00;
			div0 <= 8'h 00;
			duty3 <= 8'h 00;
			duty2 <= 8'h 00;
			duty1 <= 8'h 00;
			duty0 <= 8'h 00;
		end
		else
		begin
			if (div_en3)
				div3 <= wr_data[31:24];
			else
				div3 <= div3;

			if (div_en2)
				div2 <= wr_data[23:16];
			else
				div2 <= div2;

			if (div_en1)
				div1 <= wr_data[15:8];
			else
				div1 <= div1;

			if (div_en0)
				div0 <= wr_data[7:0];
			else
				div0 <= div0;
			
			if (duty_en3)
				duty3 <= wr_data[31:24];
			else
				duty3 <= duty3;

			if (duty_en2)
				duty2 <= wr_data[23:16];
			else
				duty2 <= duty2;

			if (duty_en1)
				duty1 <= wr_data[15:8];
			else
				duty1 <= duty1;

			if (duty_en0)
				duty0 <= wr_data[7:0];
			else
				duty0 <= duty0;
		end		
	end
	
	always @(posedge clk or negedge clr_n)
	begin
		if (clr_n == 0)
			counter <= 0;
		else
			if (counter >= {div3, div2, div1, div0})
				counter <= 0;
			else	
				counter <= counter + 1;
	end
	
	always @(posedge clk or negedge clr_n)
	begin
		if (clr_n == 0)
			off <= 0;
		else
			if (counter >= {duty3, duty2, duty1, duty0})
				off <= 1;
			else
				if (counter == 0)
					off <= 0;
				else
					off <= off;
	end

	always @(addr or div3 or div2 or div1 or div0 or duty3 or duty2 or duty1 or duty0)
	if (addr == 0)
		rd_data = {div3, div2, div1, div0};
	else
		rd_data = {duty3, duty2, duty1, duty0};
		
	assign div_en3 = cs & !wr_n & !addr ;
	assign div_en2 = cs & !wr_n & !addr ;
	assign div_en1 = cs & !wr_n & !addr ;
	assign div_en0 = cs & !wr_n & !addr ;
	assign duty_en3 = cs & !wr_n & addr ;
	assign duty_en2 = cs & !wr_n & addr ;
	assign duty_en1 = cs & !wr_n & addr ;
	assign duty_en0 = cs & !wr_n & addr ;
	assign pwm_out[0] = ! off;
	assign pwm_out[1] = ! off;
	assign pwm_out[2] = ! off;
	assign pwm_out[3] = ! off;
	assign pwm_out[4] = ! off;
	assign pwm_out[5] = ! off;
	assign pwm_out[6] = ! off;
	assign pwm_out[7] = ! off;
	
endmodule
