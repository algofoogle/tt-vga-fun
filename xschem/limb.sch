v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -100 140 -20 {
lab=GND}
N 170 -100 200 -100 {
lab=lim}
N 80 -100 110 -100 {
lab=src}
N 50 -100 80 -100 {
lab=src}
N 50 -220 140 -220 {
lab=#net1}
N 140 -220 140 -140 {
lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 140 -120 3 1 {name=M4
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
C {devices/gnd.sym} 140 -20 0 1 {name=l32 lab=GND}
C {devices/ipin.sym} 50 -100 0 0 {name=p1 lab=src}
C {devices/opin.sym} 200 -100 0 0 {name=p2 lab=lim}
C {devices/vsource.sym} 50 -190 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 50 -160 0 1 {name=l1 lab=GND}
