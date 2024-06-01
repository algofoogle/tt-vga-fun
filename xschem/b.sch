v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 170 980 720 {flags=graph
y1=-0.00056745871
y2=0.00058338929
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=6.4e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rainbow=1




color="7 4"
node="i(@b.xr5.brend[i])
i(@b.xr4.brend[i])"}
N 1980 -150 2020 -150 {
lab=vdac4pin}
N 2100 -30 2100 -10 {
lab=GND}
N 2100 -150 2100 -90 {
lab=vdac4pin}
N 2020 -150 2100 -150 {
lab=vdac4pin}
N 1690 -150 1740 -150 {
lab=vdac4}
C {sky130_fd_pr/corner.sym} 20 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 90 -50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 360 -760 0 0 {name=V1 value="pwl 0ns 0v, 20ns 0v, 100ns 1.8v, 200ns 1.8v"  savecurrent=false}
C {devices/lab_pin.sym} 360 -790 0 0 {name=p1 sig_type=std_logic lab=vramp}
C {devices/gnd.sym} 360 -730 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 270 -760 0 0 {name=V2 value=1.8  savecurrent=false}
C {devices/lab_pin.sym} 270 -790 0 0 {name=p7 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 270 -730 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 860 -920 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="

.options savecurrents

.control
  save all
  tran 1n 6400n
  write b.raw
*  plot
*  + i(vsteer)
*  plot
*  + vdac1 vdac2 vdac3


  plot 
  + vdac4*30 vdac4pin*30
  + v040n+2.0
  + v080n+4
  + v160n+6
  + v320n+8
  + v640n+10
  + v1280n+12
  + v2560n+14
  + v5120n+16
*v5120n/2.0 + v2560n/4.0 + v1280n/8.0 + v640n/16.0 + v320n/32.0 + v160n/64.0 + v080n/128.0 + v040n/256.0


*  plot vpull
*  + vramp
*  + v040n
*  + v080n+2
*  + v160n+4
.endc

"}
C {devices/vsource.sym} 270 -650 0 0 {name=V3 value="pulse 1.8v 0v 0n 1n 1n 19n 40n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -680 0 0 {name=p3 sig_type=std_logic lab=v040n}
C {devices/gnd.sym} 270 -620 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 270 -550 0 0 {name=V4 value="pulse 1.8v 0v 0n 1n 1n 39n 80n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -580 0 0 {name=p5 sig_type=std_logic lab=v080n}
C {devices/gnd.sym} 270 -520 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 270 -450 0 0 {name=V5 value="pulse 1.8v 0v 0n 1n 1n 79n 160n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -480 0 0 {name=p6 sig_type=std_logic lab=v160n}
C {devices/gnd.sym} 270 -420 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1690 -150 3 1 {name=p25 sig_type=std_logic lab=vdac4}
C {tt06_analog_load.sym} 1830 -130 0 0 {name=x5}
C {devices/gnd.sym} 1980 -130 0 0 {name=l41 lab=GND}
C {devices/res.sym} 2100 -60 0 0 {name=R8
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1980 -150 3 1 {name=p28 sig_type=std_logic lab=vdac4pin}
C {devices/gnd.sym} 2100 -10 0 1 {name=l33 lab=GND}
C {devices/vsource.sym} 270 -350 0 0 {name=V6 value="pulse 1.8v 0v 0n 1n 1n 159n 320n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -380 0 0 {name=p31 sig_type=std_logic lab=v320n}
C {devices/gnd.sym} 270 -320 0 0 {name=l34 lab=GND}
C {devices/vsource.sym} 270 -250 0 0 {name=V7 value="pulse 1.8v 0v 0n 1n 1n 319n 640n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -280 0 0 {name=p32 sig_type=std_logic lab=v640n}
C {devices/gnd.sym} 270 -220 0 0 {name=l35 lab=GND}
C {devices/vsource.sym} 540 -450 0 0 {name=V8 value="pulse 1.8v 0v 0n 1n 1n 639n 1280n"  savecurrent=false}
C {devices/lab_pin.sym} 540 -480 0 0 {name=p33 sig_type=std_logic lab=v1280n}
C {devices/gnd.sym} 540 -420 0 0 {name=l36 lab=GND}
C {devices/vsource.sym} 540 -350 0 0 {name=V9 value="pulse 1.8v 0v 0n 1n 1n 1279n 2560n"  savecurrent=false}
C {devices/lab_pin.sym} 540 -380 0 0 {name=p34 sig_type=std_logic lab=v2560n}
C {devices/gnd.sym} 540 -320 0 0 {name=l38 lab=GND}
C {devices/vsource.sym} 540 -250 0 0 {name=V10 value="pulse 1.8v 0v 0n 1n 1n 2559n 5120n"  savecurrent=false}
C {devices/lab_pin.sym} 540 -280 0 0 {name=p35 sig_type=std_logic lab=v5120n}
C {devices/gnd.sym} 540 -220 0 0 {name=l39 lab=GND}
C {bdac.sym} 1540 -80 0 0 {name=x7}
C {devices/lab_pin.sym} 1390 -150 0 0 {name=p18 sig_type=std_logic lab=v040n}
C {devices/lab_pin.sym} 1390 -130 0 0 {name=p19 sig_type=std_logic lab=v080n}
C {devices/lab_pin.sym} 1390 -110 0 0 {name=p20 sig_type=std_logic lab=v160n}
C {devices/lab_pin.sym} 1390 -90 0 0 {name=p21 sig_type=std_logic lab=v320n}
C {devices/lab_pin.sym} 1390 -70 0 0 {name=p22 sig_type=std_logic lab=v640n}
C {devices/lab_pin.sym} 1390 -50 0 0 {name=p23 sig_type=std_logic lab=v1280n}
C {devices/lab_pin.sym} 1390 -30 0 0 {name=p24 sig_type=std_logic lab=v2560n}
C {devices/lab_pin.sym} 1390 -10 0 0 {name=p26 sig_type=std_logic lab=v5120n}
C {devices/lab_pin.sym} 1540 -180 0 0 {name=p2 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 1540 20 0 0 {name=l1 lab=GND}
