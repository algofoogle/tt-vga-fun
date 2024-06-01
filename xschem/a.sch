v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -770 250 -770 {
lab=vpwr}
N 230 -770 230 -630 {
lab=vpwr}
N 230 -630 250 -630 {
lab=vpwr}
N 180 -700 230 -700 {
lab=vpwr}
N 310 -770 390 -770 {
lab=voutp}
N 310 -630 390 -630 {
lab=voutn}
N 950 -330 950 -300 {
lab=vc}
N 950 -330 990 -330 {
lab=vc}
N 920 -300 950 -300 {
lab=vc}
N 990 -300 1020 -300 {
lab=GND}
N 1020 -300 1020 -240 {
lab=GND}
N 990 -270 1080 -270 {
lab=voutn2}
N 950 -190 950 -160 {
lab=vc}
N 950 -190 990 -190 {
lab=vc}
N 920 -160 950 -160 {
lab=vc}
N 990 -160 1020 -160 {
lab=GND}
N 1020 -160 1020 -100 {
lab=GND}
N 990 -130 1080 -130 {
lab=voutn3}
N 1190 -160 1190 -130 {
lab=voutn3}
N 1190 -160 1230 -160 {
lab=voutn3}
N 1160 -130 1190 -130 {
lab=voutn3}
N 1230 -130 1260 -130 {
lab=GND}
N 1260 -130 1260 -70 {
lab=GND}
N 1230 -100 1320 -100 {
lab=GND}
N 1080 -130 1160 -130 {
lab=voutn3}
N 1320 -100 1320 -70 {
lab=GND}
N 1260 -70 1320 -70 {
lab=GND}
N 620 -760 640 -760 {
lab=vpwr}
N 620 -760 620 -620 {
lab=vpwr}
N 620 -620 640 -620 {
lab=vpwr}
N 570 -690 620 -690 {
lab=vpwr}
N 700 -760 780 -760 {
lab=vout4}
N 700 -620 780 -620 {
lab=vout4}
N 880 -760 900 -760 {
lab=vout4}
N 880 -760 880 -620 {
lab=vout4}
N 880 -620 900 -620 {
lab=vout4}
N 960 -760 1040 -760 {
lab=GND}
N 960 -620 1040 -620 {
lab=GND}
N 780 -760 780 -620 {
lab=vout4}
N 1040 -760 1040 -620 {
lab=GND}
N 780 -690 880 -690 {
lab=vout4}
C {sky130_fd_pr/nfet_01v8.sym} 280 -610 3 0 {name=M1
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
C {sky130_fd_pr/corner.sym} 20 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 90 -50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 220 -320 0 0 {name=V1 value="pwl 0ns 0v, 20ns 0v, 100ns 1.8v, 200ns 1.8v"  savecurrent=false}
C {devices/lab_pin.sym} 220 -350 0 0 {name=p1 sig_type=std_logic lab=vc}
C {devices/lab_pin.sym} 180 -700 0 0 {name=p2 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 220 -290 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 280 -790 1 0 {name=M2
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
C {devices/lab_pin.sym} 390 -770 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {devices/lab_pin.sym} 280 -810 3 1 {name=p4 sig_type=std_logic lab=vc}
C {devices/lab_pin.sym} 390 -630 0 1 {name=p5 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 280 -590 1 1 {name=p6 sig_type=std_logic lab=vc}
C {devices/gnd.sym} 280 -630 2 0 {name=l1 lab=GND}
C {devices/vsource.sym} 130 -320 0 0 {name=V2 value=1.8  savecurrent=false}
C {devices/lab_pin.sym} 130 -350 0 0 {name=p7 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 130 -290 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 280 -770 3 0 {name=p8 sig_type=std_logic lab=vpwr}
C {devices/simulator_commands_shown.sym} 1200 -530 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="

.control
  save all
  tran 0.1n 200n
  write a.raw
  plot
  + vc
  + voutp
  + voutn
  + voutn2
  + voutn3
  + vout4
.endc

"}
C {sky130_fd_pr/nfet_01v8.sym} 970 -300 0 0 {name=M3
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
C {devices/lab_pin.sym} 920 -300 0 0 {name=p9 sig_type=std_logic lab=vc}
C {devices/gnd.sym} 1020 -240 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1080 -270 0 1 {name=p10 sig_type=std_logic lab=voutn2}
C {sky130_fd_pr/nfet_01v8.sym} 970 -160 0 0 {name=M4
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
C {devices/lab_pin.sym} 920 -160 0 0 {name=p11 sig_type=std_logic lab=vc}
C {devices/gnd.sym} 1020 -100 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1080 -130 1 1 {name=p12 sig_type=std_logic lab=voutn3}
C {sky130_fd_pr/nfet_01v8.sym} 1210 -130 0 0 {name=M5
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
C {devices/gnd.sym} 1260 -70 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 670 -600 3 0 {name=M6
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
C {devices/lab_pin.sym} 570 -690 0 0 {name=p13 sig_type=std_logic lab=vpwr}
C {sky130_fd_pr/pfet_01v8.sym} 670 -780 1 0 {name=M7
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
C {devices/lab_pin.sym} 780 -760 0 1 {name=p14 sig_type=std_logic lab=vout4}
C {devices/lab_pin.sym} 670 -800 3 1 {name=p15 sig_type=std_logic lab=vc}
C {devices/lab_pin.sym} 670 -580 1 1 {name=p17 sig_type=std_logic lab=vc}
C {devices/gnd.sym} 670 -620 2 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 670 -760 3 0 {name=p18 sig_type=std_logic lab=vpwr}
C {sky130_fd_pr/nfet_01v8.sym} 930 -600 3 0 {name=M8
L=0.15
W=5
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
C {sky130_fd_pr/pfet_01v8.sym} 930 -780 1 0 {name=M9
L=0.15
W=10
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
C {devices/lab_pin.sym} 930 -800 3 1 {name=p21 sig_type=std_logic lab=vc}
C {devices/lab_pin.sym} 930 -580 1 1 {name=p23 sig_type=std_logic lab=vc}
C {devices/gnd.sym} 930 -620 2 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 930 -760 3 0 {name=p24 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 1040 -620 0 0 {name=l9 lab=GND}
