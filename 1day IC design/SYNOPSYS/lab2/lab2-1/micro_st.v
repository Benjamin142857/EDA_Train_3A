module micro_st(clk, reset, test, set_time, start_cook, done,
    cook, load_8888, load_clk, load_done);
input clk, reset, test, set_time, start_cook, done;
output cook, load_8888, load_clk, load_done;
reg cook, load_8888, load_clk, load_done;

/*  This file is complete. It is supplied intact to allow for simple           */
/*  experimentation with the Synopsys Finite State Machine Optimization Tools. */

//synopsys state_vector state

parameter [2:0]  /* synopsys enum bus_states */
                IDLE 	  = 3'd0,
		LAMP_TEST = 3'd1,
		SET_CLOCK = 3'd2,
		TIMER     = 3'd3,
                DONE_MSG  = 3'd4;

reg [2:0] /* synopsys enum bus_states */  state, next_state;
 	
always @(state or test or done or set_time or start_cook)
begin

/* To define "default" settings for outputs as well as the next_state of our */
/* design, we will first set some "initializations". These "initializations"  */
/* will then be selectively overwritten by assignments within the following   */
/* case statement.  While this is not the only way of ensuring complete       */ 
/* specifications for these items, and hence avoiding latch inference,        */
/* this simple method is logically correct.                                   */


    next_state = IDLE;
    {load_8888, load_clk, cook, load_done} = 4'b0;  

    case(state)

    IDLE: begin
          if (test) begin
                    next_state = LAMP_TEST;
                    load_8888 = 1'b1;
                    end 
          else if (set_time) begin
                             next_state = SET_CLOCK;
                             load_clk   = 1'b1;
                             end
          else if (start_cook & !done) begin
                                       next_state = TIMER;
                                       cook = 1'b1;
                                       end
          else begin
               next_state = IDLE;
               {load_8888, load_clk, cook, load_done} = 4'b0;
               end
          end

   LAMP_TEST: begin
        load_8888 = 1'b1;
        next_state = IDLE;
        end

   SET_CLOCK: begin
        load_clk = 1'b1;
        next_state = IDLE;
        end

   TIMER: begin
          if (!done) begin
                     cook = 1'b1;
                     next_state = TIMER;
                     end
          else begin
               next_state = DONE_MSG;
               load_done = 1'b1;
               end
          end

   DONE_MSG: begin
             load_done = 1'b1;
             next_state = IDLE;
             end
	   
    endcase
end

always @( posedge clk or negedge reset)
if (!reset) state = IDLE;
else        state = next_state;

endmodule
