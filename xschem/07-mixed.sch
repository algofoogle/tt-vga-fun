v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {NOTE: These are DUTY CYCLES (pixel durations), not periods.} 370 -40 0 0 0.4 0.4 {}
N 420 -820 540 -820 {
lab=GND}
N 540 -820 660 -820 {
lab=GND}
N 660 -820 780 -820 {
lab=GND}
N 780 -820 900 -820 {
lab=GND}
N 900 -940 900 -910 {
lab=vcc}
N 780 -940 780 -910 {
lab=vcc}
N 660 -940 660 -910 {
lab=vcc}
N 540 -940 540 -910 {
lab=vcc}
N 420 -940 420 -910 {
lab=vcc}
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
C {devices/vsource.sym} 80 -250 0 0 {name=Vg value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 80 -280 0 0 {name=p4 sig_type=std_logic lab=G}
C {devices/gnd.sym} 80 -220 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 680 -130 0 0 {name=p7 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} 680 -230 0 0 {name=p14 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 680 -330 0 0 {name=p15 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 680 -430 0 0 {name=p16 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 420 -130 0 0 {name=p17 sig_type=std_logic lab=d3
}
C {devices/lab_pin.sym} 420 -230 0 0 {name=p18 sig_type=std_logic lab=d2
}
C {devices/lab_pin.sym} 420 -330 0 0 {name=p19 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 420 -430 0 0 {name=p20 sig_type=std_logic lab=d0}
C {devices/vsource.sym} 420 -400 0 0 {name=V4 value="pulse 1.8v 0v 0n 1n 1n 39n 80n"  savecurrent=false}
C {devices/gnd.sym} 420 -370 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 420 -300 0 0 {name=V5 value="pulse 1.8v 0v 0n 1n 1n 79n 160n"  savecurrent=false}
C {devices/gnd.sym} 420 -270 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 420 -200 0 0 {name=V6 value="pulse 1.8v 0v 0n 1n 1n 159n 320n"  savecurrent=false}
C {devices/gnd.sym} 420 -170 0 0 {name=l34 lab=GND}
C {devices/vsource.sym} 420 -100 0 0 {name=V7 value="pulse 1.8v 0v 0n 1n 1n 319n 640n"  savecurrent=false}
C {devices/gnd.sym} 420 -70 0 0 {name=l35 lab=GND}
C {devices/vsource.sym} 680 -400 0 0 {name=V8 value="pulse 1.8v 0v 0n 1n 1n 639n 1280n"  savecurrent=false}
C {devices/gnd.sym} 680 -370 0 0 {name=l36 lab=GND}
C {devices/vsource.sym} 680 -300 0 0 {name=V9 value="pulse 1.8v 0v 0n 1n 1n 1279n 2560n"  savecurrent=false}
C {devices/gnd.sym} 680 -270 0 0 {name=l38 lab=GND}
C {devices/vsource.sym} 680 -200 0 0 {name=V10 value="pulse 1.8v 0v 0n 1n 1n 2559n 5120n"  savecurrent=false}
C {devices/gnd.sym} 680 -170 0 0 {name=l39 lab=GND}
C {devices/vsource.sym} 680 -100 0 0 {name=V11 value="pulse 1.8v 0v 0n 1n 1n 5119n 10240n"  savecurrent=false}
C {devices/gnd.sym} 680 -70 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 160 -250 0 0 {name=Vg1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 160 -280 0 0 {name=p22 sig_type=std_logic lab=P}
C {devices/gnd.sym} 160 -220 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 880 -910 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 760 -910 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 640 -910 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 520 -910 0 0 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 400 -910 0 0 {name=M5
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
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 420 -940 1 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 540 -940 1 0 {name=p3 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 660 -940 1 0 {name=p5 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 780 -940 1 0 {name=p6 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 900 -940 1 0 {name=p8 sig_type=std_logic lab=vcc}
C {devices/gnd.sym} 900 -820 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 380 -910 0 0 {name=p9 sig_type=std_logic lab=Vb}
C {devices/ammeter.sym} 900 -850 0 0 {name=VA1 savecurrent=true}
C {devices/ammeter.sym} 780 -850 0 0 {name=VA2 savecurrent=true}
C {devices/ammeter.sym} 660 -850 0 0 {name=VA3 savecurrent=true}
C {devices/ammeter.sym} 540 -850 0 0 {name=VA4 savecurrent=true}
C {devices/ammeter.sym} 420 -850 0 0 {name=VA5 savecurrent=true}
C {devices/lab_pin.sym} 500 -910 0 0 {name=p10 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 620 -910 0 0 {name=p11 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 740 -910 0 0 {name=p12 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 860 -910 0 0 {name=p13 sig_type=std_logic lab=Vb}
C {devices/vsource.sym} 240 -250 0 0 {name=Vg2 value=0.84 savecurrent=false}
C {devices/lab_pin.sym} 240 -280 0 0 {name=p21 sig_type=std_logic lab=Vb}
C {devices/gnd.sym} 240 -220 0 0 {name=l4 lab=GND}
