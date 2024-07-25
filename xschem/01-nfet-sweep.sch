v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 410 -980 1640 -160 {flags=graph
y1=1.8e-12
y2=0.00025
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
sweep=1
rawfile=$netlist_dir/01.raw
sim_type=dc
color=7
node=i(vsi)}
N 280 -310 290 -310 {
lab=#net1}
N 290 -310 290 -280 {
lab=#net1}
N 280 -280 290 -280 {
lab=#net1}
N 280 -280 280 -250 {
lab=#net1}
N 200 -410 280 -410 {
lab=vcc}
N 280 -410 280 -340 {
lab=vcc}
N 200 -310 240 -310 {
lab=G}
C {sky130_fd_pr/nfet_01v8.sym} 260 -310 0 0 {name=M1
L=\{GL\}
W=\{GW\}
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
C {devices/vsource.sym} 80 -360 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 280 -190 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 80 -390 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 200 -410 0 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 80 -330 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 200 -310 0 0 {name=p3 sig_type=std_logic lab=G}
C {devices/simulator_commands.sym} 30 -950 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.DC Vg 0 1.8 0.01

.param GW = 0.5
.param GL = 0.15

.options savecurrents
.control

  save all
  run
  write 01.raw G i(vsi)

  alterparam GL=0.2
  set appendwrite
  reset
  save all
  run
  write 01.raw G i(vsi)

  alterparam GL=0.25
  set appendwrite
  reset
  save all
  run
  write 01.raw G i(vsi)

  alterparam GL=0.3
  set appendwrite
  reset
  save all
  run
  write 01.raw G i(vsi)

  alterparam GL=0.35
  set appendwrite
  reset
  save all
  run
  write 01.raw G i(vsi)

  alterparam GL=0.4
  set appendwrite
  reset
  save all
  run
  write 01.raw G i(vsi)

  alterparam GL=0.45
  set appendwrite
  reset
  save all
  run
  write 01.raw G i(vsi)

  alterparam GL=0.5
  set appendwrite
  reset
  save all
  run
  write 01.raw G i(vsi)

.endc
"}
C {sky130_fd_pr/corner.sym} 10 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 80 -250 0 0 {name=Vg value=0 savecurrent=false}
C {devices/lab_pin.sym} 80 -280 0 0 {name=p4 sig_type=std_logic lab=G}
C {devices/gnd.sym} 80 -220 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 280 -220 0 0 {name=Vsi value=0 savecurrent=false}
C {devices/launcher.sym} 470 -120 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/01.raw dc"
}
