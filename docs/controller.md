# Controller

## Selecting display mode and options

### Common to all modes

At reset, `ui_in[7]` selects VGA timing:

*   0 = Regular 640x480@59.94Hz from 25.175MHz clock
*   1 = 1440x900@60Hz from 26.6175MHz clock

### Mode 0 (MODE_PASS)

Pass ui_in directly to all DACs (greyscale output).

#### `ui_in` at reset

```
76543210
-000----    Mode
------g-    Gate: 0 = ungated; 1 = gated by VGA blanking
-------r    Registered: 0 = unregistered; 1 = registered
```

#### After reset

`ui_in` passes directly to the inputs of all 3 DACs, meaning it controls a greyscale output.


#### Expected testing/behaviour

Before the very first power-on, hold the design in reset and ground all `ui_in`s.

Power on, and DAC outputs should all be their lowest level, i.e. internal digital outs should be 0. This means there should be no current thru any part of the DACs.

NOTE: In this mode, there is no VGA blanking, so the `ui_in` => DAC => analog out signal should be uninterrupted.

Put a scope on (say) R analog output and use HSYNC as trigger, then release reset. HSYNC should become active, while R should be 0V.

Turn on `ui_in[1]`. Internally this will bring the respective DAC input pin to 1.8V, while its neighbours are at 0V.
*   The resulting output voltage is estimated to be about 1.8*(2/255) = 0.014V, but it could be a little lower because I should've used a final 2R to GND in the DAC, but only used R.
*   Because the DAC's digital input feeds a 20k resistor, this should mean a maximum of 90uA, but beware: The resistor width is 0.69um, so that's a current of 90/0.69 => 130uA, which exceeds the maximum 100uA recommended for this type of resistor.
*   In practice, hopefully we'll find that there is more current limiting by virtue of the digital circuit's output buffer drive strength (and likewise that of the other digital pins).

Turn off `ui_in[1]` and turn on any *one* of 2..6 at a time -- a respective power-of-2 voltage increase should be seen.

Turn off the system, then hold the design in reset, tie `ui_in[1]` high, and then turn the system on. R output should remain at 0V until you release reset, then you should observe the R output at ~0.014V *except* when it now falls to 0V because of video blanking.

Try turning on more than one `ui_in` at the same time, avoiding 0 and 7 for now.




## Pinouts

### `ui_in`

*   See [Selecting display mode and options](#selecting-display-mode-and-options)

### `uo_out`

These match the Tiny VGA PMOD - See: https://github.com/algofoogle/tt05-vga-spi-rom/blob/9208ed836d03bb5593d383a55a8ddcab464ed9d2/src/tt05_top.v#L13-L23

0.  `red[7]`
1.  `green[7]`
2.  `blue[7]`
3.  `vsync`
4.  `red[6]`
5.  `green[6]`
6.  `blue[6]`
7.  `hsync`

### `ua`

0.  `red`
1.  `green`
2.  `blue`
3.  **DONE (nil):** (none)
4.  **DONE (nil):** (none)
5.  `Y` (inverter output)

### bidir

0.  OUT: vblank
1.  OUT: hblank
2.  OUT: `Y` (copy of inverter output)
3.  **DONE (nil):** (IN: unused)
4.  **DONE (nil):** (IN: unused)
5.  **DONE (nil):** (IN: unused)
6.  **DONE (nil):** (IN: unused)
7.  IN: `A` (inverter input)

`uio_oe` ties:

0.  *VPWR*
1.  *VPWR*
2.  *VPWR*
3.  VGND
4.  VGND
5.  VGND
6.  VGND
7.  *VPWR*

`uio_out` ties:

3.  VGND
4.  VGND
5.  VGND
6.  VGND
7.  VGND

### Power

*   Controller:
    *   VPWR
    *   VGND
*   DACs:
    *   VGND
    *   VSUBS
*   Inverter:
    *   VPWR (VDD)
    *   VGND (VSS)



## Info

Pin arrangement:

*   North:
    *   TT pin pitch is 3.68um
*   South:
    *   DAC pin pitch is 4um
    *   Insert dummy pins between channels


This is part of an intended mixed-signal design. Not properly implemented yet.





```

Mode selected by ui_in at reset:

Bit 7 specifies VGA timing selection:

Mode 0: Pass ui_in directly to all 3 DACs:
    76543210
    -000----    Mode
    ------g-    Gate: 0 = ungated; 1 = gated by VGA blanking
    -------r    Registered: 0 = unregistered; 1 = registered

Mode 1: Ramp tests:
    -001----    Mode
    ----dd--    Divider (-1, i.e. 0=div/1, 1=div/2)
    ------pp    Primary:
                0 = red
                1 = green
                2 = blue
                3 = all

Mode 2: Bars test: Ramp interleaved with negative ramp on alternate pixels
    -010----    Mode
    ----dd--    Divider (-1, i.e. 0=div/1, 1=div/2)
    ------pp    Primary:
                0 = red
                1 = green
                2 = blue
                3 = all

Mode 3: XOR patterns
...SEE BELOW...
```

For nice XOR patterns, this Shadertoy code gives an idea of something cool that we can do:

```c
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
    
    int t = int(iTime*60.0) & 0xFF;
    int x = int(fragCoord.x) & 0xFF;
    int y = int(fragCoord.y) & 0xFF;
    int ax = (((int(fragCoord.x)+int(iTime*7.5))>>1) & 0xFF);
    int ay = (((int(fragCoord.y)+int(iTime*7.5))>>1) & 0xFF);
    int bx = (((int(fragCoord.x)+int(iTime*15.0))<<0) & 0xFF);
    int by = (((int(fragCoord.y)+int(iTime*30.0))<<0) & 0xFF);
    int cx = (((int(fragCoord.x)+int(iTime*30.0))<<1) & 0xFF);
    int cy = (((int(fragCoord.y)+int(iTime*15.0))<<1) & 0xFF);


    vec3 col;
    if (false) {    
        // Time varying pixel color
        col = vec3(
            float(ax^ay)/256.0,
            float(bx^by)/256.0,
            float(cx^cy)/256.0
        ); //0.5 + 0.5*cos(iTime+uv.xyx+vec3(0,2,4));
    } else {    
        col = vec3(
            float(0xFF&((x>>1)^((y<<0))))/256.0,
            float(0xFF&(x&y))/256.0,
            float(0xFF&(((x-y)&0xFF)+(t&0xFF)/*^(y^x)*/))/256.0
        );
    }

    // Output to screen
    fragColor = vec4(col,1.0);
}
```
