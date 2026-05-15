v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Ctrl-Click to execute launcher} 590 -600 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 590 -500 0 0 0.3 0.3 {layer=11}
N 330 -260 330 -240 {lab=0}
N 330 -340 330 -320 {lab=VSS}
N 330 -420 330 -400 {lab=VDD}
N 410 -340 410 -320 {lab=trig}
N 410 -260 410 -240 {lab=GND}
N 960 -840 1040 -840 {lab=VA[4..0]}
N 960 -820 1040 -820 {lab=VB[4..0]}
N 960 -800 1000 -800 {lab=en_PA}
C {code_shown.sym} 655 -415 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
spice_ignore=false
      }
C {simulator_commands_shown.sym} 1475 -545 0 0 {name=OP_AC_TRAN
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.include iruwbtx7_osci_decoder_tb.save
.options method=trap reltol=1e-4 vabstol=1e-6 iabstol=1e-12 gmin=1e-12 chgtol=1e-16 rshunt=1e12 trtol=1 pivotrel=1e-3 pivotabs=1e-13 noacct numdgt=7
*.options klu keepopinfo method=Gear rshunt=1e12 gmin=1e-12 reltol=100e-06 abstol=1e-12 vntol=1e-06

.control
set num_threads 1

save all
*op
*write iruwbtx7_osci_decoder_tb.raw
*set appendwrite
tran 0.5p 3.6n uic 0.5p
write iruwbtx7_osci_decoder_tb.raw
plot trig VA2 VB2 en_PA
.endc
"
}
C {launcher.sym} 650 -555 0 0 {name=h3
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {devices/launcher.sym} 650 -520 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {vsource.sym} 330 -370 0 0 {name=VVDD value=1.5 savecurrent=false}
C {gnd.sym} 330 -240 0 0 {name=l4 lab=0}
C {vsource.sym} 330 -290 0 0 {name=VVSS value=0 savecurrent=false}
C {lab_wire.sym} 330 -330 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 330 -420 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 410 -290 0 0 {name=VTRIG value="pulse(0 1.5 0.5n 10p 10p 20n 1)"}
C {lab_wire.sym} 410 -340 0 1 {name=p18 sig_type=std_logic lab=trig}
C {gnd.sym} 410 -240 0 0 {name=l5 lab=GND}
C {vsource.sym} 300 -500 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} 300 -470 0 0 {name=l6 lab=0}
C {lab_wire.sym} 300 -530 3 1 {name=p19 sig_type=std_logic lab=ctrlBST[0]}
C {vsource.sym} 240 -500 0 0 {name=V4 value=1.5 savecurrent=false}
C {gnd.sym} 240 -470 0 0 {name=l7 lab=0}
C {lab_wire.sym} 240 -530 3 1 {name=p20 sig_type=std_logic lab=ctrlBST[1]}
C {vsource.sym} 180 -500 0 0 {name=V5 value=1.5 savecurrent=false}
C {gnd.sym} 180 -470 0 0 {name=l8 lab=0}
C {lab_wire.sym} 180 -530 3 1 {name=p21 sig_type=std_logic lab=ctrlBST[2]}
C {vsource.sym} 120 -500 0 0 {name=V6 value=1.5 savecurrent=false}
C {gnd.sym} 120 -470 0 0 {name=l9 lab=0}
C {lab_wire.sym} 120 -530 3 1 {name=p22 sig_type=std_logic lab=ctrlBST[3]}
C {vsource.sym} 60 -500 0 0 {name=V7 value=1.5 savecurrent=false}
C {gnd.sym} 60 -470 0 0 {name=l10 lab=0}
C {lab_wire.sym} 60 -530 3 1 {name=p23 sig_type=std_logic lab=ctrlBST[4]}
C {vsource.sym} 300 -660 0 0 {name=V8 value=1.5 savecurrent=false}
C {gnd.sym} 300 -630 0 0 {name=l11 lab=0}
C {lab_wire.sym} 300 -690 3 1 {name=p24 sig_type=std_logic lab=ctrlBST_DEL[0]}
C {vsource.sym} 240 -660 0 0 {name=V9 value=1.5 savecurrent=false}
C {gnd.sym} 240 -630 0 0 {name=l12 lab=0}
C {lab_wire.sym} 240 -690 3 1 {name=p25 sig_type=std_logic lab=ctrlBST_DEL[1]}
C {vsource.sym} 180 -660 0 0 {name=V10 value=0 savecurrent=false}
C {gnd.sym} 180 -630 0 0 {name=l13 lab=0}
C {lab_wire.sym} 180 -690 3 1 {name=p26 sig_type=std_logic lab=ctrlBST_DEL[2]}
C {vsource.sym} 120 -660 0 0 {name=V11 value=0 savecurrent=false}
C {gnd.sym} 120 -630 0 0 {name=l14 lab=0}
C {vsource.sym} 300 -860 0 0 {name=V12 value=1.5 savecurrent=false}
C {gnd.sym} 300 -830 0 0 {name=l15 lab=0}
C {lab_wire.sym} 300 -890 3 1 {name=p28 sig_type=std_logic lab=ctrlI[0]}
C {vsource.sym} 240 -860 0 0 {name=V13 value=0 savecurrent=false}
C {gnd.sym} 240 -830 0 0 {name=l16 lab=0}
C {lab_wire.sym} 240 -890 3 1 {name=p29 sig_type=std_logic lab=ctrlI[1]}
C {vsource.sym} 180 -860 0 0 {name=V14 value=1.5 savecurrent=false}
C {gnd.sym} 180 -830 0 0 {name=l17 lab=0}
C {lab_wire.sym} 180 -890 3 1 {name=p30 sig_type=std_logic lab=ctrlI[2]}
C {vsource.sym} 120 -860 0 0 {name=V15 value=0 savecurrent=false}
C {gnd.sym} 120 -830 0 0 {name=l18 lab=0}
C {lab_wire.sym} 120 -890 3 1 {name=p31 sig_type=std_logic lab=ctrlI[3]}
C {vsource.sym} 60 -860 0 0 {name=V16 value=0 savecurrent=false}
C {gnd.sym} 60 -830 0 0 {name=l19 lab=0}
C {lab_wire.sym} 60 -890 3 1 {name=p32 sig_type=std_logic lab=ctrlI[4]}
C {vsource.sym} 290 -1030 0 0 {name=V24 value=0 savecurrent=false}
C {gnd.sym} 290 -1000 0 0 {name=l27 lab=0}
C {lab_wire.sym} 290 -1060 3 1 {name=p40 sig_type=std_logic lab=ctrlBW[0]}
C {vsource.sym} 230 -1030 0 0 {name=V25 value=0 savecurrent=false}
C {gnd.sym} 230 -1000 0 0 {name=l28 lab=0}
C {lab_wire.sym} 230 -1060 3 1 {name=p41 sig_type=std_logic lab=ctrlBW[1]}
C {vsource.sym} 170 -1030 0 0 {name=V26 value=0 savecurrent=false}
C {gnd.sym} 170 -1000 0 0 {name=l29 lab=0}
C {lab_wire.sym} 170 -1060 3 1 {name=p42 sig_type=std_logic lab=ctrlBW[2]}
C {vsource.sym} 110 -1030 0 0 {name=V27 value=0 savecurrent=false}
C {gnd.sym} 110 -1000 0 0 {name=l30 lab=0}
C {lab_wire.sym} 110 -1060 3 1 {name=p43 sig_type=std_logic lab=ctrlBW[3]}
C {vsource.sym} 50 -1030 0 0 {name=V28 value=1.5 savecurrent=false}
C {gnd.sym} 50 -1000 0 0 {name=l31 lab=0}
C {lab_wire.sym} 50 -1060 3 1 {name=p44 sig_type=std_logic lab=ctrlBW[4]}
C {code_shown.sym} 665 -245 0 0 {
name=DIG_MODELS
only_toplevel=true
value="tcleval(
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
)"
      }
C {iruwbtx7_osci_decoder.sym} 810 -790 0 0 {name=xosci_decoder}
C {lab_wire.sym} 800 -870 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 820 -870 1 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -840 0 0 {name=p3 sig_type=std_logic lab=trig}
C {lab_wire.sym} 660 -800 0 0 {name=p5 sig_type=std_logic lab=ctrlBW[4:0]}
C {lab_wire.sym} 660 -740 0 0 {name=p6 sig_type=std_logic lab=ctrlBST[4:0]}
C {lab_wire.sym} 660 -760 0 0 {name=p7 sig_type=std_logic lab=ctrlI[4:0]}
C {lab_wire.sym} 660 -780 0 0 {name=p8 sig_type=std_logic lab=ctrlBST_DEL[2:0]}
C {lab_wire.sym} 970 -840 0 1 {name=p9 sig_type=std_logic lab=VA[4..0]
}
C {lab_wire.sym} 970 -820 0 1 {name=p10 sig_type=std_logic lab=VB[4..0]
}
C {lab_wire.sym} 970 -800 0 1 {name=p11 sig_type=std_logic lab=en_PA
}
C {lab_wire.sym} 660 -820 0 0 {name=p4 sig_type=std_logic lab=tm_en}
C {lab_wire.sym} 120 -690 3 1 {name=p12 sig_type=std_logic lab=tm_en}
C {noconn.sym} 1000 -800 2 0 {name=l1}
C {noconn.sym} 1040 -820 2 0 {name=l2}
C {noconn.sym} 1040 -840 2 0 {name=l3}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7 GHz IR-UWB TX" rev=1.0 lock=false}
