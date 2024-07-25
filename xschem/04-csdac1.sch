v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1240 -980 2470 -160 {flags=graph
y1=1.8e-12
y2=0.00026
ypos1=0
ypos2=2
divy=20

unity=1
x1=0.18
x2=1.98
divx=20

xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0
rainbow=0
sweep=1




dataset=-1
subdivy=4
subdivx=1

color="4 5 6 8 4 5 6 8"
node="i(vs1)
i(vs2)
i(vs3)
i(vs4)
i(vs5)
i(vs6)
i(vs7)
i(vs8)"}
N 80 -800 80 -720 {
lab=vcc}
N 120 -690 140 -690 {
lab=#net1}
N 140 -690 140 -640 {
lab=#net1}
N 80 -640 140 -640 {
lab=#net1}
N 80 -660 80 -640 {
lab=#net1}
N 80 -640 80 -600 {
lab=#net1}
N 80 -540 80 -480 {
lab=GND}
N 140 -690 180 -690 {
lab=#net1}
N 70 -690 80 -690 {
lab=vcc}
N 70 -720 70 -690 {
lab=vcc}
N 70 -720 80 -720 {
lab=vcc}
N 220 -690 230 -690 {
lab=vcc}
N 230 -720 230 -690 {
lab=vcc}
N 220 -720 230 -720 {
lab=vcc}
N 220 -780 220 -720 {
lab=vcc}
N 80 -780 220 -780 {
lab=vcc}
N 220 -660 220 -600 {
lab=#net2}
N 80 -570 90 -570 {
lab=GND}
N 90 -570 90 -540 {
lab=GND}
N 80 -540 90 -540 {
lab=GND}
N 340 -690 350 -690 {
lab=vcc}
N 350 -720 350 -690 {
lab=vcc}
N 340 -720 350 -720 {
lab=vcc}
N 220 -780 340 -780 {
lab=vcc}
N 340 -780 340 -720 {
lab=vcc}
N 140 -740 140 -690 {
lab=#net1}
N 140 -740 300 -740 {
lab=#net1}
N 300 -740 300 -690 {
lab=#net1}
N 340 -660 340 -600 {
lab=#net3}
N 460 -690 470 -690 {
lab=vcc}
N 470 -720 470 -690 {
lab=vcc}
N 460 -720 470 -720 {
lab=vcc}
N 460 -780 460 -720 {
lab=vcc}
N 420 -740 420 -690 {
lab=#net1}
N 460 -660 460 -600 {
lab=#net4}
N 300 -740 420 -740 {
lab=#net1}
N 340 -780 460 -780 {
lab=vcc}
N 580 -690 590 -690 {
lab=vcc}
N 590 -720 590 -690 {
lab=vcc}
N 580 -720 590 -720 {
lab=vcc}
N 580 -780 580 -720 {
lab=vcc}
N 540 -740 540 -690 {
lab=#net1}
N 580 -660 580 -600 {
lab=#net5}
N 420 -740 540 -740 {
lab=#net1}
N 460 -780 580 -780 {
lab=vcc}
N 700 -690 710 -690 {
lab=vcc}
N 710 -720 710 -690 {
lab=vcc}
N 700 -720 710 -720 {
lab=vcc}
N 700 -780 700 -720 {
lab=vcc}
N 700 -660 700 -600 {
lab=#net6}
N 820 -690 830 -690 {
lab=vcc}
N 830 -720 830 -690 {
lab=vcc}
N 820 -720 830 -720 {
lab=vcc}
N 820 -780 820 -720 {
lab=vcc}
N 780 -740 780 -690 {
lab=#net1}
N 820 -660 820 -600 {
lab=#net7}
N 940 -690 950 -690 {
lab=vcc}
N 950 -720 950 -690 {
lab=vcc}
N 940 -720 950 -720 {
lab=vcc}
N 940 -780 940 -720 {
lab=vcc}
N 900 -740 900 -690 {
lab=#net1}
N 940 -660 940 -600 {
lab=#net8}
N 780 -740 900 -740 {
lab=#net1}
N 1060 -690 1070 -690 {
lab=vcc}
N 1070 -720 1070 -690 {
lab=vcc}
N 1060 -720 1070 -720 {
lab=vcc}
N 1060 -780 1060 -720 {
lab=vcc}
N 1020 -740 1020 -690 {
lab=#net1}
N 1060 -660 1060 -600 {
lab=#net9}
N 900 -740 1020 -740 {
lab=#net1}
N 580 -780 700 -780 {
lab=vcc}
N 700 -780 820 -780 {
lab=vcc}
N 820 -780 940 -780 {
lab=vcc}
N 940 -780 1060 -780 {
lab=vcc}
N 540 -740 660 -740 {
lab=#net1}
N 660 -740 660 -690 {
lab=#net1}
N 660 -740 780 -740 {
lab=#net1}
C {devices/vsource.sym} 80 -360 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 80 -390 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 80 -330 0 0 {name=l2 lab=GND}
C {devices/simulator_commands.sym} 30 -940 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.DC Vg 0 1.8 0.01

*.param GW     = 0.5
*.param GL     = 0.15

.options savecurrents
.control

  let gwstart = 0.5
  let gwstep  = 0.05
  let gwi     = gwstart

  repeat 1
    set gwvar=$&gwi
    *echo Gate width = $gwvar
    *alterparam GW = $gwvar
    save all
    run
    write 04.raw G i(Vs1) i(Vs2) i(Vs3) i(Vs4) i(Vs5) i(Vs6) i(Vs7) i(Vs8)
    *+ i(Vs0p15) i(Vs0p25) i(Vs0p35) i(Vs0p50)
    *set appendwrite
    *reset
    *let gwi = gwi + gwstep    
  end

.endc
"}
C {sky130_fd_pr/corner.sym} 10 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 80 -250 0 0 {name=Vg value=0 savecurrent=false}
C {devices/lab_pin.sym} 80 -280 0 0 {name=p4 sig_type=std_logic lab=G}
C {devices/gnd.sym} 80 -220 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1300 -130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/04.raw dc"
}
C {sky130_fd_pr/nfet_01v8.sym} 60 -570 0 0 {name=Mprog
L=0.5
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -690 0 1 {name=Mmirror
L=0.15
W=11.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 80 -800 0 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 80 -480 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 200 -690 0 0 {name=M1
L=0.15
W=8.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 220 -570 0 0 {name=Vs1 value=0 savecurrent=false}
C {devices/gnd.sym} 220 -540 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 40 -570 0 0 {name=p3 sig_type=std_logic lab=G}
C {sky130_fd_pr/pfet_01v8.sym} 320 -690 0 0 {name=M2
L=0.15
W=4.44
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 340 -570 0 0 {name=Vs2 value=0 savecurrent=false}
C {devices/gnd.sym} 340 -540 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 440 -690 0 0 {name=M3
L=0.15
W=2.19
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 460 -570 0 0 {name=Vs3 value=0 savecurrent=false}
C {devices/gnd.sym} 460 -540 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 560 -690 0 0 {name=M4
L=0.15
W=0.99
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 580 -570 0 0 {name=Vs4 value=0 savecurrent=false}
C {devices/gnd.sym} 580 -540 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 680 -690 0 0 {name=M5
L=0.2
W=2.4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 700 -570 0 0 {name=Vs5 value=0 savecurrent=false}
C {devices/gnd.sym} 700 -540 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 800 -690 0 0 {name=M6
L=0.25
W=2.65
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 820 -570 0 0 {name=Vs6 value=0 savecurrent=false}
C {devices/gnd.sym} 820 -540 0 0 {name=l9 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 920 -690 0 0 {name=M7
L=0.3
W=2.45
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 940 -570 0 0 {name=Vs7 value=0 savecurrent=false}
C {devices/gnd.sym} 940 -540 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1040 -690 0 0 {name=M8
L=0.4
W=2.8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 1060 -570 0 0 {name=Vs8 value=0 savecurrent=false}
C {devices/gnd.sym} 1060 -540 0 0 {name=l11 lab=GND}
