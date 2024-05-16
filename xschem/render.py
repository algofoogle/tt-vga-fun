import ltspice
import os
import numpy as np
import sys

# SRC = 'simulation/tb_r2rV2.raw'
# OUT = 'unbuffered_parax.ppm'

# Source ngspice raw output file:
SRC = 'mixed.raw' if len(sys.argv)<2 else sys.argv[1]
# Output image file to create:
OUT = '~/HOST_Documents/mixed_raw.ppm' if len(sys.argv)<3 else sys.argv[2]

HS = 'V(hsync)'

# ===== Image writer's RGB channel source definitions =====

# # --- Use raw PEX model output for all 3 channels ---
# VR = 'V(out_parax)'
# VG = 'V(out_parax)'
# VB = 'V(out_parax)'

# --- Buffered outputs ---
VR = 'V(routpin)'
VG = 'V(goutpin)'
VB = 'V(boutpin)'

# # --- Terribly unbuffered outputs ---
# VR = 'V(rdacxhzpin)'
# VG = 'V(gdacxhzpin)'
# VB = 'V(bdacxhzpin)'

# ===== Output range scaling =====
# # Typical amplified outputs:
# scale_min = 0.30
# scale_max = 1.30

# Typical raw DAC unbuffered range:
scale_min = 0.00
scale_max = 1.80


# piecewise_linear_interpolation
def pwlerp(time_points, output_values, interval=0.1):
    """
    Sample a piece-wise linear function at regular intervals.

    Parameters:
    - time_points: List or array of time points
    - output_values: List or array of output values corresponding to time points
    - interval: Regular sampling interval

    Returns:
    - sampled_times: List of sampled time points
    - sampled_values: List of corresponding sampled output values
    """

    # Ensure time_points and output_values are numpy arrays
    time_points = np.array(time_points)
    output_values = np.array(output_values)

    # Calculate the slopes between consecutive points
    slopes = np.diff(output_values) / np.diff(time_points)

    # Sampled times from the minimum time to the maximum time with the given interval
    sampled_times = np.arange(min(time_points), max(time_points), interval)

    # Initialize sampled values list
    sampled_values = []

    # Interpolate values for each sampled time
    for t in sampled_times:
        # Find the index of the interval in which t lies
        index = np.searchsorted(time_points, t, side='right') - 1

        # Handle the case when t is outside the given time range
        if index < 0:
            sampled_values.append(output_values[0])
        elif index >= len(slopes):
            sampled_values.append(output_values[-1])
        else:
            # Interpolate based on the slope and time difference
            interpolated_value = output_values[index] + slopes[index] * (t - time_points[index])
            sampled_values.append(interpolated_value)

    return sampled_times, sampled_values


data = ltspice.Ltspice(SRC)
print(f'Loading {SRC}... ', end='')
data.parse()
print('Done')
t = data.get_time()
# rdata = data.get_data(VR)
# gdata = data.get_data(VG)
# bdata = data.get_data(VB)
time_data, rdata = pwlerp(t, data.get_data(VR), 40e-9)
_,         gdata = pwlerp(t, data.get_data(VG), 40e-9)
_,         bdata = pwlerp(t, data.get_data(VB), 40e-9)
_,         hsync = pwlerp(t, data.get_data(VB), 40e-9)
# Min and max tracking:
n = 200
x = -200
# scale_min/max...
# Voltage range that maps to 0..255 out (with clamping):
# -- Raw (unbuffered) DAC output:
# scale_min = 0.00
# scale_max = 1.67
sr = scale_max-scale_min
transform = lambda c: int(255*max(0,min(1,(c-scale_min)/sr)))
# -- Buffered DAC output:
# scale_min = 0.3
# scale_max = 1.4
pixels = time_data.size
print(f'Raw samples: {t.size} - Pixels: {pixels}')
lines = int(np.ceil(pixels / 800))
# tail = pixels % 800
out_file = os.path.expanduser(OUT)
with open(out_file, 'w') as f:
    f.write("P3\n")
    f.write(f'800 {lines}\n')
    f.write('255\n')
    for i in range(pixels):
        # Get raw R/G/B values:
        r = rdata[i]
        g = gdata[i]
        b = bdata[i]
        # Adjust tracked min/max values from them:
        n = min(n,r,g,b)
        x = max(x,r,g,b)
        # Now scale them to the 0..255 range:
        r = transform(r)
        g = transform(g)
        b = transform(b)
        f.write(f'{r} {g} {b} ')
        if i % 800 == 799: f.write('\n')
        # breakpoint()
    # for _ in range(tail):
    #     f.write(f'0 255 0 ')
print(f'min: {n:0.6f} :: max: {x:0.6f}')

