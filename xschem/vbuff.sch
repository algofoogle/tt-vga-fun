v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 -140 600 -140 {
lab=#net1}
N 480 -270 560 -270 {
lab=#net2}
N 440 -240 440 -200 {
lab=#net2}
N 600 -240 600 -200 {
lab=#net3}
N 360 -270 440 -270 {
lab=VPWR}
N 360 -300 360 -270 {
lab=VPWR}
N 360 -300 440 -300 {
lab=VPWR}
N 600 -270 670 -270 {
lab=VPWR}
N 670 -300 670 -270 {
lab=VPWR}
N 600 -300 670 -300 {
lab=VPWR}
N 440 -220 520 -220 {
lab=#net2}
N 520 -270 520 -220 {
lab=#net2}
N 440 -340 440 -300 {
lab=VPWR}
N 440 -340 600 -340 {
lab=VPWR}
N 600 -340 600 -300 {
lab=VPWR}
N 520 -140 520 -120 {
lab=#net1}
N 520 -90 600 -90 {
lab=VGND}
N 600 -90 600 -60 {
lab=VGND}
N 520 -60 600 -60 {
lab=VGND}
N 520 -60 520 -20 {
lab=VGND}
N 280 -20 520 -20 {
lab=VGND}
N 280 -170 400 -170 {
lab=vin}
N 600 -220 680 -220 {
lab=#net3}
N 640 -170 720 -170 {
lab=vout}
N 720 -190 720 -170 {
lab=vout}
N 600 -340 720 -340 {
lab=VPWR}
N 720 -340 720 -250 {
lab=VPWR}
N 280 -340 440 -340 {
lab=VPWR}
N 720 -170 860 -170 {
lab=vout}
N 720 -170 720 -120 {
lab=vout}
N 720 -60 720 -20 {
lab=VGND}
N 520 -20 720 -20 {
lab=VGND}
N 720 -90 800 -90 {
lab=VGND}
N 800 -90 800 -60 {
lab=VGND}
N 720 -60 800 -60 {
lab=VGND}
N 440 -170 600 -170 {
lab=VGND}
N 480 -170 480 -120 {
lab=VGND}
N 400 -120 480 -120 {
lab=VGND}
N 400 -120 400 -20 {
lab=VGND}
N 720 -220 800 -220 {
lab=VGND}
N 800 -220 800 -90 {
lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 420 -170 0 0 {name=M1
L=0.15
W=8
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
C {sky130_fd_pr/pfet_01v8.sym} 460 -270 0 1 {name=M9
L=0.6
W=16
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -170 0 1 {name=M2
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 580 -270 0 0 {name=M3
L=0.6
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 500 -90 0 0 {name=M4
L=0.75
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
C {sky130_fd_pr/nfet_01v8.sym} 700 -220 0 0 {name=M5
L=0.6
W=10
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
C {sky130_fd_pr/nfet_01v8.sym} 700 -90 0 0 {name=M6
L=0.6
W=8
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
C {devices/lab_pin.sym} 280 -340 0 0 {name=p1 sig_type=std_logic lab=VPWR}
C {devices/iopin.sym} 100 -340 0 1 {name=p2 lab=VPWR}
C {devices/ipin.sym} 100 -300 0 0 {name=p3 lab=vin}
C {devices/opin.sym} 100 -280 0 0 {name=p4 lab=vout}
C {devices/iopin.sym} 100 -240 0 1 {name=p5 lab=VGND}
C {devices/lab_pin.sym} 280 -20 0 0 {name=p6 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 280 -170 0 0 {name=p7 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 860 -170 0 1 {name=p8 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 480 -90 0 0 {name=p9 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 680 -90 0 0 {name=p10 sig_type=std_logic lab=VPWR}
