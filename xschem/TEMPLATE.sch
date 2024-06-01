v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {sky130_fd_pr/nfet_01v8.sym} 1210 -620 0 0 {name=M1
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
C {devices/vsource.sym} 360 -760 0 0 {name=V1 value="pwl 0ns 0v, 20ns 0v, 100ns 1.8v, 200ns 1.8v"  savecurrent=false}
C {devices/lab_pin.sym} 360 -790 0 0 {name=p1 sig_type=std_logic lab=vramp}
C {devices/lab_pin.sym} 1090 -670 0 0 {name=p2 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 360 -730 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1210 -730 0 0 {name=M2
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
C {devices/gnd.sym} 1230 -620 3 0 {name=l1 lab=GND}
C {devices/vsource.sym} 270 -760 0 0 {name=V2 value=1.8  savecurrent=false}
C {devices/lab_pin.sym} 270 -790 0 0 {name=p7 sig_type=std_logic lab=vpwr}
C {devices/gnd.sym} 270 -730 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1230 -730 0 1 {name=p8 sig_type=std_logic lab=vpwr}
C {devices/simulator_commands_shown.sym} -140 -720 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="

.control
  save all
  tran 0.1n 200n
  write a.raw
  plot
  + vramp
  + v040n
  + v080n+2
  + v160n+4
  + (v160n/2.0+v080n/4.0+v040n/8.0)
.endc

"}
C {devices/vsource.sym} 270 -650 0 0 {name=V3 value="pulse 1.8v 0v 0n 1n 1n 19n 40n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -680 0 0 {name=p3 sig_type=std_logic lab=v040n}
C {devices/gnd.sym} 270 -620 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 270 -550 0 0 {name=V4 value="pulse 1.8v 0v 0n 1n 1n 39n 80n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -580 0 0 {name=p5 sig_type=std_logic lab=v080n}
C {devices/gnd.sym} 270 -520 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 270 -450 0 0 {name=V5 value="pulse 1.8v 0v 0n 1n 1n 79n 160n"  savecurrent=false}
C {devices/lab_pin.sym} 270 -480 0 0 {name=p6 sig_type=std_logic lab=v160n}
C {devices/gnd.sym} 270 -420 0 0 {name=l6 lab=GND}
