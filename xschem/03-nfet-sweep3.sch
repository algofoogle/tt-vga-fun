v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 410 -980 1640 -160 {flags=graph
y1=1.2e-12
y2=0.00044
ypos1=0
ypos2=2
divy=20

unity=1
x1=0
x2=1.8
divx=20

xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0
rainbow=0
sweep=1




dataset=-1
subdivy=0
subdivx=1
color="7 8 12 4"
node="i(vs0p50)
i(vs0p35)
i(vs0p25)
i(vs0p15)"}
N 250 -920 260 -920 {
lab=#net1}
N 260 -920 260 -890 {
lab=#net1}
N 250 -890 260 -890 {
lab=#net1}
N 250 -890 250 -870 {
lab=#net1}
N 250 -970 250 -950 {
lab=vcc}
N 250 -720 260 -720 {
lab=#net2}
N 260 -720 260 -690 {
lab=#net2}
N 250 -690 260 -690 {
lab=#net2}
N 250 -690 250 -670 {
lab=#net2}
N 250 -770 250 -750 {
lab=vcc}
N 250 -520 260 -520 {
lab=#net3}
N 260 -520 260 -490 {
lab=#net3}
N 250 -490 260 -490 {
lab=#net3}
N 250 -490 250 -470 {
lab=#net3}
N 250 -570 250 -550 {
lab=vcc}
N 250 -320 260 -320 {
lab=#net4}
N 260 -320 260 -290 {
lab=#net4}
N 250 -290 260 -290 {
lab=#net4}
N 250 -290 250 -270 {
lab=#net4}
N 250 -370 250 -350 {
lab=vcc}
C {sky130_fd_pr/nfet_01v8.sym} 230 -920 0 0 {name=M1
L=0.15
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
C {devices/gnd.sym} 250 -810 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 80 -390 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 250 -970 0 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 80 -330 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 210 -920 0 0 {name=p3 sig_type=std_logic lab=G}
C {devices/simulator_commands.sym} 30 -940 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.DC Vg 0 1.8 0.01

.param GW     = 0.5
.param GL     = 0.15

.options savecurrents
.control

  let gwstart = 0.5
  let gwstep  = 0.05
  let gwi     = gwstart

  repeat 10
    set gwvar=$&gwi
    echo Gate width = $gwvar
    alterparam GW = $gwvar
    save all
    run
    write 03.raw G i(Vs0p15) i(Vs0p25) i(Vs0p35) i(Vs0p50)
    set appendwrite
    reset
    let gwi = gwi + gwstep    
  end

.endc
"}
C {sky130_fd_pr/corner.sym} 10 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 80 -250 0 0 {name=Vg value=0 savecurrent=false}
C {devices/lab_pin.sym} 80 -280 0 0 {name=p4 sig_type=std_logic lab=G}
C {devices/gnd.sym} 80 -220 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 250 -840 0 0 {name=Vs0p15 value=0 savecurrent=false}
C {devices/launcher.sym} 470 -120 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/03.raw dc"
}
C {sky130_fd_pr/nfet_01v8.sym} 230 -720 0 0 {name=M2
L=0.25
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
C {devices/gnd.sym} 250 -610 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 250 -770 0 0 {name=p5 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 210 -720 0 0 {name=p6 sig_type=std_logic lab=G}
C {devices/vsource.sym} 250 -640 0 0 {name=Vs0p25 value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 230 -520 0 0 {name=M3
L=0.35
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
C {devices/gnd.sym} 250 -410 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 250 -570 0 0 {name=p7 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 210 -520 0 0 {name=p8 sig_type=std_logic lab=G}
C {devices/vsource.sym} 250 -440 0 0 {name=Vs0p35 value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 230 -320 0 0 {name=M4
L=0.5
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
C {devices/gnd.sym} 250 -210 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 250 -370 0 0 {name=p9 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 210 -320 0 0 {name=p10 sig_type=std_logic lab=G}
C {devices/vsource.sym} 250 -240 0 0 {name=Vs0p50 value=0 savecurrent=false}
