v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -210 480 -210 {
lab=lim}
N 80 -100 110 -100 {
lab=src}
N 50 -100 80 -100 {
lab=src}
N 210 -260 210 -170 {
lab=src}
N 110 -170 110 -100 {
lab=src}
N 110 -170 210 -170 {
lab=src}
N 250 -230 250 -200 {
lab=#net1}
N 250 -330 250 -290 {
lab=vcc}
N 540 -120 540 -90 {
lab=vcc}
N 250 -260 270 -260 {
lab=vcc}
N 270 -290 270 -260 {
lab=vcc}
N 250 -290 270 -290 {
lab=vcc}
N 250 -170 270 -170 {
lab=GND}
N 270 -170 270 -140 {
lab=GND}
N 250 -140 270 -140 {
lab=GND}
N 340 -260 340 -170 {
lab=#net1}
N 380 -230 380 -200 {
lab=lim}
N 380 -330 380 -290 {
lab=vcc}
N 380 -260 400 -260 {
lab=vcc}
N 400 -290 400 -260 {
lab=vcc}
N 380 -290 400 -290 {
lab=vcc}
N 380 -170 400 -170 {
lab=GND}
N 400 -170 400 -140 {
lab=GND}
N 380 -140 400 -140 {
lab=GND}
N 250 -220 340 -220 {
lab=#net1}
N 380 -210 450 -210 {
lab=lim}
C {sky130_fd_pr/nfet_01v8.sym} 230 -170 2 1 {name=M4
L=0.2
W=0.4
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
C {devices/gnd.sym} 250 -140 0 1 {name=l32 lab=GND}
C {devices/ipin.sym} 50 -100 0 0 {name=p1 lab=src}
C {devices/opin.sym} 480 -210 0 0 {name=p2 lab=lim}
C {devices/vsource.sym} 540 -60 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 540 -30 0 1 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 230 -260 0 0 {name=M1
L=0.2
W=0.5
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
C {devices/lab_pin.sym} 540 -120 0 0 {name=p3 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 250 -330 0 0 {name=p4 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 380 -140 0 1 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 360 -260 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 380 -330 0 0 {name=p5 sig_type=std_logic lab=vcc}
C {sky130_fd_pr/nfet_01v8.sym} 360 -170 2 1 {name=M2
L=0.5
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
