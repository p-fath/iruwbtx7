v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Ctrl-Click to execute launcher} 590 -600 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 590 -500 0 0 0.3 0.3 {layer=11}
T {cap used for matching to 50 Ohm} 1290 -1310 0 0 0.4 0.4 {}
T {Company: ATC; Type: 100A0R2BT150XT1K} 1290 -1280 0 0 0.4 0.4 {}
T {fr=17GHz} 1290 -1250 0 0 0.4 0.4 {}
T {bondwire} 1110 -1260 0 0 0.4 0.4 {}
T {If there is ESD structure in the pad, 
output should be tied to VDD due to ESD diodes!} 1210 -880 0 0 0.4 0.4 {}
N 1050 -1110 1080 -1110 {lab=PA_outp}
N 1080 -1190 1080 -1110 {lab=PA_outp}
N 1080 -1090 1080 -1010 {lab=PA_outn}
N 1080 -1010 1130 -1010 {lab=PA_outn}
N 1080 -1190 1130 -1190 {lab=PA_outp}
N 1050 -1090 1080 -1090 {lab=PA_outn}
N 1190 -1190 1220 -1190 {lab=#net1}
N 1190 -1010 1220 -1010 {lab=#net2}
N 1280 -1190 1310 -1190 {lab=#net3}
N 1370 -1190 1400 -1190 {lab=outp_load}
N 1280 -1010 1400 -1010 {lab=outn_load}
N 1400 -1010 1400 -990 {lab=outn_load}
N 1400 -1030 1400 -1010 {lab=outn_load}
N 1400 -1110 1400 -1090 {lab=#net4}
N 1400 -1190 1400 -1170 {lab=outp_load}
N 330 -260 330 -240 {lab=0}
N 330 -340 330 -320 {lab=VSS}
N 330 -420 330 -400 {lab=VDD}
N 410 -340 410 -320 {lab=trig}
N 410 -260 410 -240 {lab=GND}
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
.include iruwbtx7_tb.save
.options method=gear maxord=2 reltol=1e-4 vabstol=1e-6 iabstol=1e-12 gmin=1e-12 chgtol=1e-16 rshunt=1e12 trtol=1 pivotrel=1e-3 pivotabs=1e-13 klu noacct numdgt=7
*.options klu keepopinfo method=Gear rshunt=1e12 gmin=1e-12 reltol=100e-06 abstol=1e-12 vntol=1e-06

.control
set num_threads 1

save all
op
write iruwbtx7_tb.raw
set appendwrite
tran 0.5p 5n 0 0.5p
write iruwbtx7_tb.raw
plot trig outp_load
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
C {iruwbtx7.sym} 900 -1100 0 0 {name=xiruwbtx7}
C {ind.sym} 1160 -1190 1 0 {name=L1
m=1
value=3n
footprint=1206
device=inductor}
C {res.sym} 1250 -1190 1 0 {name=R1
value=1.5
footprint=1206
device=resistor
m=1}
C {ind.sym} 1160 -1010 1 0 {name=L2
m=1
value=3n
footprint=1206
device=inductor}
C {res.sym} 1250 -1010 1 0 {name=R2
value=1.5
footprint=1206
device=resistor
m=1}
C {capa.sym} 1340 -1190 1 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 1400 -1060 0 0 {name=V1 value=0 savecurrent=false}
C {res.sym} 1400 -1140 0 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {vsource.sym} 1400 -960 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 1400 -930 0 0 {name=l3 lab=0}
C {lab_wire.sym} 1120 -1190 0 0 {name=p3 sig_type=std_logic lab=PA_outp}
C {lab_wire.sym} 1120 -1010 0 0 {name=p1 sig_type=std_logic lab=PA_outn}
C {lab_wire.sym} 1400 -1190 0 1 {name=p2 sig_type=std_logic lab=outp_load}
C {lab_wire.sym} 1400 -1010 0 1 {name=p4 sig_type=std_logic lab=outn_load}
C {lab_wire.sym} 890 -1210 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 910 -1210 3 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 750 -1040 0 0 {name=p7 sig_type=std_logic lab=trig}
C {lab_wire.sym} 750 -1020 0 0 {name=p8 sig_type=std_logic lab=en_testmode}
C {lab_wire.sym} 750 -1060 0 0 {name=p9 sig_type=std_logic lab=ctrlBST[4:0]}
C {lab_wire.sym} 750 -1080 0 0 {name=p10 sig_type=std_logic lab=ctrlI[4:0]}
C {lab_wire.sym} 750 -1100 0 0 {name=p11 sig_type=std_logic lab=ctrlBST_DEL[2:0]}
C {lab_wire.sym} 750 -1120 0 0 {name=p12 sig_type=std_logic lab=ctrlBW[4:0]}
C {lab_wire.sym} 750 -1140 0 0 {name=p13 sig_type=std_logic lab=ctrlM[2:0]}
C {lab_wire.sym} 750 -1160 0 0 {name=p14 sig_type=std_logic lab=ctrlG[3:0]}
C {lab_wire.sym} 750 -1180 0 0 {name=p15 sig_type=std_logic lab=ctrlF[4:0]}
C {vsource.sym} 330 -370 0 0 {name=VVDD value=1.5 savecurrent=false}
C {gnd.sym} 330 -240 0 0 {name=l4 lab=0}
C {vsource.sym} 330 -290 0 0 {name=VVSS value=0 savecurrent=false}
C {lab_wire.sym} 330 -330 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 330 -420 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 410 -290 0 0 {name=VTRIG value="pulse(0 1.5 100p 10p 10p 20n 1)"}
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
C {vsource.sym} 240 -660 0 0 {name=V9 value=0 savecurrent=false}
C {gnd.sym} 240 -630 0 0 {name=l12 lab=0}
C {lab_wire.sym} 240 -690 3 1 {name=p25 sig_type=std_logic lab=ctrlBST_DEL[1]}
C {vsource.sym} 180 -660 0 0 {name=V10 value=0 savecurrent=false}
C {gnd.sym} 180 -630 0 0 {name=l13 lab=0}
C {lab_wire.sym} 180 -690 3 1 {name=p26 sig_type=std_logic lab=ctrlBST_DEL[2]}
C {vsource.sym} 120 -660 0 0 {name=V11 value=1.5 savecurrent=false}
C {gnd.sym} 120 -630 0 0 {name=l14 lab=0}
C {lab_wire.sym} 120 -690 3 1 {name=p27 sig_type=std_logic lab=en_testmode}
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
C {vsource.sym} 300 -1030 0 0 {name=V17 value=1.5 savecurrent=false}
C {gnd.sym} 300 -1000 0 0 {name=l20 lab=0}
C {lab_wire.sym} 300 -1060 3 1 {name=p33 sig_type=std_logic lab=ctrlG[0]}
C {vsource.sym} 240 -1030 0 0 {name=V18 value=0 savecurrent=false}
C {gnd.sym} 240 -1000 0 0 {name=l21 lab=0}
C {lab_wire.sym} 240 -1060 3 1 {name=p34 sig_type=std_logic lab=ctrlG[1]}
C {vsource.sym} 180 -1030 0 0 {name=V19 value=1.5 savecurrent=false}
C {gnd.sym} 180 -1000 0 0 {name=l22 lab=0}
C {lab_wire.sym} 180 -1060 3 1 {name=p35 sig_type=std_logic lab=ctrlG[2]}
C {vsource.sym} 120 -1030 0 0 {name=V20 value=0 savecurrent=false}
C {gnd.sym} 120 -1000 0 0 {name=l23 lab=0}
C {lab_wire.sym} 120 -1060 3 1 {name=p36 sig_type=std_logic lab=ctrlG[3]}
C {vsource.sym} 290 -1180 0 0 {name=V21 value=1.5 savecurrent=false}
C {gnd.sym} 290 -1150 0 0 {name=l24 lab=0}
C {lab_wire.sym} 290 -1210 3 1 {name=p37 sig_type=std_logic lab=ctrlM[0]}
C {vsource.sym} 230 -1180 0 0 {name=V22 value=1.5 savecurrent=false}
C {gnd.sym} 230 -1150 0 0 {name=l25 lab=0}
C {lab_wire.sym} 230 -1210 3 1 {name=p38 sig_type=std_logic lab=ctrlM[1]}
C {vsource.sym} 170 -1180 0 0 {name=V23 value=0 savecurrent=false}
C {gnd.sym} 170 -1150 0 0 {name=l26 lab=0}
C {lab_wire.sym} 170 -1210 3 1 {name=p39 sig_type=std_logic lab=ctrlM[2]}
C {vsource.sym} 290 -1320 0 0 {name=V24 value=1.5 savecurrent=false}
C {gnd.sym} 290 -1290 0 0 {name=l27 lab=0}
C {lab_wire.sym} 290 -1350 3 1 {name=p40 sig_type=std_logic lab=ctrlBW[0]}
C {vsource.sym} 230 -1320 0 0 {name=V25 value=0 savecurrent=false}
C {gnd.sym} 230 -1290 0 0 {name=l28 lab=0}
C {lab_wire.sym} 230 -1350 3 1 {name=p41 sig_type=std_logic lab=ctrlBW[1]}
C {vsource.sym} 170 -1320 0 0 {name=V26 value=1.5 savecurrent=false}
C {gnd.sym} 170 -1290 0 0 {name=l29 lab=0}
C {lab_wire.sym} 170 -1350 3 1 {name=p42 sig_type=std_logic lab=ctrlBW[2]}
C {vsource.sym} 110 -1320 0 0 {name=V27 value=0 savecurrent=false}
C {gnd.sym} 110 -1290 0 0 {name=l30 lab=0}
C {lab_wire.sym} 110 -1350 3 1 {name=p43 sig_type=std_logic lab=ctrlBW[3]}
C {vsource.sym} 50 -1320 0 0 {name=V28 value=0 savecurrent=false}
C {gnd.sym} 50 -1290 0 0 {name=l31 lab=0}
C {lab_wire.sym} 50 -1350 3 1 {name=p44 sig_type=std_logic lab=ctrlBW[4]}
C {vsource.sym} 280 -1480 0 0 {name=V29 value=1.5 savecurrent=false}
C {gnd.sym} 280 -1450 0 0 {name=l32 lab=0}
C {lab_wire.sym} 280 -1510 3 1 {name=p45 sig_type=std_logic lab=ctrlF[0]}
C {vsource.sym} 220 -1480 0 0 {name=V30 value=1.5 savecurrent=false}
C {gnd.sym} 220 -1450 0 0 {name=l33 lab=0}
C {lab_wire.sym} 220 -1510 3 1 {name=p46 sig_type=std_logic lab=ctrlF[1]}
C {vsource.sym} 160 -1480 0 0 {name=V31 value=0 savecurrent=false}
C {gnd.sym} 160 -1450 0 0 {name=l34 lab=0}
C {lab_wire.sym} 160 -1510 3 1 {name=p47 sig_type=std_logic lab=ctrlF[2]}
C {vsource.sym} 100 -1480 0 0 {name=V32 value=1.5 savecurrent=false}
C {gnd.sym} 100 -1450 0 0 {name=l35 lab=0}
C {lab_wire.sym} 100 -1510 3 1 {name=p48 sig_type=std_logic lab=ctrlF[3]}
C {vsource.sym} 40 -1480 0 0 {name=V33 value=0 savecurrent=false}
C {gnd.sym} 40 -1450 0 0 {name=l36 lab=0}
C {lab_wire.sym} 40 -1510 3 1 {name=p49 sig_type=std_logic lab=ctrlF[4]}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7 GHz IR-UWB TX" rev=1.0 lock=false}
C {code_shown.sym} 665 -245 0 0 {
name=DIG_MODELS
only_toplevel=true
value="tcleval(
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
)"
      }
