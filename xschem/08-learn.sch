v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -540 470 -510 {
lab=#net1}
N 470 -650 470 -600 {
lab=vcc}
N 470 -450 470 -400 {}
N 470 -520 540 -520 {}
N 540 -520 540 -480 {}
N 510 -480 580 -480 {}
C {devices/vsource.sym} 80 -360 0 0 {name=Vvcc value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 80 -390 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 80 -330 0 0 {name=l2 lab=GND}
C {devices/simulator_commands.sym} 150 -70 2 1 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents
.control

  save all
  tran 1n 12.8u
  write 07.raw v(Vb) i(va1) i(va2) i(va3) i(va4) i(va5)
  plot i(va1) i(va2) i(va3) i(va4) i(va5)

.endc
"}
C {sky130_fd_pr/corner.sym} 10 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 240 -250 0 0 {name=Vg2 value=0.84 savecurrent=false}
C {devices/lab_pin.sym} 240 -280 0 0 {name=p21 sig_type=std_logic lab=Vb}
C {devices/gnd.sym} 240 -220 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 490 -480 0 1 {name=M1
L=0.15
W=1
body=GND
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
C {devices/gnd.sym} 470 -400 0 0 {name=l1 lab=GND}
C {devices/res.sym} 470 -570 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 470 -650 0 0 {name=p2 sig_type=std_logic lab=vcc}
