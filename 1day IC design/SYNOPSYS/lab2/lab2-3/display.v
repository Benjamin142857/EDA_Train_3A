module display( min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next ,
                min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led);
        input [3:0] min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next;
        output [6:0] min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led;
        wire [3:0] min_msb_next, min_lsb_next, sec_msb_next, sec_lsb_next;
        wire [6:0] min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led;

        converter convmm(min_msb_next[3], min_msb_next[2], min_msb_next[1], min_msb_next[0], min_msb_led[0], min_msb_led[1], min_msb_led[2], min_msb_led[3], min_msb_led[4], min_msb_led[5], min_msb_led[6]);

        converter convml(min_lsb_next[3], min_lsb_next[2], min_lsb_next[1], min_lsb_next[0], min_lsb_led[0], min_lsb_led[1], min_lsb_led[2], min_lsb_led[3], min_lsb_led[4], min_lsb_led[5], min_lsb_led[6]);

        converter convsm(sec_msb_next[3], sec_msb_next[2], sec_msb_next[1], sec_msb_next[0], sec_msb_led[0], sec_msb_led[1], sec_msb_led[2], sec_msb_led[3], sec_msb_led[4], sec_msb_led[5], sec_msb_led[6]);

        converter convsl(sec_lsb_next[3], sec_lsb_next[2], sec_lsb_next[1], sec_lsb_next[0], sec_lsb_led[0], sec_lsb_led[1], sec_lsb_led[2], sec_lsb_led[3], sec_lsb_led[4], sec_lsb_led[5], sec_lsb_led[6]);


endmodule
