`default_nettype none

// just a stub to keep the Tiny Tapeout tools happy

module tt_um_algofoogle_tt06_grab_bag(
    input  wire       VGND,
    input  wire       VPWR,
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua, // analog pins
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire [7:0] r, g, b;
    wire r7,g7,b7, r6,g6,b6;

    controller controller(
        .VPWR   (VPWR),
        .VGND   (VGND),
        .clk    (clk),
        .rst_n  (rst_n),
        .vblank (uio_out[0]),
        .hblank (uio_out[1]),
        .r      (r),
        .g      (g),
        .b      (b),
        .r7     (uo_out[0]),
        .g7     (uo_out[1]),
        .b7     (uo_out[2]),
        .vsync  (uo_out[3]),
        .r6     (uo_out[4]),
        .g6     (uo_out[5]),
        .b6     (uo_out[6]),
        .hsync  (uo_out[7])
    );

    r2r dac_red(
        .d0     (r[0]),
        .d1     (r[1]),
        .d2     (r[2]),
        .d3     (r[3]),
        .d4     (r[4]),
        .d5     (r[5]),
        .d6     (r[6]),
        .d7     (r[7]),
        .aout   (ua[0]),
        .GND    (VGND),
        .VSUB   (VGND)
    );

    r2r dac_green(
        .d0     (g[0]),
        .d1     (g[1]),
        .d2     (g[2]),
        .d3     (g[3]),
        .d4     (g[4]),
        .d5     (g[5]),
        .d6     (g[6]),
        .d7     (g[7]),
        .aout   (ua[1]),
        .GND    (VGND),
        .VSUB   (VGND)
    );

    r2r dac_blue(
        .d0     (b[0]),
        .d1     (b[1]),
        .d2     (b[2]),
        .d3     (b[3]),
        .d4     (b[4]),
        .d5     (b[5]),
        .d6     (b[6]),
        .d7     (b[7]),
        .aout   (ua[2]),
        .GND    (VGND),
        .VSUB   (VGND)
    );

    wire Y; // Inverter output -- goes to multiple places.
    assign uio_out[2] = Y;
    assign ua[5] = Y;

    inverter inverter(
        .VDD    (VPWR),
        .VSS    (VGND),
        .A      (uio_in[7]),
        .Y      (Y)
    );

    r2r r2r(
        .d0     (uio_in[0]),
        .d1     (uio_in[1]),
        .d2     (uio_in[2]),
        .d3     (uio_in[3]),
        .d4     (uio_in[4]),
        .d5     (uio_in[5]),
        .d6     (uio_in[6]),
        .d7     (uio_in[7]),
        .aout   (ua[1]),
        .GND    (VGND),
        .VSUB   (VGND)
    );

    // Tie other digital outputs to VGND, so they don't float:

    //assign uo_out [7:1] = {7{VGND}};
    // assign uo_out[1] = VGND;
    // assign uo_out[2] = VGND;
    // assign uo_out[3] = VGND;
    // assign uo_out[4] = VGND;
    // assign uo_out[5] = VGND;
    // assign uo_out[6] = VGND;
    // assign uo_out[7] = VGND;

    //assign uio_out[7:0] = {8{VGND}};
    // assign uio_out[0] = VGND;
    // assign uio_out[1] = VGND;
    // assign uio_out[2] = VGND;
    assign uio_out[3] = VGND;
    assign uio_out[4] = VGND;
    assign uio_out[5] = VGND;
    assign uio_out[6] = VGND;
    assign uio_out[7] = VGND;

    //assign uio_oe [7:0] = {8{VGND}};
    assign uio_oe[0] = VPWR;    // Output: vblank
    assign uio_oe[1] = VPWR;    // Output: hblank
    assign uio_oe[2] = VPWR;    // Output: Y (inverter output)
    assign uio_oe[3] = VGND;
    assign uio_oe[4] = VGND;
    assign uio_oe[5] = VGND;
    assign uio_oe[6] = VGND;
    assign uio_oe[7] = VGND;    // Input: A (inverter input)
    
endmodule

