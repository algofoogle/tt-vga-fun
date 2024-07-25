v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 60 980 610 {flags=graph
y1=-0.00044
y2=-1.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=1.28e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rainbow=1







color=7
node=i(@b.x7.xrbal.brend[i])}
B 2 1390 280 2190 680 {flags=graph
y1=1.9e-05
y2=0.46
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.28e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdac4
vdac4pin
in;v5120n,v2560n,v1280n,v640n,v320n,v160n,v080n,v040n,v020n"
color="4 5 12"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
T {NOTE: These are DUTY CYCLES (pixel durations), not periods.} 10 -30 0 0 0.4 0.4 {}
N 1700 70 1740 70 {
lab=vdac4pin}
N 1820 190 1820 210 {
lab=GND}
N 1820 70 1820 130 {
lab=vdac4pin}
N 1740 70 1820 70 {
lab=vdac4pin}
N 1410 70 1460 70 {
lab=vdac4}
C {sky130_fd_pr/corner.sym} 1040 440 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 1110 580 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 150 -600 0 0 {name=V1 value="pwl 0ns 0v, 20ns 0v, 100ns 1.8v, 200ns 1.8v"  savecurrent=false}
C {devices/lab_pin.sym} 150 -630 0 0 {name=p1 sig_type=std_logic lab=vramp}
C {devices/gnd.sym} 150 -570 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 60 -600 0 0 {name=V2 value=1.8  savecurrent=false}
C {devices/lab_pin.sym} 60 -630 0 0 {name=p7 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 60 -570 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 680 -570 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.func d0() \{0.02*(v040n+2.0)\}
.func d1() \{(v080n+4)/50\}
.func d2() \{(v160n+6)/50\}
.func d3() \{(v320n+8)/50\}
.func d4() \{(v640n+10)/50\}
.func d5() \{(v1280n+12)/50\}
.func d6() \{(v2560n+14)/50\}
.func d7() \{(v5120n+16)/50\}
.func ideal() \{'1*(0.430/1.800)*(v5120n/2.0 + v2560n/4.0 + v1280n/8.0 + v640n/16.0 + v320n/32.0 + v160n/64.0 + v080n/128.0 + v040n/256.0)'\}
*NOTE: 0.430/1.800 above scales the "perfect" output line to be closer to the scale of actual output.
.options savecurrents
.control
  save all
  tran 1n 12.8u
  write b.raw

  plot 
  + ideal() v(vdac4) v(vdac4pin)
  + d0() d1() d2() d3() d4() d5() d6() d7()

.endc
"}
C {devices/vsource.sym} 60 -490 0 0 {name=V3 value="pulse 1.8v 0v 0n 1n 1n 19n 40n"  savecurrent=false}
C {devices/lab_pin.sym} 60 -420 0 0 {name=p3 sig_type=std_logic lab=v040n}
C {devices/gnd.sym} 60 -460 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 60 -390 0 0 {name=V4 value="pulse 1.8v 0v 0n 1n 1n 39n 80n"  savecurrent=false}
C {devices/lab_pin.sym} 60 -320 0 0 {name=p5 sig_type=std_logic lab=v080n}
C {devices/gnd.sym} 60 -360 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 60 -290 0 0 {name=V5 value="pulse 1.8v 0v 0n 1n 1n 79n 160n"  savecurrent=false}
C {devices/lab_pin.sym} 60 -220 0 0 {name=p6 sig_type=std_logic lab=v160n}
C {devices/gnd.sym} 60 -260 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1410 70 3 1 {name=p25 sig_type=std_logic lab=vdac4}
C {tt06_analog_load.sym} 1550 90 0 0 {name=x5}
C {devices/gnd.sym} 1700 90 0 0 {name=l41 lab=GND}
C {devices/res.sym} 1820 160 0 0 {name=R8
value=30e3
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1700 70 3 1 {name=p28 sig_type=std_logic lab=vdac4pin}
C {devices/gnd.sym} 1820 210 0 1 {name=l33 lab=GND}
C {devices/vsource.sym} 60 -190 0 0 {name=V6 value="pulse 1.8v 0v 0n 1n 1n 159n 320n"  savecurrent=false}
C {devices/lab_pin.sym} 60 -120 0 0 {name=p31 sig_type=std_logic lab=v320n}
C {devices/gnd.sym} 60 -160 0 0 {name=l34 lab=GND}
C {devices/vsource.sym} 60 -90 0 0 {name=V7 value="pulse 1.8v 0v 0n 1n 1n 319n 640n"  savecurrent=false}
C {devices/lab_pin.sym} 320 -420 0 0 {name=p32 sig_type=std_logic lab=v640n}
C {devices/gnd.sym} 60 -60 0 0 {name=l35 lab=GND}
C {devices/vsource.sym} 320 -390 0 0 {name=V8 value="pulse 1.8v 0v 0n 1n 1n 639n 1280n"  savecurrent=false}
C {devices/lab_pin.sym} 320 -320 0 0 {name=p33 sig_type=std_logic lab=v1280n}
C {devices/gnd.sym} 320 -360 0 0 {name=l36 lab=GND}
C {devices/vsource.sym} 320 -290 0 0 {name=V9 value="pulse 1.8v 0v 0n 1n 1n 1279n 2560n"  savecurrent=false}
C {devices/lab_pin.sym} 320 -220 0 0 {name=p34 sig_type=std_logic lab=v2560n}
C {devices/gnd.sym} 320 -260 0 0 {name=l38 lab=GND}
C {devices/vsource.sym} 320 -190 0 0 {name=V10 value="pulse 1.8v 0v 0n 1n 1n 2559n 5120n"  savecurrent=false}
C {devices/lab_pin.sym} 320 -120 0 0 {name=p35 sig_type=std_logic lab=v5120n}
C {devices/gnd.sym} 320 -160 0 0 {name=l39 lab=GND}
C {bdac.sym} 1260 140 0 0 {name=x7}
C {devices/lab_pin.sym} 1110 70 0 0 {name=p18 sig_type=std_logic lab=v040n}
C {devices/lab_pin.sym} 1110 90 0 0 {name=p19 sig_type=std_logic lab=v080n}
C {devices/lab_pin.sym} 1110 110 0 0 {name=p20 sig_type=std_logic lab=v160n}
C {devices/lab_pin.sym} 1110 130 0 0 {name=p21 sig_type=std_logic lab=v320n}
C {devices/lab_pin.sym} 1110 150 0 0 {name=p22 sig_type=std_logic lab=v640n}
C {devices/lab_pin.sym} 1110 170 0 0 {name=p23 sig_type=std_logic lab=v1280n}
C {devices/lab_pin.sym} 1110 190 0 0 {name=p24 sig_type=std_logic lab=v2560n}
C {devices/lab_pin.sym} 1110 210 0 0 {name=p26 sig_type=std_logic lab=v5120n}
C {devices/lab_pin.sym} 1260 40 0 0 {name=p2 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 1260 240 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 60 -520 0 0 {name=p4 sig_type=std_logic lab=v020n}
C {devices/vsource.sym} 320 -90 0 0 {name=V11 value="pulse 1.8v 0v 0n 1n 1n 5119n 10240n"  savecurrent=false}
C {devices/gnd.sym} 320 -60 0 0 {name=l7 lab=GND}
