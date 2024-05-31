v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {vbuff.sym} 510 -350 0 0 {name=x1}
C {devices/vsource.sym} 150 -530 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 150 -500 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 660 -330 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 150 -560 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 660 -370 0 1 {name=p2 sig_type=std_logic lab=vcc}
C {devices/vsource.sym} 260 -530 0 0 {name=V2 value="pwl 0 0 10n 0 60n 1.8 100n 1.8 110n 0" savecurrent=false}
C {devices/gnd.sym} 260 -500 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 260 -560 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 360 -370 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/launcher.sym} 815 -245 0 0 {name=h3 
descr="Ctrl-click to load Xyce or ngspice data" 
tclcommand="

  if \{ [sim_is_xyce] \} \{ ;# using an if \{\} allows to differentiate file names
    xschem raw_read $netlist_dir/test_inv.raw tran
  \} else \{
    xschem raw_read $netlist_dir/test_inv.raw tran
  \}
"
}
C {devices/simulator_commands_shown.sym} 730 -660 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.param VCC=1.8
*vvss vss 0 dc 0
*vvcc vcc 0 
*+ pwl 0 0 10n 0 10.1n VCC 20n VCC 20.1n 0
**** interactive sim
.control
  save all
  tran 0.004n 180n
  write tb_vbuff.raw
* quit 0
.endc
"}
C {sky130_fd_pr/corner.sym} 50 -150 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 660 -350 0 1 {name=p5 sig_type=std_logic lab=vout}
