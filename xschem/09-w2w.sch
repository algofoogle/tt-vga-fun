v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 660 -1200 2090 -600 {flags=graph
y1=0.00037
y2=0.55
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.0318022e-08
x2=1.0951954e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
T {NOTE: These are DUTY CYCLES (pixel durations), not periods.} 2150 -150 0 0 0.4 0.4 {}
N 220 -720 220 -640 {
lab=vcc}
N 260 -610 280 -610 {
lab=#net1}
N 280 -610 280 -560 {
lab=#net1}
N 220 -560 280 -560 {
lab=#net1}
N 220 -580 220 -560 {
lab=#net1}
N 220 -560 220 -520 {
lab=#net1}
N 220 -460 220 -400 {
lab=GND}
N 210 -610 220 -610 {
lab=vcc}
N 210 -640 210 -610 {
lab=vcc}
N 210 -640 220 -640 {
lab=vcc}
N 220 -490 230 -490 {
lab=GND}
N 230 -490 230 -460 {
lab=GND}
N 220 -460 230 -460 {
lab=GND}
N 280 -610 380 -610 {
lab=#net1}
N 490 -720 490 -640 {
lab=vcc}
N 490 -640 490 -610 {
lab=vcc}
N 490 -580 490 -520 {
lab=Vbias}
N 490 -490 490 -460 {
lab=GND}
N 490 -460 490 -300 {
lab=GND}
N 490 -550 560 -550 {
lab=Vbias}
N 560 -550 560 -490 {
lab=Vbias}
N 530 -490 560 -490 {
lab=Vbias}
N 560 -490 630 -490 {
lab=Vbias}
N 670 -460 670 -300 {
lab=Vout}
N 630 -490 630 -440 {
lab=Vbias}
N 630 -440 760 -440 {
lab=Vbias}
N 670 -400 730 -400 {
lab=Vout}
N 800 -490 800 -440 {
lab=Vbias}
N 800 -440 930 -440 {
lab=Vbias}
N 840 -400 900 -400 {
lab=#net2}
N 790 -400 840 -400 {
lab=#net2}
N 760 -440 800 -440 {
lab=Vbias}
N 840 -460 840 -400 {
lab=#net2}
N 970 -490 970 -440 {
lab=Vbias}
N 970 -440 1100 -440 {
lab=Vbias}
N 1010 -400 1070 -400 {
lab=#net3}
N 1140 -490 1140 -440 {
lab=Vbias}
N 1140 -440 1270 -440 {
lab=Vbias}
N 1180 -400 1240 -400 {
lab=#net4}
N 1130 -400 1180 -400 {
lab=#net4}
N 1100 -440 1140 -440 {
lab=Vbias}
N 1180 -460 1180 -400 {
lab=#net4}
N 930 -440 970 -440 {
lab=Vbias}
N 960 -400 1010 -400 {
lab=#net3}
N 1310 -490 1310 -440 {
lab=Vbias}
N 1310 -440 1440 -440 {
lab=Vbias}
N 1350 -400 1410 -400 {
lab=#net5}
N 1480 -490 1480 -440 {
lab=Vbias}
N 1480 -440 1610 -440 {
lab=Vbias}
N 1520 -400 1580 -400 {
lab=#net6}
N 1470 -400 1520 -400 {
lab=#net6}
N 1440 -440 1480 -440 {
lab=Vbias}
N 1520 -460 1520 -400 {
lab=#net6}
N 1650 -490 1650 -440 {
lab=Vbias}
N 1650 -440 1780 -440 {
lab=Vbias}
N 1690 -400 1750 -400 {
lab=#net7}
N 1820 -490 1820 -440 {
lab=Vbias}
N 1810 -400 1860 -400 {
lab=#net8}
N 1780 -440 1820 -440 {
lab=Vbias}
N 1860 -460 1860 -400 {
lab=#net8}
N 1610 -440 1650 -440 {
lab=Vbias}
N 1640 -400 1690 -400 {
lab=#net7}
N 1300 -400 1350 -400 {
lab=#net5}
N 1270 -440 1310 -440 {
lab=Vbias}
N 1010 -460 1010 -400 {
lab=#net3}
N 1350 -460 1350 -400 {
lab=#net5}
N 1690 -460 1690 -400 {
lab=#net7}
N 2030 -460 2030 -400 {
lab=#net8}
N 1820 -440 1990 -440 {
lab=Vbias}
N 1990 -490 1990 -440 {
lab=Vbias}
N 1860 -400 2030 -400 {
lab=#net8}
N 800 -230 800 -190 {
lab=Vout}
N 800 -130 800 -70 {
lab=GND}
N 800 -160 810 -160 {
lab=GND}
N 810 -160 810 -130 {
lab=GND}
N 800 -130 810 -130 {
lab=GND}
N 800 -230 860 -230 {
lab=Vout}
N 670 -300 670 -230 {
lab=Vout}
N 670 -230 730 -230 {
lab=Vout}
N 730 -230 800 -230 {
lab=Vout}
C {devices/vsource.sym} 70 -350 0 0 {name=Vvcc value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 70 -380 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 70 -320 0 0 {name=l2 lab=GND}
C {devices/simulator_commands.sym} 140 -60 2 1 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.param MPW=6
.param MMW=4
.options savecurrents
.control

  save all
  *reset
  *alterparam MPW=6
  *alterparam MMW=4
  tran 1n 12.8u
  write 09.raw Vout

  plot vout

  set appendwrite
  alterparam MPW=5
  alterparam MMW=4
  reset
  tran 1n 12.8u
  write 09.raw Vout

  set appendwrite
  alterparam MPW=4
  alterparam MMW=4
  reset
  tran 1n 12.8u
  write 09.raw Vout

  alterparam MPW=6
  alterparam MMW=3
  reset
  tran 1n 12.8u
  write 09.raw Vout

  set appendwrite
  alterparam MPW=5
  alterparam MMW=3
  reset
  tran 1n 12.8u
  write 09.raw Vout

  set appendwrite
  alterparam MPW=4
  alterparam MMW=3
  reset
  tran 1n 12.8u
  write 09.raw Vout

  alterparam MPW=6
  alterparam MMW=2
  reset
  tran 1n 12.8u
  write 09.raw Vout

  set appendwrite
  alterparam MPW=5
  alterparam MMW=2
  reset
  tran 1n 12.8u
  write 09.raw Vout

  set appendwrite
  alterparam MPW=4
  alterparam MMW=2
  reset
  tran 1n 12.8u
  write 09.raw Vout

.endc
"}
C {sky130_fd_pr/corner.sym} 0 -120 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 230 -240 0 0 {name=Vg2 value=0.84 savecurrent=false}
C {devices/lab_pin.sym} 230 -270 0 0 {name=p21 sig_type=std_logic lab=Vb}
C {devices/gnd.sym} 230 -210 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 70 -240 0 0 {name=Vg value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 70 -270 0 0 {name=p4 sig_type=std_logic lab=G}
C {devices/gnd.sym} 70 -210 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 200 -490 0 0 {name=Mprog
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -610 0 1 {name=Mmirror
L=0.15
W=14
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
C {devices/lab_pin.sym} 220 -720 0 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 220 -400 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 180 -490 0 0 {name=p3 sig_type=std_logic lab=G}
C {sky130_fd_pr/pfet_01v8.sym} 470 -610 0 0 {name=Mprog2
L=0.15
W=\{MPW\}
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
C {devices/lab_pin.sym} 490 -720 0 0 {name=p5 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 450 -610 0 1 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 510 -490 0 1 {name=Mmirror2
L=0.5
W=\{MMW\}
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
C {devices/gnd.sym} 490 -300 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 560 -490 3 0 {name=p6 sig_type=std_logic lab=Vbias}
C {sky130_fd_pr/nfet_01v8.sym} 650 -490 0 0 {name=MB7
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 760 -420 1 0 {name=M2B7
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 1670 -490 0 0 {name=MB1
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 930 -420 1 0 {name=M1
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 1500 -490 0 0 {name=MB2
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1100 -420 1 0 {name=M2
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 1330 -490 0 0 {name=MB3
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1270 -420 1 0 {name=M3
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 1160 -490 0 0 {name=MB4
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1440 -420 1 0 {name=M4
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 990 -490 0 0 {name=MB5
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1610 -420 1 0 {name=M5
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 820 -490 0 0 {name=MB6
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1780 -420 1 0 {name=M6
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 1840 -490 0 0 {name=MB0
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 2010 -490 0 0 {name=MBend
L=0.15
W=2
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
C {devices/gnd.sym} 760 -400 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 670 -490 3 0 {name=l9 lab=GND}
C {devices/gnd.sym} 930 -400 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 840 -490 3 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1100 -400 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 1010 -490 3 0 {name=l13 lab=GND}
C {devices/gnd.sym} 1270 -400 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 1180 -490 3 0 {name=l15 lab=GND}
C {devices/gnd.sym} 1440 -400 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1350 -490 3 0 {name=l17 lab=GND}
C {devices/gnd.sym} 1610 -400 0 0 {name=l18 lab=GND}
C {devices/gnd.sym} 1520 -490 3 0 {name=l19 lab=GND}
C {devices/gnd.sym} 1780 -400 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 1690 -490 3 0 {name=l21 lab=GND}
C {devices/gnd.sym} 1860 -490 3 0 {name=l23 lab=GND}
C {devices/gnd.sym} 2030 -490 3 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 2460 -240 0 0 {name=p7 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} 2460 -340 0 0 {name=p14 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 2460 -440 0 0 {name=p8 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 2460 -540 0 0 {name=p16 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 2200 -240 0 0 {name=p17 sig_type=std_logic lab=d3
}
C {devices/lab_pin.sym} 2200 -340 0 0 {name=p18 sig_type=std_logic lab=d2
}
C {devices/lab_pin.sym} 2200 -440 0 0 {name=p19 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 2200 -540 0 0 {name=p20 sig_type=std_logic lab=d0}
C {devices/vsource.sym} 2200 -510 0 0 {name=V4 value="pulse 1.8v 0v 0n 1n 1n 39n 80n"  savecurrent=false}
C {devices/gnd.sym} 2200 -480 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} 2200 -410 0 0 {name=V5 value="pulse 1.8v 0v 0n 1n 1n 79n 160n"  savecurrent=false}
C {devices/gnd.sym} 2200 -380 0 0 {name=l25 lab=GND}
C {devices/vsource.sym} 2200 -310 0 0 {name=V6 value="pulse 1.8v 0v 0n 1n 1n 159n 320n"  savecurrent=false}
C {devices/gnd.sym} 2200 -280 0 0 {name=l34 lab=GND}
C {devices/vsource.sym} 2200 -210 0 0 {name=V7 value="pulse 1.8v 0v 0n 1n 1n 319n 640n"  savecurrent=false}
C {devices/gnd.sym} 2200 -180 0 0 {name=l35 lab=GND}
C {devices/vsource.sym} 2460 -510 0 0 {name=V8 value="pulse 1.8v 0v 0n 1n 1n 639n 1280n"  savecurrent=false}
C {devices/gnd.sym} 2460 -480 0 0 {name=l36 lab=GND}
C {devices/vsource.sym} 2460 -410 0 0 {name=V9 value="pulse 1.8v 0v 0n 1n 1n 1279n 2560n"  savecurrent=false}
C {devices/gnd.sym} 2460 -380 0 0 {name=l38 lab=GND}
C {devices/vsource.sym} 2460 -310 0 0 {name=V10 value="pulse 1.8v 0v 0n 1n 1n 2559n 5120n"  savecurrent=false}
C {devices/gnd.sym} 2460 -280 0 0 {name=l39 lab=GND}
C {devices/vsource.sym} 2460 -210 0 0 {name=V11 value="pulse 1.8v 0v 0n 1n 1n 5119n 10240n"  savecurrent=false}
C {devices/gnd.sym} 2460 -180 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} 670 -520 1 0 {name=p9 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} 840 -520 1 0 {name=p10 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 1010 -520 1 0 {name=p11 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 1180 -520 1 0 {name=p12 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 1350 -520 1 0 {name=p13 sig_type=std_logic lab=d3
}
C {devices/lab_pin.sym} 1520 -520 1 0 {name=p22 sig_type=std_logic lab=d2
}
C {devices/lab_pin.sym} 1690 -520 1 0 {name=p23 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 1860 -520 1 0 {name=p24 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} 860 -230 0 1 {name=p25 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 2030 -520 1 0 {name=p15 sig_type=std_logic lab=vcc}
C {sky130_fd_pr/nfet_01v8.sym} 780 -160 0 0 {name=Mprog1
L=0.15
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
C {devices/gnd.sym} 800 -70 0 0 {name=l27 lab=GND}
C {devices/launcher.sym} 480 -1020 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/09.raw tran"
}
