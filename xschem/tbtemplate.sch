v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 550 -490 1350 -90 {flags=graph
y1=-0.15
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=out}
N 600 -640 600 -580 {
lab=GND}
N 1340 -720 1340 -660 {
lab=vcc}
N 600 -640 730 -640 {
lab=GND}
N 730 -670 730 -640 {
lab=GND}
N 700 -670 700 -620 {
lab=out}
N 700 -620 1340 -620 {
lab=out}
N 760 -670 760 -660 {
lab=vcc}
N 760 -660 1340 -660 {
lab=vcc}
N 730 -640 1290 -640 {
lab=GND}
N 1290 -670 1290 -640 {
lab=GND}
N 1210 -670 1210 -640 {
lab=GND}
N 1130 -670 1130 -640 {
lab=GND}
N 1050 -670 1050 -640 {
lab=GND}
N 970 -670 970 -640 {
lab=GND}
N 890 -670 890 -640 {
lab=GND}
N 810 -670 810 -640 {
lab=GND}
N 840 -670 840 -660 {
lab=vcc}
N 920 -670 920 -660 {
lab=vcc}
N 1000 -670 1000 -660 {
lab=vcc}
N 1080 -670 1080 -660 {
lab=vcc}
N 1160 -670 1160 -660 {
lab=vcc}
N 1240 -670 1240 -660 {
lab=vcc}
N 1320 -670 1320 -660 {
lab=vcc}
N 1260 -670 1260 -620 {
lab=out}
N 1180 -670 1180 -620 {
lab=out}
N 1100 -670 1100 -620 {
lab=out}
N 1020 -670 1020 -620 {
lab=out}
N 940 -670 940 -620 {
lab=out}
N 860 -670 860 -620 {
lab=out}
N 780 -670 780 -620 {
lab=out}
C {devices/launcher.sym} 95 -55 0 0 {name=h3 
descr="Ctrl-click to load Xyce or ngspice data" 
tclcommand="

  if \{ [sim_is_xyce] \} \{ ;# using an if \{\} allows to differentiate file names
    xschem raw_read $netlist_dir/simout.raw tran
  \} else \{
    xschem raw_read $netlist_dir/simout.raw tran
  \}
"
}
C {devices/simulator_commands_shown.sym} 20 -480 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="

VD0 D0 0 PULSE 0 1.8 100n 1n 1n   40n    80n
VD1 D1 0 PULSE 0 1.8 100n 1n 1n   80n   160n
VD2 D2 0 PULSE 0 1.8 100n 1n 1n  160n   320n
VD3 D3 0 PULSE 0 1.8 100n 1n 1n  320n   640n
VD4 D4 0 PULSE 0 1.8 100n 1n 1n  640n  1280n
VD5 D5 0 PULSE 0 1.8 100n 1n 1n 1280n  2560n
VD6 D6 0 PULSE 0 1.8 100n 1n 1n 2560n  5120n
VD7 D7 0 DC 0 ; PULSE 0 1.8 100n 1n 1n 5120n 10240n

.control
  save all
  tran 0.1n 20u
  write simout.raw
* quit 0
.endc

"}
C {sky130_fd_pr/corner.sym} 30 -210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8.sym} 730 -690 1 0 {name=M1
L=0.42
W=12
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1340 -620 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/vsource.sym} 230 -660 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 230 -630 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 600 -580 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 230 -690 1 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 1340 -720 1 0 {name=p3 sig_type=std_logic lab=vcc}
C {sky130_fd_pr/nfet_01v8.sym} 810 -690 1 0 {name=M2
L=0.42
W=6
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 890 -690 1 0 {name=M3
L=0.42
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 970 -690 1 0 {name=M4
L=0.42
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1050 -690 1 0 {name=M5
L=0.84
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1130 -690 1 0 {name=M6
L=1.68
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1210 -690 1 0 {name=M7
L=3.36
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1290 -690 1 0 {name=M8
L=6.72
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 730 -710 1 0 {name=p4 sig_type=std_logic lab=D7}
C {devices/lab_pin.sym} 810 -710 1 0 {name=p5 sig_type=std_logic lab=D6}
C {devices/lab_pin.sym} 890 -710 1 0 {name=p6 sig_type=std_logic lab=D5}
C {devices/lab_pin.sym} 970 -710 1 0 {name=p7 sig_type=std_logic lab=D4}
C {devices/lab_pin.sym} 1050 -710 1 0 {name=p8 sig_type=std_logic lab=D3}
C {devices/lab_pin.sym} 1130 -710 1 0 {name=p9 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} 1210 -710 1 0 {name=p10 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} 1290 -710 1 0 {name=p11 sig_type=std_logic lab=D0}
C {devices/res.sym} 1320 -590 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1320 -560 0 0 {name=l3 lab=GND}
