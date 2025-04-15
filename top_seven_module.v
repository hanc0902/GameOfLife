module top_seven_module (in_clka, in_clkb, in_stop, in_prgm, in_pp, in_btn0, in_btn1, out_game_state, out_grid);
    input wire in_clka, in_clkb, in_stop, in_prgm, in_pp, in_btn0, in_btn1;
    output wire [1:0] out_game_state;
    output wire [48:0] out_grid;

    gol_FSM fsm(.clka(in_clka), 
                        .clkb(in_clkb),
                        .stop(in_stop),
                        .prgm(in_prgm),
                        .pp(in_pp),
                        .btn0(in_btn0),
                        .btn1(in_btn1),
                        .game_state(out_game_state));

    gol_seven_dp dp(.clka(in_clka), 
                        .clkb(in_clkb), 
                        .state(out_game_state), 
                        .btn0(in_btn0),
                        .btn1(in_btn1), 
                        .stop(in_stop), 
                        .grid(out_grid));
endmodule
